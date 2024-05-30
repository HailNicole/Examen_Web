package com.examen.negocio;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.examen.datos.Conexion;

public class Historia {
	public Historia() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Historia(int id, String contenido, boolean estado_historia) {
		super();
		this.id = id;
		this.contenido = contenido;
		this.estado_historia = estado_historia;
	}

	private int id;
	private String contenido;
	private boolean estado_historia;
	
	public boolean isEstado_historia() {
		return estado_historia;
	}
	public void setEstado_historia(boolean estado_historia) {
		this.estado_historia = estado_historia;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContenido() {
		return contenido;
	}
	public void setContenido(String contenido) {
		this.contenido = contenido;
	}
	
	public String consultarHitorias()
	{
		String sql="SELECT * FROM tb_historias WHERE estado_h=true";
		Conexion con=new Conexion();
		String tabla="<table border=2>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
		while(rs.next())
		{
			tabla+="<tr><td><img width=120 height=100 src=imagenes/icon_perfil.png alt=imagen de perfil anonima></td>"
			+ "<td><b>Anónimo</b></br>"+rs.getString(2)+"</td>"
			+ "</td></tr>";
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}
	
	public boolean ingresarHistoria(String texto){
		boolean result=false;
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_historias(contenido_h,estado_h) VALUES(?,?)";
			try{
				pr=con.getConexion().prepareStatement(sql);
				pr.setString(1, texto);
				pr.setBoolean(2, result);
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
	
	public boolean ingresarHistoriAdmin(String texto, boolean estado){
		boolean result=false;
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_historias(contenido_h,estado_h) VALUES(?,?)";
			try{
				pr=con.getConexion().prepareStatement(sql);
				pr.setString(1, texto);
				pr.setBoolean(2, estado);
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
	
	public String consultarHitoriasaValidar()
	{
		String sql="SELECT * FROM tb_historias WHERE estado_h=false";
		Conexion con=new Conexion();
		ResultSet rs=null;
		String resultado="<table border=3><th>ID</th><th>Contenido</th><th>Estado</th>";
		try
		{
		rs=con.Consulta(sql);
		while(rs.next())
		{
			resultado+="<tr><td>"+rs.getInt(1)+"</td>"
					+ "<td>"+rs.getString(2)+"</td>"
					+ "<td>"+rs.getBoolean(3)+"</td>"
					+ "<td> <a href= revisar_historia.jsp?cod=" + rs.getInt(1) + ">Revisar</a></td>"
					+ "</td></tr>";
		}
		resultado+="</table>";
		}
		catch(SQLException e)
		{
		System.out.print(e.getMessage());
		}
		System.out.print(resultado);
		return resultado;
	}
	
	public void ConsultarValidarHistoria(int id) {
		Conexion con=new Conexion();
		ResultSet rs=null;
		String sql = "SELECT id_h, contenido_h, estado_h FROM tb_historias where id_h = '" +id+ "'";
		
		try {
			rs=con.Consulta(sql);
			while(rs.next()) {
				setId(rs.getInt(1));
				setContenido(rs.getString(2));
				setEstado_historia(rs.getBoolean(3));
			}
		}catch(Exception e) {
			
		}
	}
	
	public boolean estadoTrue(Historia h) {
		boolean agregado=false;
		Conexion con=new Conexion();
		String sql ="UPDATE tb_historias SET estado_h='" + h.isEstado_historia() + 
				"' WHERE id_h='" + h.getId() + "'";
		System.out.print(sql);
		try {
			con.Ejecutar(sql);
			agregado=true;
			System.out.print(agregado);
			
		}catch(Exception e) {
			agregado=false;
			System.out.print(agregado);
		}
		return agregado;
	}
	
	public boolean BorrarHistoria(int id) {
		boolean agregado=false;
		Conexion con=new Conexion();
		String sql ="DELETE FROM tb_historias WHERE id_h='" + id + "'";
		System.out.print(sql);
		try {
			con.Ejecutar(sql);
			agregado=true;
			System.out.print(agregado);
			
		}catch(Exception e) {
			agregado=false;
			System.out.print(agregado);
		}
		return agregado;
	}
	
	public boolean EliminarHitoria(int id) {
		boolean f = false;
		Conexion con=new Conexion();
		String sql = "delete from tb_historias where id_h ='" + id + "'";
		try {
			con.Ejecutar(sql);
			f=true;
			
		}catch(Exception e) {
			f=false;
		}
		return f;
	}
	
	public String mostrarTablaBorrar()
	{
		String sql="SELECT * FROM tb_historias";
		ResultSet rs=null;
		Conexion con=new Conexion();
		String resultado="<table border=3><th>ID</th><th>Contenido</th><th>Estado</th>";
		try
		{
		rs=con.Consulta(sql);
		while(rs.next()){
			resultado+="<tr><td>"+rs.getInt(1)+"</td>"
					+ "<td>"+rs.getString(2)+"</td>"
					+ "<td>"+rs.getBoolean(3)+"</td>"
					+ "<td> <a href= respuesta_borrar_historia.jsp?cod=" + rs.getInt(1) + " \"><pre style=\"textalign: center\">Eliminar</pre></a></td>"
					+ "</td></tr>";
		}
		resultado+="</table>";
		}
		catch(SQLException e)
		{
		System.out.print(e.getMessage());
		}
		return resultado;
	}
}
