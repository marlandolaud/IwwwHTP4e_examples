' Fig. 19.22: Page.xaml.vb
' VB code-behind file for Cover Viewer.
Imports System.IO
Imports System.Text
Imports System.Windows.Browser
Imports System.Windows.Browser.Net
Imports System.Collections.Generic

Partial Public Class Page
   Inherits Canvas

   ' Instance variables
   Dim currentImageIndex = 0 ' Initialize index of currentImage as 0
   Dim imageURIArrayList As New List(Of Uri)() ' Create ArrayList of URIs
   Dim appRootURI = appRootURIGen() ' Store application root URI

   Public Sub Page_Loaded(ByVal o As Object, ByVal e As EventArgs)
      ' Required to initialize variables
      InitializeComponent()
      Try
         Dim httpRequest As New  _
            BrowserHttpWebRequest( _
               New Uri(appRootURI + "bookCoversRSS.xml"))

         ' Save response in variable
         Dim httpResponse = httpRequest.GetResponse()

         ' Save response stream in variable
         Dim httpResponseStream = httpResponse.GetResponseStream()

         Dim currentImageURI ' Store Image URI

         ' Create an XmlReader to parse the response stream
         Using xmlReader As XmlReader = xmlReader.Create( _
            New StreamReader(httpResponseStream))

            ' Start reading response stream, exit loop when done
            While (xmlReader.Read())

               ' Find item element in response stream
               If ((xmlReader.IsStartElement()) And _
                  ("item" = xmlReader.LocalName)) Then

                  ' Create an XmlReader for item element
                  Using itemXMLReader As XmlReader = _
                     xmlReader.ReadSubtree()

                     ' Start reading item element, exit loop when done
                     While (itemXMLReader.Read())

                        ' Find image child element of item
                        If (itemXMLReader.IsStartElement()) Then
                           If ("image" = itemXMLReader.LocalName) Then

                              ' Save Uri of image into ArrayList
                              currentImageURI = appRootURI + _
                              itemXMLReader.ReadElementContentAsString
                              imageURIArrayList.Add( _
                                 New Uri(currentImageURI))
                           End If
                        End If
                     End While
                  End Using
               End If
            End While
         End Using

         ' Close BrowserHttpWebRequest
         httpResponse.Close()

         ' Initialize currentImage and nextImage Sources
         currentImage.Source = imageURIArrayList(currentImageIndex)
         nextImage.Source = imageURIArrayList(currentImageIndex + 1)

         Catch ex As Exception
            errorTextBlock.Text = "Error: " & ex.Message
      End Try
   End Sub ' Page_Loaded

   ' Handle nextImageAnimation's Completed event
   Private Sub nextImageSwitch(ByVal sender As Object, _
      ByVal e As EventArgs)
      nextImageAnimation.Stop()

      ' Test if at end of images 
      If (currentImageIndex = (imageURIArrayList.Count - 2)) Then
         currentImageIndex += 1 ' Increment currentImageIndex

         ' Set Source of prevImage and currentImage
         prevImage.Source = imageURIArrayList(currentImageIndex - 1)
         currentImage.Source = imageURIArrayList(currentImageIndex)
         nextImage.Opacity = 0 ' Hide nextImage
      Else
         currentImageIndex += 1 ' Increment currentImageIndex

         ' Set Source of prevImage, currentImage and nextImage
         prevImage.Source = imageURIArrayList(currentImageIndex - 1)
         currentImage.Source = imageURIArrayList(currentImageIndex)
         nextImage.Source = imageURIArrayList(currentImageIndex + 1)
         prevImage.Opacity = 1 ' Show prevImage
      End If
   End Sub ' nextImageSwitch

   ' Handle prevImageAnimation's Completed event
   Private Sub prevImageSwitch(ByVal sender As Object, _
      ByVal e As EventArgs)
      prevImageAnimation.Stop()

      ' Test if at beginning of images 
      If (currentImageIndex = 1) Then
         currentImageIndex -= 1 ' Decrement currentImageIndex
         prevImage.Opacity = 0 ' Hide prevImage

         ' Set Source of currentImage and nextImage
         currentImage.Source = imageURIArrayList(currentImageIndex)
         nextImage.Source = imageURIArrayList(currentImageIndex + 1)
      Else
         currentImageIndex -= 1 ' Decrement currentImageIndex

         ' Set Source of prevImage, currentImage and nextImage
         prevImage.Source = imageURIArrayList(currentImageIndex - 1)
         currentImage.Source = imageURIArrayList(currentImageIndex)
         nextImage.Source = imageURIArrayList(currentImageIndex + 1)
         nextImage.Opacity = 1 ' Show nextImage
      End If
   End Sub ' prevImageSwitch

   ' Handle nextImage's MouseLeftButtonDown event
   Private Sub nextImageHandler(ByVal sender As Object, _
      ByVal e As EventArgs)

      ' Make sure there are more images to the right
      If (currentImageIndex < (imageURIArrayList.Count - 1)) Then
         nextImageAnimation.Begin()
      End If
   End Sub ' nextImageHandler

   ' Handle prevImage's MouseLeftButtonDown event
   Private Sub prevImageHandler(ByVal sender As Object, _
      ByVal e As EventArgs)

      ' Make sure there are more images to the left
      If (currentImageIndex > 1) Then
         prevImageAnimation.Begin()
      ElseIf (currentImageIndex > 0) Then
         prevImageAnimation.Begin()
      End If
   End Sub ' prevImageHandler

   ' Generate root URI of application
   Public Function appRootURIGen() As String

      ' Find root directory of application
      Dim path = HtmlPage.DocumentUri.AbsolutePath
      Dim lastSlash = path.LastIndexOf("/")
      path = path.Substring(0, lastSlash + 1)
      Return "http://" & HtmlPage.DocumentUri.Host & path
   End Function ' appRootURIGen
End Class ' Page