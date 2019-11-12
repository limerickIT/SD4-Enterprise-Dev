import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alan.Ryan
 */
public class TestFilter1 implements Filter {
    
    private FilterConfig filterConfig = null;
    
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
     
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        ServletContext sc = filterConfig.getServletContext();
        
        String filterName = filterConfig.getFilterName();
        String servletPath = "Servlet Path " + httpRequest.getServletPath();
        
        sc.log(filterName  + " | " + servletPath + " | before request ");
        
        chain.doFilter(request, response);
        
        sc.log(filterName  + " | " + servletPath + " | after request ");
        
    }//end doFilter

    public void destroy() {   
        filterConfig = null;
    }

    public void init(FilterConfig filterConfig) {        
        this.filterConfig = filterConfig;
    }
}
