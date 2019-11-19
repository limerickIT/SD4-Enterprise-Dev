### Loading a Servlet on startup :point_down:

Servlet containers load a servlet on the first client request. You can configure a **_load-on-startup element_** with in the web.xml file 
or use **_WebServlet annotation loadOnStartup_** to tell the container to load the servlet on system startup. For example:

```
<servlet>
   <servlet-name>foo</servlet-name>
   <servlet-class>com.foo.servlets.Foo</servlet-class>
    <load-on-startup>5</load-on-startup>
</servlet> 
```

The load-on-startup value should be **_int_**, if it’s a negative value then thebservlet container will load the servlet based on request(s) and 
but if it’s 0 or a positive value, the container will load it on application startup.

If there are multiple servlets with load-on-startup value such as 0,1,2,3 then lower integer value servlet will be loaded first. 
