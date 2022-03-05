using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration; // olmalı !...
using System.Data;  // olmalı !... 
using System.Data.OleDb; // olmalı !... 
public partial class ogrenciEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["webConnectionString"].ConnectionString);
        string sorgu = "select adi from sinif order by id desc";

        OleDbDataAdapter da=new OleDbDataAdapter(sorgu,con);
        OleDbCommand komut;
        DataTable dt=new DataTable();

      
        komut = new OleDbCommand(sorgu, con);

         da.Fill(dt);
        ddlSinif.DataSource = dt;
        ddlSinif.DataTextField = "adi";
        ddlSinif.DataValueField = "adi";
        ddlSinif.DataBind();

      
    }

    protected void btKaydet_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["webConnectionString"].ConnectionString);
        OleDbDataAdapter da;
        OleDbCommand komut;
        DataTable dt;

        // INSERT INTO dbo.MusteriDemo (MusteriID, Ad, Soyad)   VALUES(1, 'İsmail', 'GÜRSOY');

        string sorgu = "insert into kisiler (adi, soyadi, yas, boy, cinsiyet, sinif, eposta, sifre, telefon) values  (@ad, @soyad,@yas,@boy, @cinsiyet,@sinif, @eposta,@sifre, @telefon)";
        komut = new OleDbCommand(sorgu, con);
        komut.Parameters.AddWithValue("@ad", tbIsim.Text);
        komut.Parameters.AddWithValue("@soyad", tbSoyadin.Text);
        komut.Parameters.AddWithValue("@yas", Convert.ToInt32(tbYas.Text));
        komut.Parameters.AddWithValue("@boy", Convert.ToInt32(tbBoy.Text));
        string cinsiyet;
        if (rdBayan.Checked)
            cinsiyet = "Bayan";
        else if (rdErkek.Checked) cinsiyet = "Erkek"; else cinsiyet = "Belirtilmemiş";
        komut.Parameters.AddWithValue("@cinsiyet", cinsiyet);
        komut.Parameters.AddWithValue("@sinif", ddlSinif.SelectedValue);
        komut.Parameters.AddWithValue("@eposta", tbEposta.Text);
        komut.Parameters.AddWithValue("@sifre", tbSifre.Text);
        komut.Parameters.AddWithValue("@telefon", tbTelefon.Text);
    
       // komut.Parameters.AddWithValue("@kayitTarihi", DateTime.Now);
     
        con.Open();
        komut.ExecuteNonQuery();
        con.Close();

        GridView1.DataBind();


    }
}