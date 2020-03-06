package com.fengyun.tool;

import java.util.ArrayList;
import java.util.List;

import com.fengyun.tool.mysql.FieldBean;
import com.fengyun.tool.mysql.MysqlUtil2ShowCreateTable;
import com.fengyun.tool.mysql.MysqlUtilTable2Bean;
import com.fengyun.tool.mysql.MysqlUtilTable2Dao;
import com.fengyun.tool.mysql.MysqlUtilTable2Service;
import com.fengyun.tool.mysql.MysqlUtilTable2XML;
import com.fengyun.tool.mysql.TablesBean;

public class MysqlMain {

	public static String package_name = "com.souche.customer.claim.common.domain";
	public static String package_name_model= "com.souche.customer.claim.common.domain.DTO";
	public static String save_path = "/Users/dasouche/Documents/workspace/snhotels/snhotels/src/com/fengyun/tool/temp";

	public static String mysql_url = "jdbc:mysql://10.255.15.90:3306";
	public static String mysql_dbname = "customer_claim_system";
	public static String mysql_username = "app_rw";
	public static String mysql_password = "4zo6tvZf9zN8CajC";

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		// List<TablesBean> list = MysqlUtil2ShowTables.showTableNameList();
		List<TablesBean> list = new ArrayList<TablesBean>();
		String tableName = "claim_user_depart";

		TablesBean bean = new TablesBean(tableName);
		list.add(bean);

		List<TablesBean> list2 = new ArrayList<TablesBean>();

		for (int i = 0; i < list.size(); i++) {
			TablesBean obj = list.get(i);
			List<FieldBean> itemList = MysqlUtil2ShowCreateTable
					.readTableDetail(list.get(i).getTableName());
			obj.setFieldList(itemList);
			list2.add(obj);
		}

		for (int i = 0; i < list2.size(); i++) {
			MysqlUtilTable2Bean.printEntity(list2.get(i),tableName);
		}

		for (int i = 0; i < list2.size(); i++) {
			MysqlUtilTable2XML.printXMLForMap(list2.get(i));
		}

		for (int i = 0; i < list2.size(); i++) {
			MysqlUtilTable2Dao.printDao(list2.get(i));
			//MysqlUtilTable2Dao.printDaoImpl(list2.get(i));
		}

		for (int i = 0; i < list2.size(); i++) {
			MysqlUtilTable2Service.printService(list2.get(i));
			MysqlUtilTable2Service.printServiceImpl(list2.get(i));
		}

	}

}
