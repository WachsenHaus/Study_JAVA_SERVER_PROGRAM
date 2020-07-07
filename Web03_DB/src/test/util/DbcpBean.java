package test.util;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
/*
 * Data base Connection Pool Bean
 * 아래의 클래스가 동작하려면
 * 1.servers/context.xml 문서에 db정보가 들어가야한다.
 *     <Resource name="jdbc/myoracle" auth="Container"
              type="javax.sql.DataSource" driverClassName="oracle.jdbc.OracleDriver"
              url="jdbc:oracle:thin:@127.0.0.1:1521:xe"
              username="scott" password="tiger" maxTotal="20" maxIdle="10"
              maxWaitMillis="-1"/>
   2.<resource-ref>
	 <description>Oracle Datasource example</description>
	 <res-ref-name>jdbc/myoracle</res-ref-name>
	 <res-type>javax.sql.DataSource</res-type>
	 <res-auth>Container</res-auth>
	</resource-ref>
	3. web-inf/lib 폴더에 ojdbc6.jar 파일을 넣어서 라이브러리를 사용할 준비를 해야한다.
	
	-위의 3가지 설정을 한 후에
	new DbcpBean().getConn() 메소드를 호출하면 Connection Pool에서 Connection 개체가 하나 리턴된다.
	
	-dao에서 connection 개체를 사용한 후  .close() 메소드를 호출하면 
	자동으로 connection pool에 connection 개체가 반환된다.
	
	
 */
public class DbcpBean {
	//필드
	private Connection conn;
	
	//생성자
	public DbcpBean() {
		//connection 개체의 참조값을 얻어와서 필드에 저장하는 작업을 한다.
		try {
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			//jdbc/myoracle이라는 이름의 datasource(커넥션풀) 에서
			DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
			//connection 개체를 하나 가지고 온다.
			conn = ds.getConnection();
			//etc.
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//connection 개체를 리턴해주는 메소드
	public Connection getConn() {
		return conn;
	}
}
