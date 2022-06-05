using System;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

public class MySqlDBHelper {
    private string _connString = null;
    /// <summary>
    /// The default constructor completes the initialization of database connection string
    /// </summary>
    public MySqlDBHelper() {
        try {
            _connString = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
        }
        catch (Exception ex) {
            throw (ex);
        }
    }

    /// <summary>
    /// Overloaded constructor, passing the connection string each time
    /// </summary>
    /// <param name="connString">connection string</param>
    public MySqlDBHelper(string connString) {
        _connString = connString;
    }

    /// <summary>
    /// Create a Connection object
    /// </summary>
    /// <returns>Connection object</returns>
    private MySqlConnection CreateConn() {
        MySqlConnection conn = new MySqlConnection();
        conn.ConnectionString = _connString;
        conn.Open();
        return conn;
    }

    /// <summary>
    /// Create a Command object to execute sql statement
    /// </summary>
    /// <param name="sql">sql statement</param>
    /// <returns>Command object</returns>
    private MySqlCommand CreateCmd(string sql) {
        MySqlCommand cmd = new MySqlCommand();
        cmd.Connection = CreateConn();
        cmd.CommandText = sql;
        return cmd;
    }

    /// <summary>
    /// Execute insert, update and delete
    /// </summary>
    /// <param name="sql">sql statement</param>
    /// <returns>The number of affected lines</returns>
    public int ExecuteInsertUpdateDelete(string sql) {
        return CreateCmd(sql).ExecuteNonQuery();
    }

    /// <summary>
    /// Gets the value of the first row and first column in the table
    /// </summary>
    /// <param name="sql">sql statement</param>
    /// <returns>The value of the first row and the first column</returns>
    public object ExecuteScalar(string sql) {
        return CreateCmd(sql).ExecuteScalar();
    }

    /// <summary>
    /// Get DataSet
    /// </summary>
    /// <param name="sql">sql statement</param>
    /// <returns>DataSet</returns>
    public DataSet ExecuteDataSet(string sql) {
        DataSet ds = new DataSet();
        MySqlDataAdapter da = new MySqlDataAdapter();
        da.SelectCommand = CreateCmd(sql);
        da.Fill(ds);
        return ds;
    }

    /// <summary>
    ///  Get DataTable
    /// </summary>
    /// <param name="sql">sql statement</param>
    /// <returns>DataTable</returns>
    public DataTable ExecuteDataTable(string sql) {
        DataTable dt = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter();
        da.SelectCommand = CreateCmd(sql);
        da.Fill(dt);
        return dt;
    }
}
