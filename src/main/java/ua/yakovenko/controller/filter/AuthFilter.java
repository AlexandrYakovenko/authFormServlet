package ua.yakovenko.controller.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AuthFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request,
                         ServletResponse response,
                         FilterChain filterChain
    ) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        HttpSession session = req.getSession();
        ServletContext context = session.getServletContext();

        System.out.println("p------------------------------------------------p");
        System.out.println(session);
        System.out.println(session.getAttribute("role")+" " +session.getAttribute("userEmail"));
        System.out.println("Auth filter work: "+ context.getAttribute("loggedUsers"));
        System.out.println("L________________________________________________|");

        filterChain.doFilter(request,response);
    }

    @Override
    public void destroy() {

    }
}
