using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class gece_calismasi_sayfam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btEkle_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["webConnectionString"].ConnectionString);
  
        OleDbCommand komut;
   

        string sorgu = "insert into gece_calismasi_tablosu (isim) values  (@isim)";

        komut = new OleDbCommand(sorgu, con);

        komut.Parameters.AddWithValue("@isim", tbIsim.Text);  

        con.Open();
        komut.ExecuteNonQuery();
        con.Close();
    }

    protected void btSil_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["webConnectionString"].ConnectionString);

        con.Open();
        String silSorgu = "DELETE FROM gece_calismasi_tablosu WHERE [isim]= @isim";
        OleDbCommand delcmd = new OleDbCommand();
        delcmd.CommandText = silSorgu;
        delcmd.Connection = con;
        delcmd.Parameters.AddWithValue("@isim", tbIsim.Text);
        delcmd.ExecuteNonQuery(); 
        con.Close();
    }

    protected void btGuncellestir_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["webConnectionString"].ConnectionString);
        con.Open();
        OleDbCommand komut;
        komut = new OleDbCommand("update gece_calismasi_tablosu set isim= '" + tbIsimYeni.Text  + "'where isim='" + tbIsim.Text + "'", con);

        komut.ExecuteNonQuery();
    }

    protected void btKacTaneKayitVar_Click(object sender, EventArgs e)
    {
        OleDbConnection conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["webConnectionString"].ConnectionString);

        conn.Open();

        string dataReader = "SELECT count(*) from gece_calismasi_tablosu  ";


        OleDbCommand command_reader = new OleDbCommand(dataReader, conn);
       

        int kayitSayisi = (int)command_reader.ExecuteScalar();

        btKacTaneKayitVar.Text = kayitSayisi.ToString();
    }
}