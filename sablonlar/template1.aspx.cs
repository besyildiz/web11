using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.OleDb;

public partial class sablonlar_template1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btKaydet_Click(object sender, EventArgs e)
    {
        //  Response.Write("Hoşgeldin " + tbIsim.Text);

        OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["webConnectionString"].ConnectionString); //olmalı
        OleDbCommand komut;  //olmalı
        string sorgu = "insert into iletisim (isim, mesaj,eposta) values (@isim, @mesaj,@eposta)"; // uyarlanmış halde olmalı !
        komut = new OleDbCommand(sorgu, con); //olmalı
        komut.Parameters.AddWithValue("@isim", tbIsim.Text);
        komut.Parameters.AddWithValue("@mesaj", tbMesaj.Text);
        komut.Parameters.AddWithValue("@eposta", tbEposta.Text);

        con.Open();
        komut.ExecuteNonQuery();
        con.Close();
       
       





    }
}