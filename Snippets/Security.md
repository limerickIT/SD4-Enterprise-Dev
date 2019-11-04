# Snippets for Security Lecture  :closed_lock_with_key:

- [Add User Form](#add-user-form)
- [AddAuthor Servlet (doPost() method only)](#add-author-servlet)
- [displayAllAuthors.jsp)](#displayallauthors)
- [Javascript](#javascript)
- [Queries](#queries)
- [Crude Code For Filter](#filter)
	
	
## Add User Form
```
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <form action="AddAuthor" method="post">
            <table border="0">
                  <tbody>
                    <tr>
                        <td>ID</td>
                        <td><input type="text" name="id" value="" /></td>
                    </tr>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Year Born</td>
                        <td><input type="text" name="year" value="" /></td>
                    </tr>
                    
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    
                </tbody>
            </table>

        </form>
    </body>
</html>


```

## Add Author Servlet
```
@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            
            int id = Integer.parseInt(request.getParameter("id"));
            String fName = request.getParameter("fname");
            String lName = request.getParameter("lname");
            int year = Integer.parseInt(request.getParameter("year"));
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>All Titles</title>");
            out.println("</head>");
            out.println("<body>");

            Connection conn = null;
            Statement statement = null;

            try {
                
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/books", "root", "");

                statement =  conn.createStatement();

                String insertSQL = "INSERT INTO authors(AuthorID, FirstName, LastName, YearBorn)"
                        + "VALUES ('" + id + "','" + fName + "','" + lName + "','" + year + "')"; 

                int rowCount = statement.executeUpdate(insertSQL);
                
                if (rowCount > 0) {
                    out.println(rowCount + " record(s) inserted for " + fName + " " + lName);
                    out.println("<br>");
                    out.println("<a href=\"DisplayAllAuthors\">View All Authors</a> ");
                }//end if
                else {
                    out.println("<font color=\"red\">Error</font>");
                    out.println("<br>");
                    out.println("<a href=\"/errorform.jsp\">Fill out our customer support form </a> ");
                }//end else

            }//end try
            catch (Exception ex) {
                out.println("<font color=\"red\">Error</font>");
                out.println("<br>");
                out.println("Fill out our customer support <a href=\"/errorform.jsp\">form </a> ");
               
            }//end catch


            out.println("</body>");
            out.println("</html>");

        }//end try//end try
    }//end doPost


```
## displayAllAuthors.jsp
```

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            Connection conn = null;
            Statement statement = null;

            try {

                Class.forName("com.mysql.jdbc.Driver").newInstance();

                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/books", "root", "");

                statement = conn.createStatement();

                String sql = "SELECT * from authors";

                ResultSet rs = statement.executeQuery(sql);

                if (!rs.next()) {
                    out.println("<font color=\"red\">No records</font>");
                } else {
                    rs.beforeFirst();
                    %>
                   <table width='500' border='1'>
                    <tr>
                        <th>Author ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Year Born</th>
                    </tr>
                <%
                    while (rs.next()) {
                %>
                       <tr>
                        <td> <%=rs.getObject("AuthorID")%> </td>
                        <td> <%=rs.getObject("FirstName")%> </td>
                        <td> <%=rs.getObject("LastName")%> </td>
                        <td> <%=rs.getObject("YearBorn")%> </td>
                       </tr>
                    <% } %>

                    </table>
        <% }//end else
            }//end try 
        catch (Exception ex) {
                out.println("<font color=\"red\">Error</font>");
                out.println("<br>");
        }//end catch
        %>
            
    </body>
</html>


```
## Javascript
```
<script>alert("danger");</script>
```

## Queries
```
select password from mysql.user where user='alanr' limit 0,1

INSERT INTO authors(AuthorID, FirstName, LastName, YearBorn)VALUES ('123456','Bob,',(select password from mysql.user where user='alanr' limit 0,1),'1990')

```

## Filter
```
HttpServletRequest req = (HttpServletRequest) request;
String fname = req.getParameter("fname");
fname = fname.replaceAll("<", "*");
req.setAttribute("fname", fname);
```
