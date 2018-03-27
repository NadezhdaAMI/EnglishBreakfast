package app.servlets;

import app.dao.DaoImnl;
import app.dao.PhrasesEntity;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ShowPhrasServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        Model model = Model.getInstance();
//        List<String> phrases = new ArrayList<>();
//        phrases.add("olo");
//        phrases.add("olololo");
        List<String> list = new ArrayList<>();

        DaoImnl daoImnl = new DaoImnl();
        for (PhrasesEntity ph :daoImnl.getAll()) {
            String s = ph.toString();
            list.add(s);
        }

        request.setAttribute("phraseAll", list);

//        request.setAttribute("list", daoImnl.getAll());//создаём аттрибут который взял в себя всё что есть в базе данных
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("views/phrases.jsp");//перебрасываемся на list.jsp
        requestDispatcher.forward(request,response);



//        String content = "В словаре : " + daoImnl.getAll();
//
//        response.setContentType("text/plain");
//
//        OutputStream outStream = response.getOutputStream();
//        outStream.write(content.getBytes("UTF-8"));
//        outStream.flush();
//        outStream.close();


    }
}
