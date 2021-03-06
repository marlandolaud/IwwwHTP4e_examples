
package com.deitel.iw3htp4.ch28.blackjackclient;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.1.1-b02-RC1
 * Generated source version: 2.1
 * 
 */
@WebService(name = "Blackjack", targetNamespace = "http://blackjack.ch28.iw3htp4.deitel.com/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface Blackjack {


    /**
     * 
     */
    @WebMethod
    @RequestWrapper(localName = "shuffle", targetNamespace = "http://blackjack.ch28.iw3htp4.deitel.com/", className = "com.deitel.iw3htp4.ch28.blackjackclient.Shuffle")
    @ResponseWrapper(localName = "shuffleResponse", targetNamespace = "http://blackjack.ch28.iw3htp4.deitel.com/", className = "com.deitel.iw3htp4.ch28.blackjackclient.ShuffleResponse")
    public void shuffle();

    /**
     * 
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "dealCard", targetNamespace = "http://blackjack.ch28.iw3htp4.deitel.com/", className = "com.deitel.iw3htp4.ch28.blackjackclient.DealCard")
    @ResponseWrapper(localName = "dealCardResponse", targetNamespace = "http://blackjack.ch28.iw3htp4.deitel.com/", className = "com.deitel.iw3htp4.ch28.blackjackclient.DealCardResponse")
    public String dealCard();

    /**
     * 
     * @param hand
     * @return
     *     returns int
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getHandValue", targetNamespace = "http://blackjack.ch28.iw3htp4.deitel.com/", className = "com.deitel.iw3htp4.ch28.blackjackclient.GetHandValue")
    @ResponseWrapper(localName = "getHandValueResponse", targetNamespace = "http://blackjack.ch28.iw3htp4.deitel.com/", className = "com.deitel.iw3htp4.ch28.blackjackclient.GetHandValueResponse")
    public int getHandValue(
        @WebParam(name = "hand", targetNamespace = "")
        String hand);

}
