<LINK REL=STYLESHEET HREF="css/style.css" TYPE="text/css">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<HTML>
<HEAD><TITLE>Your Balance</TITLE></HEAD>
    


<BODY>
    
    <TABLE BORDER=5 ALIGN="CENTER">
        <TR><TH CLASS="TITLE">
        Your Balance
    </TABLE>

    <P>

    <IMG SRC="imgs/money.jpg" ALIGN="CENTER">

        <UL>
            <LI>First name: ${regularCustomer.firstName} 
            <LI>Last name: ${regularCustomer.lastName} 
            <LI>Account Number: ${regularCustomer.accountNumber} 
            <LI>Balance: <fmt:formatNumber value="${regularCustomer.balance}" type="currency" currencySymbol="&euro;" maxFractionDigits="2"/> 
    
        </UL>
</BODY>
</HTML>