using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Configuration;


namespace Service2Home
{
    public class connectionclass
    {
        SqlConnection con;
        SqlCommand cmd;
        public connectionclass()
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            con = new SqlConnection(strcon);
            //con = new SqlConnection(@"server=DESKTOP-EA0OJCK\SQLEXPRESS;database=S2H;Integrated security=true");
        }
        public int Fun_nonquery(String sqlquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sqlquery, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }
        public String Fun_scalar(String sqlquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sqlquery, con);
            con.Open();
            String s = cmd.ExecuteScalar().ToString();
            con.Close();
            return s;
        }
        public SqlDataReader Fun_datareader(String sqlquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sqlquery, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public DataSet Fun_dataadapter(String sqlquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(sqlquery, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}