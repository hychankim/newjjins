package com.oracle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.oracle.dto.VocVO;

public class VocDAO {

	private static VocDAO instance = new VocDAO();

	public static VocDAO getInstance() {
		return instance;
	}

	public Connection getConnection() throws Exception {
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource) envContext.lookup("jdbc/xe");
		conn = ds.getConnection();
		return conn;
	}
	
	public int insertVoc(VocVO vVo) {
		int result = -1;
		String sql = "insert into user_voc(uvid, uv_usid, voc) values(uservoc_id_seq.NEXTVAL, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vVo.getUv_usid());
			pstmt.setString(2, vVo.getVoc());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
}
