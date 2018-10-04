<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<LINK REL=STYLESHEET HREF="css/style.css" TYPE="text/css">

<HTML>
<HEAD> <TITLE>Your Balance</TITLE></HEAD>

<BODY>
    <TABLE BORDER=5 ALIGN="CENTER">
        <TR><TH CLASS="TITLE"> Your Balance
    </TABLE>
    <P>

    <CENTER><IMG SRC="imgs/boat.jpg"></CENTER>
    <BR>

    It is an honour to serve you,
    ${eliteCustomer.firstName} 
    ${eliteCustomer.lastName} !
    <P>
    Since you are one of our most valued customers, we would like
    to offer you the opportunity to spend a mere fraction of your  
    <br> <fmt:formatNumber value="${eliteCustomer.balance}" type="currency" currencySymbol="&euro;" maxFractionDigits="2"/> 
    
    on a boat worthy of your status. 
    Please visit our <a href="http://www.princess.co.uk/">boat store</a> for
    more information.
</BODY>
</HTML>