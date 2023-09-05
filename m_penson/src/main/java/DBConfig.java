import java.sql.Connection;
import java.sql.DriverManager;

public class DBConfig {
	public static Connection dbinfo() throws Exception {
		String db_drive = "com.mysql.jdbc.Driver";
		String db_url = "jdbc:mysql://localhost:3306/m_person";
		String db_user = "person";
		String db_pass = "personlife";
		Class.forName(db_drive);
		Connection con = DriverManager.getConnection(db_url, db_user, db_pass);
		return con;
	}
}
