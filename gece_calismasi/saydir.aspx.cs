using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;

public partial class gece_calismasi_saydir : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    int kac;
    protected void btArttir_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["webConnectionString"].ConnectionString);
        con.Open();
        string sorgu = "select * from sayac where id=1";
        OleDbCommand komut;
        komut = new OleDbCommand(sorgu, con);
        OleDbDataReader reader = komut.ExecuteReader();

        if (reader.Read())
        {
            kac = Convert.ToInt32(reader["kac"]);

        }


        kac++;
        con.Close();

        con.Open();
   
        komut = new OleDbCommand("update sayac set kac= " + kac.ToString() , con);

        komut.ExecuteNonQuery();

        con.Close();
        lbSonuc.Text = kac.ToString();

    }

    protected void btEksilt_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["webConnectionString"].ConnectionString);
        con.Open();
        string sorgu = "select * from sayac";
        OleDbCommand komut;
        komut = new OleDbCommand(sorgu, con);
        OleDbDataReader reader = komut.ExecuteReader();

        if (reader.Read())
        {
            kac = Convert.ToInt32(reader["kac"]);

        }


        kac--;
        if (kac<=0)
        {
            kac = 1;
        }
        con.Close();

        con.Open();

        komut = new OleDbCommand("update sayac set kac= " + kac.ToString(), con);

        komut.ExecuteNonQuery();

        con.Close();

        lbSonuc.Text = kac.ToString();

    }
}