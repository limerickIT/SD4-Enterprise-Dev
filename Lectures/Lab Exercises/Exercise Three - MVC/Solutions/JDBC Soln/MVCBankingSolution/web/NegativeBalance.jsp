<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<LINK REL=STYLESHEET HREF="css/style.css" TYPE="text/css">

<HTML>
<HEAD><TITLE>You Owe Us Money!</TITLE></HEAD>

<BODY>
    
    <TABLE BORDER=5 ALIGN="CENTER">
        <TR><TH CLASS="TITLE">
        We Know Where You Live!
    </TABLE>

    <P>
    <IMG SRC="imgs/mace.jpg" ALIGN="LEFT">

    <b>${badCustomer.lastName}</b>, we know where you live.
    <P>
    Pay us the <fmt:formatNumber value="${badCustomer.balance}" type="currency" currencySymbol="&euro;" maxFractionDigits="2"/> 
    you owe us before it is too late!

</BODY>

</HTML>