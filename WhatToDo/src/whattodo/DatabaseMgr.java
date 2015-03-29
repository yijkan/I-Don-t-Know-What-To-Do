package whattodo;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.util.Stack;


public class DatabaseMgr {
	private static Stack<Connection> connections = new Stack<Connection>();
	private static Object lock = new Object();

	static {
		Connection conn=null;

		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/What_To_Do";
		String userName = "root";
//		String password = "Z7jp79LBMV"; // for the server
		String password = "";
		final int connectionsCount = 10;
		
		try{
			Driver d = new com.mysql.jdbc.Driver();
			Class.forName(driver);
			System.out.println("Driver Successfully!");
			for (int i = 0; i < connectionsCount; i++){
				conn = DriverManager.getConnection(url,userName,password);
				System.out.println("Connect Successfully!");
				// create connections in list...
				connections.push(conn);
			}
		}catch(ClassNotFoundException e){
			System.err.print("ClassNotFoundException");
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
	}

	/**
	 * use synchronized(obj) to allow only one user at a time 
	 * if this code is multithreaded
	 * @return
	 */
	public static Connection getConnection() {
		synchronized(lock) {
			if (connections.isEmpty()) {
				System.out.println("Stack Empty!");
				return null;
			}
			return connections.pop();
		}
	}

	/*
	 * Before giving back the connection, you must CLOSE your statement.
	 */
	public static void returnConnection(Connection c) {
		synchronized(lock) {
			connections.push(c);
		}
	}
	
	public static String random() {
		Connection conn = null;
		String sugg = "Couldn't connect to database";
		try {
			conn = getConnection();
			PreparedStatement p = conn.prepareStatement("SELECT Suggestion FROM Suggestions ORDER BY RAND() LIMIT 1;");
			ResultSet rs = p.executeQuery();
			if(rs.next()) {
				sugg = rs.getString("Suggestion");
			} else {
				sugg = "Error: No suggestions found";
			}
			p.close();
			rs.close();
		} catch (SQLException e) {
			sugg = "Database Error";
		} finally {
			returnConnection(conn);
		}
		return sugg;
	}
	
	public static String learn() {
		Connection conn = getConnection();
		String sugg = null;
		try {
			PreparedStatement p = conn.prepareStatement("SELECT Suggestion FROM Suggestions WHERE Category=0 ORDER BY RAND() LIMIT 1");
			ResultSet rs = p.executeQuery();
			if(rs.next()) {
				sugg = rs.getString("Suggestion");
			} else {
				sugg = "Error: No suggestions found";
			}
			p.close();
			rs.close();
		} catch (SQLException e) {
			sugg = "Database Error";
		} finally {
			returnConnection(conn);
		}
		return sugg;
	}
	
	public static String food() {
		Connection conn = getConnection();
		String sugg = null;
		try {
			PreparedStatement p = conn.prepareStatement("SELECT Suggestion FROM Suggestions WHERE Category=1 ORDER BY RAND() LIMIT 1");
			ResultSet rs = p.executeQuery();
			if(rs.next()) {
				sugg = rs.getString("Suggestion");
			} else {
				sugg = "Error: No suggestions found";
			}
			p.close();
			rs.close();
		} catch (SQLException e) {
			sugg = "Database Error";
		} finally {
			returnConnection(conn);
		}
		return sugg;
	}
	
	public static String misc() {
		Connection conn = getConnection();
		String sugg = null;
		try {
			PreparedStatement p = conn.prepareStatement("SELECT Suggestion FROM Suggestions WHERE Category=2 ORDER BY RAND() LIMIT 1");
			ResultSet rs = p.executeQuery();
			if(rs.next()) {
				sugg = rs.getString("Suggestion");
			} else {
				sugg = "Error: No suggestions found";
			}
			p.close();
			rs.close();
		} catch (SQLException e) {
			sugg = "Database Error";
		} finally {
			returnConnection(conn);
		}
		return sugg;
	}
	
	public static boolean add(String sugg, String link, String cat) {
		Connection conn = getConnection();
		try {
			PreparedStatement p = conn.prepareStatement("INSERT INTO Suggestions (Suggestion, Category) VALUES (?,?)");
			String suggestion = null;
			if (link != null) {
				suggestion = "<a href='" + link + "' class='sugg'>" + sugg + "</a>";
			} else {
				suggestion = sugg;
			}
			
			System.out.println(suggestion);
			p.setString(1, suggestion);
			
			int category = -1;
			switch(cat) {
				case "learn":
					category = 0;
					break;
				case "food":
					category = 1;
					break;
				case "misc":
					category = 2;
					break;
			}
			System.out.println(category);
			p.setInt(2, category);
			p.execute();
			p.close();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			returnConnection(conn);
		}
		
		return true;
	}
}
