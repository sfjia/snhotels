package com.fengyun.tool.mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.fengyun.tool.MysqlMain;

public class MysqlUtil2ShowCreateTable {

	public static List<FieldBean> readTableDetail(String tableName) {

		// 驱动程序名
		String driver = "com.mysql.jdbc.Driver";

		// URL指向要访问的数据库名scutcs
		// String url = "jdbc:mysql://42.120.16.52:3306/" + database;
		String url = MysqlMain.mysql_url;

		// MySQL配置时的用户名
		String user = MysqlMain.mysql_username;

		// Java连接MySQL配置时的密码
		String password = MysqlMain.mysql_password;

		List<FieldBean> list = new ArrayList<FieldBean>();

		try {

			// 加载驱动程序
			Class.forName(driver);

			// 连续数据库
			Connection conn = DriverManager.getConnection(url, user, password);

			if (!conn.isClosed()) {
				// System.out.println("Succeeded connecting to the Database!");
			}

			// statement用来执行SQL语句
			Statement statement = conn.createStatement();

			// 要执行的SQL语句
			String sql = "SELECT COLUMN_NAME columnName, DATA_TYPE dataType, COLUMN_COMMENT columnComment FROM INFORMATION_SCHEMA.COLUMNS "
					+ "WHERE table_name = '"
					+ tableName
					+ "' AND table_schema = '"+MysqlMain.mysql_dbname+"';";

			ResultSet rs = statement.executeQuery(sql);

			while (rs.next()) {

				// 选择sname这列数据
				String columnName = rs.getString("columnName");

				String dataType = rs.getString("dataType");
				String columnComment = rs.getString("columnComment");

				FieldBean bean = new FieldBean(columnName, dataType,
						columnComment);
				list.add(bean);

			}
			rs.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			System.out.println("Sorry,can`t find the Driver!");
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;

	}

}
