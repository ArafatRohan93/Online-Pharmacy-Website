using System;
using System.Data;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class AddProduct : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            BindBrand();
            BindTypes();
            BindGeneric();
        }
    }

    private void BindGeneric()
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from tblGeneric ", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtGens = new DataTable();
                    sda.Fill(dtGens);
                    if (dtGens.Rows.Count != 0)
                    {
                        ddlPGeneric.DataSource = dtGens;
                        ddlPGeneric.DataTextField = "GenName";
                        ddlPGeneric.DataValueField = "GenID";
                        ddlPGeneric.DataBind();
                        ddlPGeneric.Items.Insert(0, new ListItem("-Select-", "0"));

                    }
                }
            }
        }
    }

    private void BindTypes()
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from tblCatagories ", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtTypes = new DataTable();
                    sda.Fill(dtTypes);
                    if (dtTypes.Rows.Count != 0)
                    {
                        ddlTypes.DataSource = dtTypes;
                        ddlTypes.DataTextField = "CatName";
                        ddlTypes.DataValueField = "CatID";
                        ddlTypes.DataBind();
                        ddlTypes.Items.Insert(0, new ListItem("-Select-", "0"));

                    }
                }
            }
        }
    }

    private void BindBrand()
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from tblBrands ", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtBrands = new DataTable();
                    sda.Fill(dtBrands);
                     if(dtBrands.Rows.Count!=0)
                    {
                        ddlBrands.DataSource = dtBrands;
                        ddlBrands.DataTextField = "Name";
                        ddlBrands.DataValueField = "BrandID";
                        ddlBrands.DataBind();
                        ddlBrands.Items.Insert(0, new ListItem("-Select-", "0"));
                        
                    }
                }
            }
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("procInsertProducts",con);
            cmd.CommandType = CommandType.StoredProcedure;

            //------------DropDowns And TextBoxes----------------------

            cmd.Parameters.AddWithValue("@PName", txtPName.Text);
            cmd.Parameters.AddWithValue("@PPrice", txtPUPrice.Text);
            cmd.Parameters.AddWithValue("@PBrandID", ddlBrands.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PCategoryID",ddlTypes.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PSize", txtPSize.Text);
            cmd.Parameters.AddWithValue("@PGenericID", ddlPGeneric.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PDescription", txtPDescription.Text);
          
            //-------------------CheckBox------------------------------

            if (cbFD.Checked == true)
            {
                cmd.Parameters.AddWithValue("@FreeDelivery", 1.ToString());

            }
            else
            {
                cmd.Parameters.AddWithValue("@FreeDelivery", 0.ToString());

            }

            if (cb5Ret.Checked == true)
            {
                cmd.Parameters.AddWithValue("@5DaysRet", 1.ToString());

            }
            else
            {
                cmd.Parameters.AddWithValue("@5DaysRet", 0.ToString());

            }

            if (cbCOD.Checked == true)
            {
                cmd.Parameters.AddWithValue("@COD", 1.ToString());

            }
            else
            {
                cmd.Parameters.AddWithValue("@COD", 0.ToString());

            }
            con.Open();
            Int64 PID =Convert.ToInt64(cmd.ExecuteScalar());

            //add images

        if(fuImg01.HasFile)
            {
                string SavePath = Server.MapPath("~/Images/ProductImages/")+PID;
                if(!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extension = Path.GetExtension(fuImg01.PostedFile.FileName);
                fuImg01.SaveAs(SavePath + "\\" + txtPName.Text.ToString().Trim() + "01"+Extension);

                SqlCommand cmd2 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtPName.Text.ToString().Trim() + "01" + "','" + Extension + "')", con);
                cmd2.ExecuteNonQuery();
            }

        }
    }
}