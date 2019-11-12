import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alan.Ryan
 */
public class SecurityFilter implements Filter {
    
    private FilterConfig filterConfig = null;
    private String[] allowedHosts = null;
    
    public SecurityFilter() {
    }    

    public void init(FilterConfig filterConfig) {        
        this.filterConfig = filterConfig;
        
        String hostsString = filterConfig.getInitParameter("allowedHosts");
        
        if (hostsString != null && !hostsString.trim().equals("") ) 
            allowedHosts = hostsString.split("\n");
    }//end init
    
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        
        String remoteAddress = httpRequest.getRemoteAddr();
        
        boolean allowed = false;
        
        for(String host: allowedHosts) {
            if (host.trim().equals(remoteAddress)) {
                allowed = true;
                break;
            }//end if
        }//end for
                
        if (allowed)
            chain.doFilter(request, response);
        else {
            filterConfig.getServletContext()
                    .log("Attempted access for unauthorised IP " + remoteAddress);
            httpResponse.sendError(404);
            chain.doFilter(request, response);
        }//end else
    }//end doFilter

    /**
     * Destroy method for this filter
     */
    public void destroy() {      
		//nothing to do
    }
}//end class SecurityFilter
