# Snippets for Shiro Exercise  :japanese_castle:

- [Maven Dependencys](#maven-dependencys)
- [index.jsp](#indexjsp)
- [login.jsp](#loginjsp)
- [admin/index.jsp](#adminindexjsp)
- [web.xml](#webxml)
- [Shiro.ini with users, passwords and roles stored *in the file*](#shiroini-v1)
- [SQL Script For Shiro DB](#sql-script)
- [Shiro.ini with users, passwords and roles stored *in the DB*](#shiroini-v2)

	

## Maven Dependencys
```
    <!-- https://mvnrepository.com/artifact/jstl/jstl -->
     <dependency>
           <groupId>jstl</groupId>
          <artifactId>jstl</artifactId>
          <version>1.2</version>
      </dependency>
      <dependency>
            <groupId>org.apache.shiro</groupId>
            <artifactId>shiro-core</artifactId>
            <version>1.4.1</version>
        </dependency>
        <dependency>
            <groupId>org.apache.shiro</groupId>
            <artifactId>shiro-web</artifactId>
            <version>1.4.1</version>
        </dependency>
        <dependency>
            <groupId>javax</groupId>
            <artifactId>javaee-web-api</artifactId>
            <version>7.0</version>
            <scope>provided</scope>
        </dependency>
        <dependency>
            <groupId>org.apache.shiro</groupId>
            <artifactId>shiro-servlet-plugin</artifactId>
            <version>1.4.1</version>
        </dependency>
        <dependency>
            <groupId>commons-logging</groupId>
            <artifactId>commons-logging</artifactId>
            <version>1.1.1</version>
        </dependency>
        <dependency>
            <groupId>commons-beanutils</groupId>
            <artifactId>commons-beanutils</artifactId>
            <version>1.9.3</version>
        </dependency>
        <dependency>
            <groupId>org.apache.commons</groupId>
            <artifactId>commons-collections4</artifactId>
            <version>4.1</version>
        </dependency>
        <!-- https://mvnrepository.com/artifact/org.slf4j/slf4j-api -->
        <dependency>
            <groupId>org.slf4j</groupId>
            <artifactId>slf4j-api</artifactId>
            <version>1.7.25</version>
        </dependency>
        <!-- https://mvnrepository.com/artifact/mysql/mysql-connector-java -->
      <dependency>
        <groupId>mysql</groupId>
          <artifactId>mysql-connector-java</artifactId>
        <version>5.1.25</version>
    </dependency>

```

## index.jsp
```
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
      <h3>This is the home page for my applications and is visible to everyone</h3>
      <a href="login.jsp">Login</a>
    </body>
</html>
```
## login.jsp
```
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body> 
        <p> 
        <h2>Login</h2>
        <form name="loginform" method="post">
            <table border="0" cellspacing="2" cellpadding="2">
                <tbody>
                    <tr>
                        <td> <label for="username">Username:</label></td>
                        <td><input type="text" id="username" name="username" /></td>
                    </tr>
                    <tr>
                        <td> <label for="password">Password:</label></td>
                        <td> <input type="password" id="password" name="password" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                </tbody>
            </table>
            <br/>
            <label for="rememberMe">Remember me:</label>
            <input type="checkbox" id="rememberMe" name="rememberMe" value="true" />
            <br/>
            <br/>
        </form>
    </body>
</html>

```
## admin/index.jsp
```
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to the Admin Home Page</title>
    </head>
    <body>
        <h3>This is the admin home page</h3>
        <br>
        <h3>It should be visible to authenticated admins only</h3> 
        <br>
       <a href="/****YOUR APP PATH****/logout">Log Out</a>
    </body>
</html>
```
## web.xml
```
<listener>
    <listener-class>org.apache.shiro.web.env.EnvironmentLoaderListener</listener-class>
</listener>

<filter>
    <filter-name>ShiroFilter</filter-name>
    <filter-class>org.apache.shiro.web.servlet.ShiroFilter</filter-class>
</filter>

<filter-mapping>
    <filter-name>ShiroFilter</filter-name>
    <url-pattern>/*</url-pattern>
    <dispatcher>REQUEST</dispatcher> 
    <dispatcher>FORWARD</dispatcher> 
    <dispatcher>INCLUDE</dispatcher> 
    <dispatcher>ERROR</dispatcher>
</filter-mapping>

```
## Shiro.ini V1
```
[main]
authc.loginUrl = /login.jsp
authc.usernameParam = username
authc.passwordParam = password
authc.rememberMeParam = rememberMe
authc.successUrl = /admin/index.jsp
logout.redirectUrl = /login.jsp


[users]
root = rootpass, admin
alan = alanpass, lecturer
tomc = tompass, statistician

;This section allows you to use a name/value pair syntax to tell shiro how to filter request 
;for any given URL path. All paths in [urls] are relative to the web application
[urls]
;whenever Shiro sees a request to the /login.jsp url, enable the Shiro authc filter during the request
/login.jsp = authc 
/admin/** = authc 
/logout = logout

[roles]
admin = *
lecturer = academic_content
statistician = stats_stuff
```		
## SQL Script
```sql
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shiro`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'alanr', 'alanpass'),
(2, 'tomc', 'tompass'),
(3, 'admin', 'adminpass');

-- --------------------------------------------------------

--
-- Table structure for table `userroles`
--

CREATE TABLE IF NOT EXISTS `userroles` (
  `userID` int(11) NOT NULL,
  `role` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `userroles`
--

INSERT INTO `userroles` (`userID`, `role`) VALUES
(1, 'lecturer'),
(2, 'statistician'),
(3, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

```

## Shiro.ini V2
```
[main]
jdbcRealm= org.apache.shiro.realm.jdbc.JdbcRealm
jdbcRealm.authenticationQuery = SELECT password from user where username = ?
jdbcRealm.userRolesQuery = SELECT role from userroles where userID = (select id FROM user WHERE username = ?)
;jdbcRealm.permissionsQuery  = ??????

ds = com.mysql.jdbc.jdbc2.optional.MysqlDataSource
ds.serverName = localhost
ds.user = root
;ds.password = shiro
ds.databaseName = shiro_test
jdbcRealm.dataSource= $ds

passwordMatcher = org.apache.shiro.authc.credential.Sha256CredentialsMatcher
credentialsMatcher = org.apache.shiro.authc.credential.HashedCredentialsMatcher
credentialsMatcher.hashAlgorithmName = SHA-256
credentialsMatcher.storedCredentialsHexEncoded = true
credentialsMatcher.hashIterations = 5000

authc.loginUrl = /login.jsp
authc.usernameParam = username
authc.passwordParam = password
authc.rememberMeParam = rememberMe
authc.successUrl = /admin/index.jsp
logout.redirectUrl = /login.jsp

[urls]
/login.jsp = authc 
/admin/** = authc 
/logout = logout
```
