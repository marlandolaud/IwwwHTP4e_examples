﻿'------------------------------------------------------------------------------
' <auto-generated>
'     This code was generated by a tool.
'     Runtime Version:2.0.50727.1378
'
'     Changes to this file may cause incorrect behavior and will be lost if
'     the code is regenerated.
' </auto-generated>
'------------------------------------------------------------------------------

Option Strict Off
Option Explicit On

Imports System

'
'This source code was auto-generated by Microsoft.VSDesigner, Version 2.0.50727.1378.
'
Namespace com.deitel.test
    
    '''<remarks/>
    Partial Public Class HugeInteger
        Inherits System.Windows.Browser.Net.SoapHttpClientProtocol
        
        '''<remarks/>
        Public Sub New()
            MyBase.New
            Me.Url = "http://test.deitel.com/hugeinteger/hugeinteger.asmx"
        End Sub
        
        '''<remarks/>
        Public Function Add(ByVal first As String, ByVal second As String) As String
            Dim results() As Object = Me.Invoke("Add", New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter() {New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter("first", first), New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter("second", second)}, GetType(String))
            Return CType(results(0),String)
        End Function
        
        '''<remarks/>
        Public Function BeginAdd(ByVal first As String, ByVal second As String, ByVal callback As System.AsyncCallback, ByVal asyncState As Object) As System.IAsyncResult
            Return Me.BeginInvoke("Add", New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter() {New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter("first", first), New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter("second", second)}, GetType(String), callback, asyncState)
        End Function
        
        '''<remarks/>
        Public Function EndAdd(ByVal asyncResult As System.IAsyncResult) As String
            Dim results() As Object = Me.EndInvoke(asyncResult)
            Return CType(results(0),String)
        End Function
        
        '''<remarks/>
        Public Function Subtract(ByVal first As String, ByVal second As String) As String
            Dim results() As Object = Me.Invoke("Subtract", New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter() {New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter("first", first), New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter("second", second)}, GetType(String))
            Return CType(results(0),String)
        End Function
        
        '''<remarks/>
        Public Function BeginSubtract(ByVal first As String, ByVal second As String, ByVal callback As System.AsyncCallback, ByVal asyncState As Object) As System.IAsyncResult
            Return Me.BeginInvoke("Subtract", New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter() {New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter("first", first), New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter("second", second)}, GetType(String), callback, asyncState)
        End Function
        
        '''<remarks/>
        Public Function EndSubtract(ByVal asyncResult As System.IAsyncResult) As String
            Dim results() As Object = Me.EndInvoke(asyncResult)
            Return CType(results(0),String)
        End Function
        
        '''<remarks/>
        Public Function Bigger(ByVal first As String, ByVal second As String) As Boolean
            Dim results() As Object = Me.Invoke("Bigger", New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter() {New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter("first", first), New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter("second", second)}, GetType(Boolean))
            Return CType(results(0),Boolean)
        End Function
        
        '''<remarks/>
        Public Function BeginBigger(ByVal first As String, ByVal second As String, ByVal callback As System.AsyncCallback, ByVal asyncState As Object) As System.IAsyncResult
            Return Me.BeginInvoke("Bigger", New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter() {New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter("first", first), New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter("second", second)}, GetType(Boolean), callback, asyncState)
        End Function
        
        '''<remarks/>
        Public Function EndBigger(ByVal asyncResult As System.IAsyncResult) As Boolean
            Dim results() As Object = Me.EndInvoke(asyncResult)
            Return CType(results(0),Boolean)
        End Function
        
        '''<remarks/>
        Public Function Smaller(ByVal first As String, ByVal second As String) As Boolean
            Dim results() As Object = Me.Invoke("Smaller", New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter() {New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter("first", first), New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter("second", second)}, GetType(Boolean))
            Return CType(results(0),Boolean)
        End Function
        
        '''<remarks/>
        Public Function BeginSmaller(ByVal first As String, ByVal second As String, ByVal callback As System.AsyncCallback, ByVal asyncState As Object) As System.IAsyncResult
            Return Me.BeginInvoke("Smaller", New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter() {New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter("first", first), New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter("second", second)}, GetType(Boolean), callback, asyncState)
        End Function
        
        '''<remarks/>
        Public Function EndSmaller(ByVal asyncResult As System.IAsyncResult) As Boolean
            Dim results() As Object = Me.EndInvoke(asyncResult)
            Return CType(results(0),Boolean)
        End Function
        
        '''<remarks/>
        Public Function EqualTo(ByVal first As String, ByVal second As String) As Boolean
            Dim results() As Object = Me.Invoke("EqualTo", New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter() {New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter("first", first), New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter("second", second)}, GetType(Boolean))
            Return CType(results(0),Boolean)
        End Function
        
        '''<remarks/>
        Public Function BeginEqualTo(ByVal first As String, ByVal second As String, ByVal callback As System.AsyncCallback, ByVal asyncState As Object) As System.IAsyncResult
            Return Me.BeginInvoke("EqualTo", New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter() {New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter("first", first), New System.Windows.Browser.Net.SoapHttpClientProtocol.ServiceParameter("second", second)}, GetType(Boolean), callback, asyncState)
        End Function
        
        '''<remarks/>
        Public Function EndEqualTo(ByVal asyncResult As System.IAsyncResult) As Boolean
            Dim results() As Object = Me.EndInvoke(asyncResult)
            Return CType(results(0),Boolean)
        End Function
    End Class
End Namespace
