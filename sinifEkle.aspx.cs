using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
public partial class sinifEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btEkle_Click(object sender, EventArgs e)
    {
        if (tbSinif.Text!=null && tbSinif.Text!="")
        {
            kayitEkle();
        }
        else
        {
            lbKayitYok.Text = "Sınıf ismini boş bırakmayınız";
            lbKayitYok.Visible = true;
        }
        
    }


    private void kayitEkle() {
        OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["webConnectionString"].ConnectionString); //olmalı
        OleDbCommand komut;  //olmalı
        string sorgu = "insert into sinif (adi) values (@adi)"; // uyarlanmış halde olmalı !
        komut = new OleDbCommand(sorgu, con); //olmalı
        komut.Parameters.AddWithValue("@adi", tbSinif.Text);
        con.Open();
        komut.ExecuteNonQuery();
        con.Close();
        gvSinif.DataBind();
        tbSinif.Text = ""; // aslolan null yazmak

        gvSinif.DataBind();
        lbKayitYok.Visible = false;
    }

    protected void btSil_Click(object sender, EventArgs e)
    {
        if (VarMi())
        {
        OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["webConnectionString"].ConnectionString);

        con.Open();
        String silSorgu = "DELETE FROM sinif WHERE [adi]= @sinif";
        // delete from tabloadi where adi=9A bu kod sadece 9A sınıfını siler
        OleDbCommand delcmd = new OleDbCommand();
        delcmd.CommandText = silSorgu;
        delcmd.Connection = con;
        delcmd.Parameters.AddWithValue("@sinif", tbSinif.Text);
        delcmd.ExecuteNonQuery();
        //MessageBox.Show("Customer has been successfully removed!");
        con.Close();
   
        tbSinif.Text = ""; // aslolan null yazmak
        gvSinif.DataBind();

            lbKayitYok.Visible = false;

        }
        else
        {
            lbKayitYok.Text = "Böyle bir kayıt yoktur!...";
            lbKayitYok.Visible = true;

        }




         
    }


    private bool VarMi()
    {
        OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["webConnectionString"].ConnectionString);

        con.Open();

        string dataReader = "SELECT count(*) from sinif WHERE [adi]= @adi";
       

        OleDbCommand command_reader = new OleDbCommand(dataReader, con);
        //  OleDbDataReader row_reader = command_reader.ExecuteReader();
        command_reader.Parameters.AddWithValue("@adi", tbSinif.Text);

        int kayitSayisi = (int)command_reader.ExecuteScalar();


        if (kayitSayisi > 0)

            return true;
        else return false;
      
      



    }





}