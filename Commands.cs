using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public class Commands
    {
        SqlConnection con = new SqlConnection(Connection.Get_Connect);
        SqlCommand cmd;
        public string Register(string Park_name, string slot_name, string name, string phone_num, string vehicle_reg, string pricing_type, string token)
        {
            string result = "";
            if (con.State != ConnectionState.Open) con.Open();
            cmd = new SqlCommand("Register", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Parkin_Name", Park_name);
            cmd.Parameters.AddWithValue("@Slot_Name", slot_name);
            cmd.Parameters.AddWithValue("@Name", name);
            cmd.Parameters.AddWithValue("@Phone", phone_num);
            cmd.Parameters.AddWithValue("@Reg_No", vehicle_reg);
            cmd.Parameters.AddWithValue("@Pricing_Type", pricing_type);
            cmd.Parameters.AddWithValue("@Token", token);
            cmd.Parameters.Add(new SqlParameter()
            {
                Direction = ParameterDirection.Output,
                ParameterName = "@status",
                SqlDbType = SqlDbType.Int
            });
            cmd.ExecuteNonQuery();
            con.Close();
            if (cmd.Parameters["@status"].Value.ToString() == "1")
            {
                result = "Succesfully Register";
            }
            else if (cmd.Parameters["@status"].Value.ToString() == "0")
            {
                result = "Place is full";
            }
            else
            {
                result = "Your car is parking";
            }
            return result;
        }
        public string Login_Check(string Reg_NO, string Token)
        {
            string result = "";
            if (con.State != ConnectionState.Open) con.Open();
            cmd = new SqlCommand("Login_Process", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Vehicle_Reg_NO", Reg_NO);
            cmd.Parameters.AddWithValue("@Token", Token);
            cmd.Parameters.Add(new SqlParameter()
            {
                Direction = ParameterDirection.Output,
                ParameterName = "@status",
                SqlDbType = SqlDbType.Int
            }
                );
            cmd.ExecuteNonQuery();
            con.Close();
            if (cmd.Parameters["@status"].Value.ToString() == "1")
            {
                result = "Login Succesfully";
            }
            else
            {
                result = "Unsuccesfull Login";
            }
            return result;
        }
        public string Generate_Token()
        {
            Random ran = new Random();
            int string_lenght = 5;
            int randValue;
            string str = "";
            char letter;

            for (int i = 0; i <= string_lenght; i++)
            {
                randValue = ran.Next(0, 26);
                letter = Convert.ToChar(randValue + 65);
                str = str + letter;
            }
            return str;
        }
        public DataTable Search(string name, string vehicle_reg_no)
        {
            if (con.State != ConnectionState.Open) con.Open();
            cmd = new SqlCommand("Search", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", name);
            cmd.Parameters.AddWithValue("@Reg_NO", vehicle_reg_no);
            cmd.Parameters.Add(new SqlParameter()
            {
                Direction = ParameterDirection.Output,
                ParameterName = "@status",
                SqlDbType = SqlDbType.Int
            });
            cmd.ExecuteNonQuery();
            if (cmd.Parameters["@status"].Value.ToString() == "1")
            {
                DataTable ds = new DataTable();
                SqlDataAdapter ad = new SqlDataAdapter(cmd);
                ad.Fill(ds);
                return ds;
            }
            else
            {
                return null;
            }

        }
        public DataTable Get_User(string Reg_No)
        {
            if(con.State!=ConnectionState.Open) con.Open();
            string query = "select * from Registration where Vehicle_Registration_NO='"+Reg_No+"'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter ad=new SqlDataAdapter(cmd);
            ad.Fill(dt);
            return dt;
        }
        public DataTable Get_Park_Area(string Reg_No)
        {
            if (con.State!=ConnectionState.Open) con.Open();
            cmd = new SqlCommand("Get_Park_Status", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Reg_No", Reg_No);
            DataTable dt = new DataTable();
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);
            con.Close();
            return dt;
        }
        public void Update_Action(string id,string name,string phone)
        {
            if(con.State!=ConnectionState.Open) con.Open();
            string query = "update Registration set Name=@name,Phone_Number=@phone where Person_ID=@id";
            cmd= new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@phone", phone);
            cmd.Parameters.AddWithValue("@id", id);

            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void Delete_Action(string id,string reg_no)
        {
            if (con.State != ConnectionState.Open) con.Open();
            cmd = new SqlCommand("Delete_Action", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@Reg_NO", reg_no);
            cmd.ExecuteNonQuery();
            con.Close();

        }
        public DataTable Fill(string table_name)
        {
            if(con.State!=ConnectionState.Open) con.Open();
            string query = "select Slot_Name,Status from " + table_name;
             cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            con.Close();
            ad.Fill(dt);
            return dt;
        }
        
    }
}