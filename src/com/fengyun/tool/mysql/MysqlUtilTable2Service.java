package com.fengyun.tool.mysql;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;

import com.fengyun.tool.MysqlMain;

public class MysqlUtilTable2Service {
	
	public static void printService(TablesBean tableBean) {
		
		String fileName = MysqlMain.save_path +"/" + tableBean.getSpaceName() + "Service.java";

		try {

			String content = "package " + MysqlMain.package_name + ";\n";
			
			content +="import com.fengyun.web.service.BaseService;\n";
			content += "public interface " + tableBean.getSpaceName() + "Service  {\n" ;
			content += "}";

			FileOutputStream fos = new FileOutputStream(fileName);
			Writer out = new OutputStreamWriter(fos, "UTF-8");
			out.write(content);
			out.close();
			fos.close();

			System.out.println("==="+tableBean.getSpaceName() + "Service.java"+"生成");
			// 打开一个写文件器，构造函数中的第二个参数true表示以追加形式写文件
			// FileWriter writer = new FileWriter(fileName, false);
			// writer.write(content);
			// writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static void printServiceImpl(TablesBean tableBean) {
		
		String fileName = MysqlMain.save_path +"/" + tableBean.getSpaceName() + "ServiceImpl.java";

		try {

			String content = "package " + MysqlMain.package_name + ";\n";
			
			content += "import javax.annotation.Resource;"+ "\n";
			content += "import org.springframework.stereotype.Service;"+ "\n";
			content += "import com.fengyun.web.service.impl.BaseServiceImpl;"+ "\n";
			
			
			//content += "import "+MysqlMain.package_name+".dao."+tableBean.getSpaceName()+"Dao;"+ "\n";
			//content += "import "+MysqlMain.package_name+".model."+tableBean.getSpaceName()+";"+ "\n";
			//content += "import "+MysqlMain.package_name+".service."+tableBean.getSpaceName()+"Service;"+ "\n";
			
			content += "@Service(\""+tableBean.getJavaName()+"Service\")"+ "\n";
			
			//content += "public class " + tableBean.getSpaceName() + "ServiceImpl extends BaseServiceImpl<"+tableBean.getSpaceName()+"DO,Long> implements "+tableBean.getSpaceName()+"Service {\n" ;
			content += "public class " + tableBean.getSpaceName() + "ServiceImpl implements "+tableBean.getSpaceName()+"Service {\n" ;

			content += "@SuppressWarnings(\"unused\")"+ "\n";
			content += "@Resource"+ "\n";
			content += "private " + tableBean.getSpaceName() + "Mapper " + tableBean.getJavaName() + "Mapper;"+ "\n";
			
			content += "@Resource"+ "\n";
			content += "public void setBaseMapper(" + tableBean.getSpaceName() + "Mapper " + tableBean.getJavaName() + "Mapper) {"+ "\n";
				content += "	super.setBaseMapper(" + tableBean.getJavaName() + "Mapper);"+ "\n";
				content += "}"+ "\n";
			
			content += "}"+ "\n";

			FileOutputStream fos = new FileOutputStream(fileName);
			Writer out = new OutputStreamWriter(fos, "UTF-8");
			out.write(content);
			out.close();
			fos.close();

			System.out.println("==="+tableBean.getSpaceName() + "ServiceImpl.java"+"生成");
			// 打开一个写文件器，构造函数中的第二个参数true表示以追加形式写文件
			// FileWriter writer = new FileWriter(fileName, false);
			// writer.write(content);
			// writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
