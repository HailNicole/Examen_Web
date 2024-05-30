package com.examen.negocio;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import com.examen.datos.Conexion;

public class Noticia {
	private String titulo, contenido;
	private int id;
	
	public Noticia() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getContenido() {
		return contenido;
	}
	public void setContenido(String contenido) {
		this.contenido = contenido;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public List<String> consultarNoticias(){
		List<String> listaElementos =new ArrayList<String>();
		String result=null;
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		ResultSet rs=null;
		String img = null;
		String sql="SELECT * FROM tb_noticias";
		try {
			rs=con.Consulta(sql);
			while(rs.next()) {
				InputStream is = rs.getBinaryStream("imagen_n");
		        ByteArrayOutputStream baos = new ByteArrayOutputStream();
		        byte[] buffer = new byte[1024];
		        int bytesRead;
		        while ((bytesRead = is.read(buffer)) != -1) {
		          baos.write(buffer, 0, bytesRead);
		        }
		        byte[] imageBytes = baos.toByteArray();
		        String base64Image = Base64.getEncoder().encodeToString(imageBytes);

		        // Mostrar la imagen en la página
		        img = "<img src='data:image/jpeg;base64," + base64Image + "' alt='Imagen de la base de datos' loading='lazy' width='579' height='380' sizes='(max-width: 579px) 100vw, 579px'>";
				
		        String boton = "<div class=\"contenedor-boton\">\r\n"
						+ "		<button type=\"button\" class=\"btn-noticia1\"\r\n"
						+ "		onclick=\"window.location.href = '" + rs.getString(5) + "'" + "\">\r\n"
						+ "		Leer más</button>\r\n"
						+ "	</div>";
				
		        result="<div class = \"nuevo-item\">\r\n"
		        		+ "<div class=\"noticia\">\r\n"
		        		+ "	<div class=\"colum colum-1\">\r\n"+img
		        		+ "		</div>\r\n"
		        		+ "	<div class=\"colum colum-2\">\r\n"
		        		+ "		<div class=\"encabezado\">\r\n"
		        		+ "			<h2>"+rs.getString(2)+"</h2>\r\n"
		        		+ "		</div>\r\n"
		        		+ "		<div class=\"contenido-noticia\">\r\n"
		        		+ "			<blockquote>\r\n"
		        						+rs.getString(3)
		        		+ "			</blockquote>\r\n"
		        		+ "		</div>\r\n" + boton
		        		+ "	</div>\r\n"
		        		+ "	</div>\r\n"
		        		+ "	</div>";
		        listaElementos.add(result);
			}
		}catch(Exception e) {
			
		}
		return listaElementos;
	}
	
	public boolean ingresarNoticia(String titulo, String contenido, String imagen, String path){
		boolean result=false;
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_noticias(titulo_n, contenido_n, imagen_n, path_n) VALUES(?,?,?,?)";
			try{
				pr=con.getConexion().prepareStatement(sql);
				pr.setString(1, titulo);
				pr.setString(2, contenido);
				File fichero=new File(imagen);
				FileInputStream streamEntrada=new FileInputStream(fichero);
				pr.setBinaryStream(3, streamEntrada,(int)fichero.length());
				pr.setString(4, path);
				if(pr.executeUpdate()==1)
				{
				result=true;
				}
				else
				{
				result=false;
				}
				}
				catch(Exception ex)
				{
				System.out.print(ex.getMessage());
				}
				finally
				{
				try
				{
				pr.close();
				con.getConexion().close();
				}
				catch(Exception ex)
				{
				System.out.print(ex.getMessage());
				}
				}
				return result;
	}
	
	public boolean EliminarNoticia(int id) {
		boolean f = false;
		Conexion con=new Conexion();
		String sql = "delete from tb_noticias where id_n ='" + id + "'";
		try {
			con.Ejecutar(sql);
			f=true;
			
		}catch(Exception e) {
			f=false;
		}
		return f;
	}
	
	public String mostrarNoticiaID()
	{
		String combo="<select name=cmbId>";
		String sql="SELECT * FROM tb_noticias";
		ResultSet rs=null;
		Conexion con=new Conexion();
		try
		{
		rs=con.Consulta(sql);
		while(rs.next())
		{
		combo+="<option value="+rs.getInt(1)+ ">"+rs.getInt(1)+"</option>";
		}
		combo+="</select>";
		}
		catch(SQLException e)
		{
		System.out.print(e.getMessage());
		}
		return combo;
	}
}
