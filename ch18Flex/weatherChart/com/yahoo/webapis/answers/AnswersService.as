/*
Copyright (c) 2007, Yahoo! Inc. All rights reserved.
Code licensed under the BSD License:
http://developer.yahoo.net/yui/license.txt
version: 2.2.0
*/
package com.yahoo.webapis.answers
{
	import flash.net.URLRequest;
	import flash.net.URLLoader;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import com.yahoo.webapis.answers.*;
	import com.yahoo.webapis.answers.events.*;
	import com.yahoo.webapis.answers.params.*;
	
	/**
	* Yahoo! Answers API Service Class.
	* 
	* @langversion ActionScript 3.0
	* @playerversion Flash 9
	* @author Hepp Maccoy 01/27/07
	*/
	public class AnswersService extends EventDispatcher
	{
 		public var _api_id:String;
 		private var _api_URL:String;
 		private var ns:Namespace = new Namespace("urn:yahoo:answers");
 		
		/**
		* Constructor.
		*/
 		public function AnswersService(api_id:String)
 		{
 			_api_id = api_id;
 			_api_URL = "http://answers.yahooapis.com/AnswersService/V1/";
 		}
		
		/**
		* Search Questions based on a Search Term.
		*
		* @param inQuery Search Term.
		* @param inParams Optional ParamsQuery passed for using search filters.
		*/
		public function searchQuestionsByTerm(inQuery:String, inParams:SearchParams = null):void
		{
			handleQueryLoading([], "questionSearch", ("&query=" + inQuery), AnswersResultEvent.QUESTIONS_SEARCH, inParams);
		}
		
		
		
		/**
		* Search Questions by Category.
		*
		* @param inCategoryID The ID of the Category.
		* @param inParams Optional ParamsQuery passed for using search filters.
		*/
		public function searchQuestionsByCategory(inCategoryID:String, inParams:CategoryParams = null):void
		{
			handleQueryLoading([], "getByCategory", ("&category_id=" + inCategoryID), AnswersResultEvent.QUESTIONS_CATEGORY, inParams);
		}
		
		/**
		* Search Questions by User.
		*
		* @param inUserID The ID of the User.
		* @param inParams Optional ParamsQuery passed for using search filters.
		*/
		public function searchQuestionsByUser(inUserID:String, inParams:UserParams = null):void
		{
			handleQueryLoading([], "getByUser", ("&user_id=" + inUserID), AnswersResultEvent.QUESTIONS_USER, inParams);
		}
		
		
		/**
		* Return Question by QuestionID.
		*
		* @param query The ID of the Question.
		*/
		public function searchQuestionByID(inQuestionID:String):void
		{
			handleQueryLoading([], "getQuestion", ("&question_id=" + inQuestionID), AnswersResultEvent.GET_QUESTION);
		}
		
		
		
		/**
		* Return Answers by QuestionID. Caution: Not all Answers have comments, before calling this, check the Question.numAnswers property to see if answers are present.
		*
		* @param query The ID of the Question.
		*/
		public function searchAnswers(inQuestionID:String):void
		{
			handleQueryLoading(["Answers", 0, 16], "getQuestion", ("&question_id=" + inQuestionID), AnswersResultEvent.GET_ANSWERS);
		}
		
		
		
		/**
		* Return Comments by QuestionID. Caution: Not all Questions have comments, before calling this, check the Question.commentsnum property to see if comments are present.
		*
		* @param query The ID of the Question.
		*/
		public function searchComments(inQuestionID:String):void
		{
			handleQueryLoading(["Comments", 0, 17], "getQuestion", ("&question_id=" + inQuestionID), AnswersResultEvent.GET_COMMENTS);
		}
		
		
		
		/**
		* Get a String URL of a user's profile.
		*
		* @param inUserID 	The User's ID
		*/
		public function getUserURL(inUserID:String):String
		{
			if(inUserID != "" && inUserID != null)
			{
				var query:String = ("http://answers.yahoo.com/my/profile?show="+escape(inUserID))
				return query;
			}
			else
			{
				return "";
			}
		}
		
		
		/**
		* Get a String URL of a user's RSS Feed.
		*
		* @param inUserID 	The User's ID
		*/
		public function getUserRSS(inUserID:String):String
		{
			if(inUserID != "" && inUserID != null)
			{
				var query:String = ("http://answers.yahoo.com/rss/userq?kid="+escape(inUserID))
				return query;
			}
			else
			{
				return "";
			}
		}
		
		
		
		// Private Methods ---------------------------------------------------------------
		
		
		
		/**
		* Internal handling and loading a Answers API Call.
		*
		* @param inDepth 		An Array containing: 0 = Answers or Comments, 1 = XML Child Depth 1, 2 = XML Child Depth 2.
		* @param inSendMethod 	The String description of the Method.
		* @param inQuery 		The full search query info of the Load.
		* @param inDispatchType The Event dispatch type.
		* @param inParams 		Optional value for passing Param object.
		*/
		private function handleQueryLoading(inDepth:Array, inSendMethod:String, inQuery:String, inDispatchType:String, inParams:Object = null):void
		{
			var sendQuery:String = (_api_URL + inSendMethod + "?appid=" + _api_id + inQuery);
			var typeQuery:String;
			
			if(inParams != null)
			{
				var paramString:String = inParams.collect();
				sendQuery += ("&"+paramString);
			}
			
			var queryXML:XML;
 			var queryXMLURL:URLRequest = new URLRequest(sendQuery);
			var queryLoader:URLLoader = new URLLoader(queryXMLURL);
			queryLoader.addEventListener("complete", xmlLoaded);
			queryLoader.addEventListener("ioError", xmlError);
			
			trace("@--sendQuery: " + sendQuery);
			
			
			// XML loading result method
			function xmlLoaded(evtObj:Object):void
			{
				queryXML = new XML(queryLoader.data);
				
				if(queryXML.ns::Error == undefined)
				{
					// Determine if it's a (Answer or Comment List) or a Question List
					if(inDepth.length > 0)
					{
						var resultsList:Array = new Array();
						
						// Determine if it's a Answer or Comment
						if(inDepth[0] == "Answers")
						{
							queryXML.child(inDepth[1]).child(inDepth[2]).@type = queryXML.child(0).@type;
							
							//If the Question is Answered, pass along additional data about the ChosenAnswer.
							if(queryXML.child(0).@type == "Answered")
							{
								queryXML.child(inDepth[1]).child(inDepth[2]).@ChosenAnswererId = queryXML.child(0).ns::ChosenAnswererId;
								queryXML.child(inDepth[1]).child(inDepth[2]).@ChosenAnswerTimestamp = queryXML.child(0).ns::ChosenAnswerTimestamp;
							}
							
							resultsList = returnAnswersFromXML(queryXML.child(inDepth[1]).child(inDepth[2]));
						}
						else
						{
							resultsList = returnCommentsFromXML(queryXML.child(inDepth[1]).child(inDepth[2]));
						}
						
						if(resultsList.length > 0)
						{
							dispatch(inDispatchType, resultsList);
						}
						else
						{
							if(inDepth[0] == "Answers")
							{
								dispatchError("No Answers exist or this is not a valid Question ID. Always check if a Question has answers first with 'Question.numAnswers'.", "NONEXISTANT");
							}
							else
							{
								dispatchError("No Comments exist or this is not a valid Question ID. Always check if a Question has comments first with 'Question.commentsnum'.", "NONEXISTANT");
							}
						}
					}
					else
					{
						// Format and Dispatch the Normal Question Objects
						queryXML = new XML(queryLoader.data);
						formatAndDispatch(queryXML, inDispatchType);
					}
				}
				else
				{
					dispatchError("Api Returned Error Message: " + queryXML.ns::Message, "API_RESPONSE");
				}
			    
			}
			
			function xmlError(evtObj:Object):void
			{
			    dispatchError("Error Loading: " + sendQuery, "XML_LOADING");
			}
		}
		
		
		
		/**
		* Recurse results and transcribe into Answers Objects, then dispatch update Event.
		*
		* @param inXML			 The XML to transcribe into Objects.
		* @param inDispatchType The term of the dispatched Event.
		*/
		private function formatAndDispatch(inXML:XML, inDispatchType:String):void
		{
			var resultsList:Array = new Array();
		    
		    for each (var questionNode:XML in inXML.children())
			{
				var _q:Question = new Question();
				
				if(questionNode.@id != undefined && questionNode.@id != ""){ _q.success = true; };
				
				// **Regular Question Properties
				_q.id = questionNode.@id;
				_q.subject = questionNode.ns::Subject;
				_q.content = questionNode.ns::Content;
				_q.link = questionNode.ns::Link;
				_q.authorPhotoURL = questionNode.ns::UserPhotoURL;
				
				//convert to date
				_q.date = new Date(String(questionNode.ns::Date).replace(/-/g, "/"));
				_q.timestamp = new Date(String(questionNode.ns::Timestamp).replace(/-/g, "/"));
					
				_q.numAnswers = questionNode.ns::NumAnswers;
				_q.numComments = questionNode.ns::NumComments;
				_q.type = questionNode.@type;
				
				
				// **Object Properties
				// --Category Object
				var qCategory:Category = new Category();
				qCategory.id = questionNode.ns::Category.@id;
				qCategory.name = questionNode.ns::Category;
				// Add the new Category Object to our Question Object.
				_q.inCategory = qCategory;
				
				// --User Object for the Questions Author
				var qUser:User = new User();
				qUser.userId = questionNode.ns::UserId;
				qUser.userNick = questionNode.ns::UserNick;
				qUser.userURL = getUserURL(qUser.userId);
				qUser.userURL_rss = getUserRSS(qUser.userId);
				// Add the new User Object to our Question Object.
				_q.author = qUser;
				
				// --User Object for the ChosenAnswers Author
				var aUser:User = new User();
				aUser.userId = questionNode.ns::ChosenAnswererId;
				aUser.userNick = questionNode.ns::ChosenAnswererNick; 
				aUser.userURL = getUserURL(aUser.userId);
				aUser.userURL_rss = getUserRSS(aUser.userId);
				
				// Only pass a ChosenAnswer object when the Question is actually answered.
				if(_q.type == "Answered")
				{
					_q.hasChosenAnswer = true;
					
					// --Chosen Answer Object
					var qAnwer:ChosenAnswer = new ChosenAnswer();
					qAnwer.content = questionNode.ns::ChosenAnswer;
					qAnwer.author = aUser; // !!! Perhaps clone Object, not reference.
					qAnwer.postedTimestamp = questionNode.ns::ChosenAnswerTimestamp;
					qAnwer.awardedTimestamp = questionNode.ns::ChosenAnswerAwardTimestamp;
					// Add the new Answer Object to our Question Object.
					_q.chosenAnswer = qAnwer;
				}
				else
				{
					_q.hasChosenAnswer = false;
					
					// Set the ChosenAnswer to null if it doesn't exist
					_q.chosenAnswer = null;
				}
				
				
				if(questionNode.ns::Answers != undefined)
				{
					var answerList:Array = returnAnswersFromXML(questionNode.ns::Answers);
					_q.hasAnswers = true;
					_q.answers = answerList;
				}
				else
				{
					_q.hasAnswers = false;
					_q.answers = null;
				}
				
				// Add the Question Object to our Data Array.
				resultsList.push(_q);
			}
			
			if(resultsList.length < 1 && resultsList.success != undefined)
			{
				dispatchError("No Results Found", "NO_RESULTS");
			}
			
			dispatch(inDispatchType, resultsList);
		}
		
		/**
		* Internal method for dispatching Events.
		*
		* @param inDispatchType 	The Event Type
		* @param inResults 			The Array Results
		*/
		private function dispatch(inDispatchType:String, inResults:Array):void
		{
			var aResults:AnswersResultEvent = new AnswersResultEvent(inDispatchType, inResults);
			dispatchEvent(aResults);
		}
		
		
		/**
		* Internal method for dispatching Error Events.
		*
		* @param inDispatchType 	The Event Type
		* @param inMessage 			The Error Message
		*/
		private function dispatchError(inMessage:String, inType:String):void
		{
			trace("we are calling dispatchError()");
			var aResults:AnswersErrorEvent = new AnswersErrorEvent(AnswersErrorEvent.ERROR_EVENT, inMessage, inType);
			dispatchEvent(aResults);
		}
		
		
		/**
		* Internal method for returning Answers objects from a Answers XMLList.
		*
		* @param inXMLList The XML List containing Answer nodes.
		*/
		private function returnAnswersFromXML(inXMLList:XMLList):Array
		{
			// Create the Answer Objects
			var resultsList:Array = new Array();
			for each (var answersNode:XML in inXMLList.children())
			{
				var _a:Answer = new Answer();
				
				_a.best = answersNode.ns::Best;
				_a.content = answersNode.ns::Content;
				_a.date = new Date(String(answersNode.ns::Date).replace(/-/g, "/"));
				_a.reference = answersNode.ns::Reference;
				_a.timestamp = answersNode.ns::Timestamp;
				
				// --User Object
				var aUser:User = new User();
				aUser.userId = answersNode.ns::UserId;
				aUser.userNick = answersNode.ns::UserNick;
				aUser.userURL = getUserURL(aUser.userId);
				aUser.userURL_rss = getUserRSS(aUser.userId);
				_a.author = aUser;
				
				// If Answer is the 'ChosenAnswer'.
				_a.isChosenAnswer = false;
				if((String(inXMLList.@type) == "Answered") && (aUser.userId == String(inXMLList.@ChosenAnswererId)) && (_a.timestamp == inXMLList.@ChosenAnswerTimestamp))
				{
					_a.isChosenAnswer = true;
				}
				
				resultsList.push(_a);
			}
			return resultsList;
		}
		
		/**
		* Internal method for returning Comment objects from a Comments XMLList.
		*
		* @param inXMLList The XML List containing Comment nodes.
		*/
		private function returnCommentsFromXML(inXMLList:XMLList):Array
		{
			// Create the Comment Objects
			var resultsList:Array = new Array();
			for each (var commentNode:XML in inXMLList.children())
			{
				var _c:Comment = new Comment();
				
				_c.content = commentNode.ns::Content;
				_c.date = commentNode.ns::Date;
				_c.timestamp = commentNode.ns::Timestamp;
				
				// --User Object
				var aUser:User = new User();
				aUser.userId = commentNode.ns::UserId;
				aUser.userNick = commentNode.ns::UserNick;
				aUser.userURL = getUserURL(aUser.userId);
				aUser.userURL_rss = getUserRSS(aUser.userId);
				_c.author = aUser;
				
				resultsList.push(_c);
			}
			return resultsList;
		}
	}
}