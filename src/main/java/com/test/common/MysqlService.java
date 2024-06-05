package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	private static MysqlService mysqlService = null;
	
	// DB연결: 메모리 올림 & 변경 X
	// 도메인 뒤에 접속할 DB 이름까지 써준다.
	private static final String URL = "jdbc:mysql://localhost:3306/test_240319";
	private static final String ID = "root"; 
	private static final String PASSWORD = "root";
	
	private Connection conn;
	private Statement statement;
	private ResultSet res;
	
	// 객체 생성 메소드
	// Singleton 패턴: MysqlService 객체가 한개만 생성될 수 있도록 하는 디자인 패턴
	// 이유: DB 연결을 여러 객체에서 하는 것을 방지하기 위해서
	// static을 붙여야 new로 객체 생성 안하고 getInstance로 객체 생성 가능
	public static MysqlService getInstance() {
		if (mysqlService == null) {
			mysqlService = new MysqlService();
		}
		return mysqlService;
	}
	
	// 메소드들
	// DB 접속 - JDBC
	public void connect() {
		try {
			// 1. 드라이버(JDBC) 메모리에 로딩
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			// 2. DB 연결(connection)
			conn = DriverManager.getConnection(URL, ID, PASSWORD);
			
			// 3. statement: 쿼리 실행 준비
			statement = conn.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// DB 연결 해제
	public void disconnect() {
		try {
			statement.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// R - Read: select
	public ResultSet select(String query) throws SQLException {
		res = statement.executeQuery(query);
		return res;
	}
	
	// CUD: insert, update, delete
	public void update(String query) throws SQLException {
		statement.executeUpdate(query);
	}
}
