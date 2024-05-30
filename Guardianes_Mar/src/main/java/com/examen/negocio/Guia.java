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

public class Guia {
	private int id;
	private String desc;
	
	public Guia() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	public String mostrarCategoria()
	{
		String combo="<select name=cmbCategoria>";
		String sql="SELECT * FROM tb_cat_guia";
		ResultSet rs=null;
		Conexion con=new Conexion();
		try
		{
		rs=con.Consulta(sql);
		while(rs.next())
		{
		combo+="<option value="+rs.getInt(1)+ ">"+rs.getString(2)+"</option>";
		}
		combo+="</select>";
		}
		catch(SQLException e)
		{
		System.out.print(e.getMessage());
		}
		return combo;
	}
	
	public boolean ingresarGuia(String titulo, String contenido,int id_c, String imagen){
		boolean result=false;
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_guias(titulo_g, contenido_g, id_c, imagen_g) VALUES(?,?,?,?)";
			try{
				pr=con.getConexion().prepareStatement(sql);
				pr.setString(1, titulo);
				pr.setString(2, contenido);
				pr.setInt(3, id_c);
				File fichero=new File(imagen);
				FileInputStream streamEntrada=new FileInputStream(fichero);
				pr.setBinaryStream(4, streamEntrada,(int)fichero.length());
				if(pr.executeUpdate()==1){
					result=true;
				}else{
					result=false;
				}
			}catch(Exception ex){
				System.out.print(ex.getMessage());
			}finally{
				try{
					pr.close();
					con.getConexion().close();
				}catch(Exception ex){
					System.out.print(ex.getMessage());
				}
			}
		return result;
	}
	
	public List<String> consultarGuiasContenido(int perfil){
		String result=null;
		List<String> listaElementos =new ArrayList<String>();
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		ResultSet rs=null;
		String img = null;
		String sql="SELECT contenido_g FROM tb_guias WHERE id_c="+perfil;
		try {
			rs=con.Consulta(sql);
			while(rs.next()) {
				result=rs.getString(1);
				listaElementos.add(result);
			}
		}catch(Exception e) {
			
		}
		return listaElementos;
	}
	
	public List<String> consultarGuiasTitulo(int perfil){
		String result=null;
		List<String> listaElementos =new ArrayList<String>();
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		ResultSet rs=null;
		String img = null;
		String sql="SELECT titulo_g FROM tb_guias WHERE id_c="+perfil;
		try {
			rs=con.Consulta(sql);
			while(rs.next()) {
				result=rs.getString(1);
				listaElementos.add(result);
			}
		}catch(Exception e) {
			
		}
		return listaElementos;
	}
	
	public List<String> consultarGuiasImagen(int perfil){
		List<String> listaElementos =new ArrayList<String>();
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		ResultSet rs=null;
		String img = null;
		String sql="SELECT imagen_g FROM tb_guias WHERE id_c="+perfil;
		try {
			rs=con.Consulta(sql);
			while(rs.next()) {
				InputStream is = rs.getBinaryStream("imagen_g");
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
				
		        listaElementos.add(img);
			}
		}catch(Exception e) {
			
		}
		return listaElementos;
	}
	
	public boolean EliminarGuia(int id) {
		boolean f = false;
		Conexion con=new Conexion();
		String sql = "delete from tb_guias where id_g ='" + id + "'";
		try {
			con.Ejecutar(sql);
			f=true;
			
		}catch(Exception e) {
			f=false;
		}
		return f;
	}
	
	public String mostrarGuiaID()
	{
		String combo="<select name=cmbId>";
		String sql="SELECT * FROM tb_guias";
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
