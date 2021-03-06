
package com.deitel.iw3htp4.ch28.usinghugeinteger;

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
@WebService(name = "HugeInteger", targetNamespace = "http://hugeinteger.ch28.iw3htp4.deitel.com/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface HugeInteger {


    /**
     * 
     * @param second
     * @param first
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "add", targetNamespace = "http://hugeinteger.ch28.iw3htp4.deitel.com/", className = "com.deitel.iw3htp4.ch28.usinghugeinteger.Add")
    @ResponseWrapper(localName = "addResponse", targetNamespace = "http://hugeinteger.ch28.iw3htp4.deitel.com/", className = "com.deitel.iw3htp4.ch28.usinghugeinteger.AddResponse")
    public String add(
        @WebParam(name = "first", targetNamespace = "")
        String first,
        @WebParam(name = "second", targetNamespace = "")
        String second);

    /**
     * 
     * @param second
     * @param first
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "equals", targetNamespace = "http://hugeinteger.ch28.iw3htp4.deitel.com/", className = "com.deitel.iw3htp4.ch28.usinghugeinteger.Equals")
    @ResponseWrapper(localName = "equalsResponse", targetNamespace = "http://hugeinteger.ch28.iw3htp4.deitel.com/", className = "com.deitel.iw3htp4.ch28.usinghugeinteger.EqualsResponse")
    public boolean equals(
        @WebParam(name = "first", targetNamespace = "")
        String first,
        @WebParam(name = "second", targetNamespace = "")
        String second);

    /**
     * 
     * @param second
     * @param first
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "subtract", targetNamespace = "http://hugeinteger.ch28.iw3htp4.deitel.com/", className = "com.deitel.iw3htp4.ch28.usinghugeinteger.Subtract")
    @ResponseWrapper(localName = "subtractResponse", targetNamespace = "http://hugeinteger.ch28.iw3htp4.deitel.com/", className = "com.deitel.iw3htp4.ch28.usinghugeinteger.SubtractResponse")
    public String subtract(
        @WebParam(name = "first", targetNamespace = "")
        String first,
        @WebParam(name = "second", targetNamespace = "")
        String second);

    /**
     * 
     * @param second
     * @param first
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "bigger", targetNamespace = "http://hugeinteger.ch28.iw3htp4.deitel.com/", className = "com.deitel.iw3htp4.ch28.usinghugeinteger.Bigger")
    @ResponseWrapper(localName = "biggerResponse", targetNamespace = "http://hugeinteger.ch28.iw3htp4.deitel.com/", className = "com.deitel.iw3htp4.ch28.usinghugeinteger.BiggerResponse")
    public boolean bigger(
        @WebParam(name = "first", targetNamespace = "")
        String first,
        @WebParam(name = "second", targetNamespace = "")
        String second);

    /**
     * 
     * @param second
     * @param first
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "smaller", targetNamespace = "http://hugeinteger.ch28.iw3htp4.deitel.com/", className = "com.deitel.iw3htp4.ch28.usinghugeinteger.Smaller")
    @ResponseWrapper(localName = "smallerResponse", targetNamespace = "http://hugeinteger.ch28.iw3htp4.deitel.com/", className = "com.deitel.iw3htp4.ch28.usinghugeinteger.SmallerResponse")
    public boolean smaller(
        @WebParam(name = "first", targetNamespace = "")
        String first,
        @WebParam(name = "second", targetNamespace = "")
        String second);

}
