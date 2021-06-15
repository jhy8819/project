package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO {
    private Connection conn;
 
    private ResultSet rs;
 
    public BoardDAO() {
        try {
            String url = "jdbc:mysql://localhost:3306/project?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
            String uid = "root";
            String upwd = "kdw810118";
            Class.forName("com.mysql.jdbc.Driver"); 
            conn = DriverManager.getConnection(url, uid, upwd);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


	
	 public String getDate() {
	       	String sql = "select now()";
	        try {
	        	PreparedStatement pstmt =conn.prepareStatement(sql);
	        	rs = pstmt.executeQuery();
	            if (rs.next()) {
	                return rs.getString(1);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return ""; // 데이터베이스 오류
	    }
	
	 public int getNext() {
		 String sql="select boardID from board order by boardID desc";
		 try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) +1;
			}
			return 1;
		} catch (Exception e) {
			// TODO: handle exception
		}
		 return -1;
	 }
	 
	 public int write(String boardTitle, String id, String boardContent) {
		 String sql = "insert into board values(?,?,?,?,?,?)";
		 
		 try {
			   PreparedStatement pstmt = conn.prepareStatement(sql);
	            pstmt.setInt(1, getNext());
	            pstmt.setString(2, boardTitle);
	            pstmt.setString(3, id);
	            pstmt.setString(4, getDate());
	            pstmt.setString(5, boardContent);
	            pstmt.setInt(6, 1);
	            return pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
		 return -1;
	 }
	 
	   public ArrayList<Board> getList(int pageNumber) {
	        String SQL = "select * from board where boardID <? and boardAvailable=1";
	        ArrayList<Board> list = new ArrayList<Board>();
	        try {
	            PreparedStatement pstmt = conn.prepareStatement(SQL);
	            pstmt.setInt(1, getNext() - (pageNumber - 1) * 10); // getNext같은 경우는 그 다음으로 작성될 글의 번호이기 때문에 예를 들면 게시글이 5개이면
	            rs = pstmt.executeQuery(); // getNext했을때 6이나오고 pageNumber가 1이므로 1부터 6까지 나옴
	            while (rs.next()) {
	                Board b = new Board();
	                b.setBoardID(rs.getInt(1));
	                b.setBoardTitle(rs.getString(2));
	                b.setId(rs.getString(3));
	                b.setBoardDate(rs.getString(4));
	                b.setBoardContent(rs.getString(5));
	                b.setBoardAvailable(rs.getInt(6));
	                list.add(b);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return list;
	    }
	   public boolean nextPage(int pageNumber) {
		   String sql = "select * from board where boardID < ? and boardAvailable=1";
		   try {
	            PreparedStatement pstmt = conn.prepareStatement(sql);
	            pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
	            rs = pstmt.executeQuery();
	            if (rs.next()) {
	                return true;
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return false;
	    }
	   
	    public Board getBoard(int boardID) {
	        String sql = "select * from board where boardID = ?";
	        try {
	            PreparedStatement pstmt = conn.prepareStatement(sql);
	            pstmt.setInt(1, boardID); // bbsID가 어떤 값을 넣어서 그 숫자에 해당하는 값을 불러오는 역할.
	            rs = pstmt.executeQuery();
	            if (rs.next()) {
	                Board b = new Board();
	                b.setBoardID(rs.getInt(1));
	                b.setBoardTitle(rs.getString(2));
	                b.setId(rs.getString(3));
	                b.setBoardDate(rs.getString(4));
	                b.setBoardContent(rs.getString(5));
	                b.setBoardAvailable(rs.getInt(6));
	                return b;
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return null;
	    }
	   
	    public int update(int boardID, String boardTitle, String boardContent) {
	        String sql = "update board set boardTitle=?, boardContent=? where boardID=?";
	        try {
	            PreparedStatement pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1, boardTitle);
	            pstmt.setString(2, boardContent);
	            pstmt.setInt(3, boardID);
	            return pstmt.executeUpdate();
	 
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return -1; 
	    }
	    
	    public int delete(int boardID) {
	        String sql = "delete from board where boardID=?";
	        try {
	            PreparedStatement pstmt = conn.prepareStatement(sql);
	            pstmt.setInt(1, boardID);
	            return pstmt.executeUpdate();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return -1; // 데이터베이스 오류
	    }
	}
	 

	   
	   
