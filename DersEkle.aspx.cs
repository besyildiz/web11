using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
public partial class DersEkle : System.Web.UI.Page
{
    protected void btKaydet_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["webConnectionString"].ConnectionString); //olmalı
        OleDbCommand komut;  //olmalı
        string sorgu = "insert into dersler (adi) values (@adi)"; // uyarlanmış halde olmalı !
        komut = new OleDbCommand(sorgu, con); //olmalı
        komut.Parameters.AddWithValue("@adi", tbDersAdi.Text);
   con.Open();
        komut.ExecuteNonQuery();
        con.Close();
        gv1.DataBind();
        tbDersAdi.Text = ""; // aslolan null yazmak
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}