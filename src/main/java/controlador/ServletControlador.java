package controlador;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import modelo.Rectangulo;

@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet{
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        //1.-Procesamos los parametros
        
        //2.-Creamos los JavaBeans
        Rectangulo rec = new Rectangulo(3,6);
        
        //3.-Agregamos el JavaBean a algun alcance (como puede ser, request, session o application)
            //el segundo parametro es la variable que estamos compartiendo
            //esta variable la vamos a buscar desde el JSP hasta aqui para mostrarla al cliente
        request.setAttribute("mensaje", "Saludos desde el Servlet");
        
        
        //compartimos el javabean de rectangulo, lo compartimos en el alcance de session
        HttpSession sesion = request.getSession();
        //lo que se va a buscar es el nombre osea 'rectangulo' y lo que devolvera sera rec
        sesion.setAttribute("rectangulo", rec);
        
        //4.-Redireccionar a la vista seleccionada
        RequestDispatcher rd = request.getRequestDispatcher("vista/desplegarVariables.jsp");
        rd.forward(request, response); //esto es para poder recuperar la informacion que se ha compartido
        
        
    }
}