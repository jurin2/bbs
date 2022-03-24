package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	
	// 데이터베이스 접근개체
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/bbs";
			String dbID = "root";
			String dbPassword = "root";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	
	public int login(String userID, String userPassword) {
		String SQL = "SELECT userPassword FROM user WHERE userID=?";
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				// 해당 아이디가 존재하는 영역
				if(rs.getString(1).equals(userPassword)) {
					// 로그인 성공
					return 1;
				}else {
					// 패스워드 불일치
					return -2;
				}
			}else {
				// 아이디가 존재하지 않는 영역
				return -1;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return -3;
	}
	
		
}
