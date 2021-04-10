package com.team2.main;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBManager {
	
public static Connection connect() throws SQLException {
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		return DriverManager.getConnection(url, "je","je");
	}
	public static void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		try {
			if (rs != null) {				
				rs.close();
			}
		} catch (Exception e1) {
		}
		try {
			if (pstmt != null) {				
				pstmt.close();
			}
		} catch (Exception e) {
		}
		try {
			if (con != null) {
				con.close();				
			}
		} catch (Exception e) {
		}
	}
}
