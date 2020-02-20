package com.hospital;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Dbcoon {
	//这个地址是远程sqlServer服务器的地址
	String url = "jdbc:jtds:sqlserver://192.168.2.145:1433/hospital"; 
	//这个地址是当sqlServer安装在本机时使用
	//String url = "jdbc:jtds:sqlserver://localhost:1433/hospital";  
	Connection con = null;  
	ResultSet rs = null;  
	PreparedStatement prepstmt = null;
	
	//sqlServer的用户名
	String userName = "sa";
	//sqlServer的密码
	String password = "123456";

	public Dbcoon() {
		try {
			Class.forName("net.sourceforge.jtds.jdbc.Driver"); // 用classforname方法加载驱动程序类
		} catch (java.lang.ClassNotFoundException e) { // 当没有发现这个加载这个类的时候抛出的异常
			System.err.println(e); // 执行系统的错误打印
		}

	}

	public ResultSet executeQuery(String sql) { // 可以执行添加删等操作
		try {
			con = DriverManager.getConnection(url, userName, password);
			Statement stmt = con
					.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
							ResultSet.CONCUR_READ_ONLY);

			rs = stmt.executeQuery(sql);
		} catch (SQLException er) {
			System.err.println(er.getMessage());
		}
		return rs;
	}

	public int executeUpdate(String sql) { // 数据库的更新操作
		int result = 0;
		try {
			con = DriverManager.getConnection(url, userName, password);
			Statement stmt = con.createStatement();
			result = stmt.executeUpdate(sql);
		} catch (SQLException ex) {
			System.err.println(ex.getMessage());
		}
		return result;
	}

	public void close() {
		try {
			if (con != null)
				con.close();
		} catch (Exception e) {
			System.out.print(e);
		}
		try {
			if (rs != null)
				rs.close();
		} catch (Exception e) {
			System.out.println(e);
		}

	}

	public PreparedStatement preparedstatements(String sql) {
		try {
			con = DriverManager.getConnection(url, userName, password);
			prepstmt = con.prepareStatement(sql);

			// PreparedStatement prepstmt = null;
		} catch (SQLException ex) {
			System.err.println(ex.getMessage());
		}
		return prepstmt;
	}
}
