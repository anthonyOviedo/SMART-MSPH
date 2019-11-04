package com.chilyfacts.com;
import Smart_msph.logic.Model;
import Smart_msph.logic.News;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
public class FileUploadHandler extends HttpServlet {
    private static final long serialVersionUID = 1 ;
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        doPost(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String file_name = null;
      
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
        if (!isMultipartContent) {
            return;
        }
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        try {
            List < FileItem > fields = upload.parseRequest(request);
            Iterator < FileItem > it = fields.iterator();
            FileItem des = it.next();
            des.getString();
            String Descrripcion = des.getString();
            if (!it.hasNext()) {
                return;
            }
            while (it.hasNext()) {
                FileItem fileItem = it.next();
                
                boolean isFormField = fileItem.isFormField();
                if (isFormField) {
                    if (file_name == null) {
                        if (fileItem.getFieldName().equals("file_name")) {
                        	file_name = fileItem.getString();
                        }
                    }
                } else {
                    if (fileItem.getSize() > 0) {
                        fileItem.write(new File("C:\\SMART-MSPH\\web\\newsImg\\" + fileItem.getName()));
                        String ruta = "newsImg/"+fileItem.getName();
                        
                        News news = new News();
                     news.setImagen(ruta);
                     news.setDescripcion(Descrripcion);
                      Model.instance().insertNews(news);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            out.println("<script type='text/javascript'>");
            out.println("window.location.href='Pagina1.jsp?filename="+file_name+"'");
            out.println("</script>");
            out.close();
        }
    }
}