package com.fengyun.tool.mysql;

import java.util.List;

public class TablesBean {
	private String tableName;
	private String javaName;
	private String spaceName;

	private List<FieldBean> fieldList;
	
	public TablesBean(String tableName) {
		this.tableName = tableName;
		
		this.spaceName = MysqlUtil.tableName2SpaceName(tableName);
		
		this.javaName = this.spaceName.substring(0, 1).toLowerCase() + this.spaceName.substring(1);
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public String getJavaName() {
		return javaName;
	}

	public void setJavaName(String javaName) {
		this.javaName = javaName;
	}

	public String getSpaceName() {
		return spaceName;
	}

	public void setSpaceName(String spaceName) {
		this.spaceName = spaceName;
	}

	public List<FieldBean> getFieldList() {
		return fieldList;
	}

	public void setFieldList(List<FieldBean> fieldList) {
		this.fieldList = fieldList;
	}

}
