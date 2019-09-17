<%@page import="beans.Customer"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Please Send Us Your Details</title>
</head>
<% Customer c = (Customer) session.getAttribute("customer");

if (c == null) {
    c = new Customer();
}

%>
<body>
<form id="detailsForm" name="detailsForm" method="post" action="handleForm.jsp">
  <h2>Please Send Us Your Details.</h2>
  <table width="730" border="0">
    <tr>
      <td width="266">Name</td>
      <td width="454"><input name="name" type="text" id="name" size="50" value="<%= c.getName()%>" /></td>
    </tr>
    <tr>
      <td height="31">Address</td>
      <td><input name="address" type="text" id="address" size="50" value="<%= c.getAddress()%>" /></td>
    </tr>
    <tr>
      <td>City</td>
      <td><input type="text" name="city" id="city" value="<%= c.getCity() %>" /></td>
    </tr>
     <tr>
      <td>Country</td>
      <td><input type="text" name="country" id="country" value="<%= c.getCountry()%>" /></td>
    </tr>
    <tr>
      <td>Phone</td>
      <td><input type="text" name="phone" id="phone" value="<%= c.getPhone()%>" /></td>
    </tr>
    <tr>
      <td>Email</td>
      <td><input type="text" name="email" id="email" value="<%= c.getEmail()%>" /></td>
    </tr>
    <tr>
      <td>Gender</td>
      <td><p>
        <label>
          <input type="radio" name="gender" value="male" id="gender"  />
          Male</label>
       
        <label>
          <input type="radio" name="gender" value="female" id="gender" />
          Female</label>
 
      </p></td>
    </tr>
    <tr>
      <td>How Did You Hear About Us?</td>
      <td>Twitter<input name="check" type="checkbox" id="check" value="twitter" />
      Facebook<input name="check" type="checkbox" id="check" value="facebook" />
      Newspaper<input name="check" type="checkbox" id="check" value="newspaper" />
      Radio<input name="check" type="checkbox" id="radio" value="radio" />
      Other<input name="check" type="checkbox" id="check" value="other" /></td>
    </tr>
    <tr>
      <td>Comments</td>
      <td><label for="comments"></label>
          <textarea name="comments" id="comments" cols="45" rows="5"><%= c.getComments()%> </textarea></td>
    </tr>
    <tr>
      <td><input type="submit" name="submit" id="submit" value="Submit" /></td>
      <td><input type="reset" name="clear" id="clear" value="Clear" /></td>
    </tr>
  </table>
</form>
</body>
</html>
