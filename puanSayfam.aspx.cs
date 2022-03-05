using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class puanSayfam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dersleriYukle();
        }
    }

    string ogrenciAdi, ogrenciSoyadi,ogrenciSinifi;
    int ogrenciNumarasi;
    private void ogrenciBilgileriniGetir()
    {
        OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["webConnectionString"].ConnectionString);
        con.Open();
        string sorgu = "select * from kisiler where ogrenciNo=" + tbOgrenciNumarasi.Text ;
        OleDbCommand komut;
        komut = new OleDbCommand(sorgu, con);
        OleDbDataReader reader = komut.ExecuteReader();

        if (reader.Read())
        {
            ogrenciAdi = reader["adi"].ToString();
            ogrenciSoyadi = reader["soyadi"].ToString();
            ogrenciSinifi = reader["sinif"].ToString();
            ogrenciNumarasi = Convert.ToInt32(reader["ogrenciNo"]);
            
        }

    }


    private void dersleriYukle()
    {

        OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["webConnectionString"].ConnectionString);
        string sorgu = "select adi from dersler order by  adi";

        OleDbDataAdapter da = new OleDbDataAdapter(sorgu, con);
        OleDbCommand komut;
        DataTable dt = new DataTable();


        komut = new OleDbCommand(sorgu, con);

        da.Fill(dt);
        ddlDers.DataSource = dt;
        ddlDers.DataTextField = "adi";
        ddlDers.DataValueField = "adi";
        ddlDers.DataBind();


    }



    private void bilgileriGetir()
    {
        OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["webConnectionString"].ConnectionString);
        con.Open();
        string sorgu = "select * from puanlar where ogrNo=" + tbOgrenciNumarasi.Text + " and dersinAdi='"+ddlDers.SelectedValue+"'";
        OleDbCommand komut;
        komut = new OleDbCommand(sorgu, con);
        OleDbDataReader reader = komut.ExecuteReader();

        if (reader.Read())
        {
            tbY1.Text = reader["s1"].ToString();
            tbY2.Text = reader["s2"].ToString();
            tbY3.Text = reader["s3"].ToString();
            tbP1.Text = reader["p1"].ToString();
            tbP2.Text = reader["p2"].ToString();
            tbP3.Text = reader["p3"].ToString();

            pnBilgiler.Visible = true;
        }
        else
        {
            pnBilgiler.Visible = false;
            kayitEkle();
            bilgileriGetir();
            con.Close();
            reader.Close();

        }
        con.Close();
        reader.Close();
    }
    private void kayitEkle()
    {
        ogrenciBilgileriniGetir();

        OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["webConnectionString"].ConnectionString);
        OleDbDataAdapter da;
        OleDbCommand komut;
        DataTable dt;
 
        string sorgu = "insert into puanlar (ogrNo,adi, soyadi, sinifi, dersinAdi) values  (@ogrNo,@adi, @soyadi,@sinifi,@dersinAdi)";
        komut = new OleDbCommand(sorgu, con);
        komut.Parameters.AddWithValue("@ogrno", Convert.ToInt32(ogrenciNumarasi));
        komut.Parameters.AddWithValue("@adi", ogrenciAdi);
        komut.Parameters.AddWithValue("@soyadi", ogrenciSoyadi);
        
        komut.Parameters.AddWithValue("@sinifi", ogrenciSinifi);
        
        komut.Parameters.AddWithValue("@dersinAdi", ddlDers.SelectedValue);
  
        con.Open();
        komut.ExecuteNonQuery();
        con.Close();

    }


    protected void btGetir_Click(object sender, EventArgs e)
    {
        bilgileriGetir();
    }

    protected void btPuanKaydet_Click(object sender, EventArgs e)
    { 
        OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["webConnectionString"].ConnectionString);
        con.Open();
        OleDbCommand komut;

        if (Convert.ToInt32(tbY1.Text)>100  || Convert.ToInt32(tbY1.Text) <  0)
        {
            lbHata.Visible = true;
        }
        else
        {
            komut = new OleDbCommand("update puanlar set s1= '" + tbY1.Text + "', s2= " + 
                tbY2.Text + " , s3=' " + tbY3.Text + "', p1=' " + tbP1.Text + "', p2=' " + 
                tbP2.Text + "', p3=' " + tbP3.Text + "'where ogrNo=" + tbOgrenciNumarasi.Text +
                " and dersinAdi='" + ddlDers.SelectedValue + "'", con);

            komut.ExecuteNonQuery();
            lbHata.Visible = false;
        }




    }
}