package RentGoods;

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
 * Created by LingHanchen on 17/5/11.
 */
public class RequestFilter implements Filter{
    //创建线程
    public static ThreadLocal<HttpServletRequest> threadLocalRequest = new ThreadLocal<HttpServletRequest>();
    public static ThreadLocal<HttpServletResponse> threadLocalResponse = new ThreadLocal<HttpServletResponse>();
    public void doFilter(ServletRequest arg0, ServletResponse arg1,
                         FilterChain arg2) throws IOException, ServletException {
        threadLocalRequest.set((HttpServletRequest) arg0);
        threadLocalResponse.set((HttpServletResponse) arg1);
        arg2.doFilter(arg0, arg1);
    }
    public void destroy() {
    }
    public void init(FilterConfig arg0) throws ServletException {
    }

}
