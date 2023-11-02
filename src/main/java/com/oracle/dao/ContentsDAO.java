package com.oracle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.oracle.dto.ContentsVO;

public class ContentsDAO {
	private ContentsDAO() {
	}

	private static ContentsDAO instance = new ContentsDAO();

	public static ContentsDAO getInstance() {
		return instance;
	}
	
	public Connection getConnection() throws Exception{
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext = (Context)initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource)envContext.lookup("jdbc/xe");
		conn = ds.getConnection();
		return conn;
	}
	
	public ContentsVO[] getContents(String subject) {
		ContentsVO[] cVo = new ContentsVO[306];
		String sql = null;
				
		if (subject == null)
			sql = "select * from CONTENTS where ROWNUM <= 306";
		else
			sql = "select * from CONTENTS where SUBJECT = '" + subject + "' and ROWNUM <= 306";
		
		//System.out.println(sql);
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			int i = 0;
			int j = i;
			conn = getConnection();
			pstmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			rs = pstmt.executeQuery();
			rs.last();
			int row_size = rs.getRow();
			rs.beforeFirst();
			while (rs.next()) {
				cVo[i] = new ContentsVO();
				cVo[i].setCid(rs.getString("cid"));
				cVo[i].setLink(rs.getString("link"));
				cVo[i].setTitle(rs.getString("title"));
				cVo[i].setThumbnail(rs.getString("thumbnail"));
				cVo[i].setPub_date(rs.getString("pub_date"));
				cVo[i].setPress(rs.getString("press"));
				cVo[i].setType(rs.getString("type"));
				cVo[i].setAgree(rs.getInt("agree"));
				cVo[i].setDisagree(rs.getInt("disagree"));
				cVo[i].setSource(rs.getString("source"));
				cVo[i].setSubject(rs.getString("subject"));
				cVo[i].setSummary(rs.getString("summary"));
				cVo[i].setSubcategory(rs.getString("subcategory"));
				cVo[i].setTotal_rowsize(row_size);
				//i++;
				if (subject != null) {
					if (subject.equals("sports")) {
						i = i + 9;
						if(i >= row_size) {
							i = j + 1;
							j = i;
						}
					}else if(subject.equals("entertainment")) {
						i = i + 5;
						if(i >= row_size) {
							i = j + 1;
							j = i;
						}
					}else
						i++;
				}else {
					i++;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return cVo;
	}
	
	public ContentsVO[][] getPrefContents(int pref_subj) {
		ContentsVO[][] pContVo = new ContentsVO[8][180];
		switch(1){
		case 1:
			if((pref_subj & 128) == 128) {
				pContVo[0] = this.getContents("sports");
			}
		case 2:
			if((pref_subj & 64) == 64) {
				pContVo[1] = this.getContents("politics");
			}
		case 3:
			if((pref_subj & 32) == 32) {
				pContVo[2] = this.getContents("economic");
			}
		case 4:
			if((pref_subj & 16) == 16) {
				pContVo[3] = this.getContents("society");
			}
		case 5:
			if((pref_subj & 8) == 8)
				pContVo[4] = this.getContents("culture");
		case 6:
			if((pref_subj & 4) == 4)
				pContVo[5] = this.getContents("entertainment");
		case 7:
			if((pref_subj & 2) == 2)
				pContVo[6] = this.getContents("digital");
		case 8:
			if((pref_subj & 1) == 1)
				pContVo[7] = this.getContents("foreign");
		}		
		return pContVo;
	}
	
	public ContentsVO[] getSubcontents(String category) {
		ContentsVO[] cVo = new ContentsVO[180];
		String sql = null;
				
		sql = "select * from CONTENTS where subcategory = '" + category + "' and ROWNUM <= 180";
		
		//System.out.println(sql);
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			int i = 0;
			conn = getConnection();
			pstmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			rs = pstmt.executeQuery();
			rs.last();
			int row_size = rs.getRow();
			rs.beforeFirst();
			while (rs.next()) {
				cVo[i] = new ContentsVO();
				cVo[i].setCid(rs.getString("cid"));
				cVo[i].setLink(rs.getString("link"));
				cVo[i].setTitle(rs.getString("title"));
				cVo[i].setThumbnail(rs.getString("thumbnail"));
				cVo[i].setPub_date(rs.getString("pub_date"));
				cVo[i].setPress(rs.getString("press"));
				cVo[i].setType(rs.getString("type"));
				cVo[i].setAgree(rs.getInt("agree"));
				cVo[i].setDisagree(rs.getInt("disagree"));
				cVo[i].setSource(rs.getString("source"));
				cVo[i].setSubject(rs.getString("subject"));
				cVo[i].setSummary(rs.getString("summary"));
				cVo[i].setSubcategory(rs.getString("subcategory"));
				cVo[i].setTotal_rowsize(row_size);
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return cVo;
	}
	
	public static int getResultSetSize(ResultSet resultSet) {
	    int size = -1;

	    try {
	        resultSet.last();
	        size = resultSet.getRow();
	        resultSet.beforeFirst();
	    } catch(SQLException e) {
	        return size;
	    }

	    return size;
	}
}