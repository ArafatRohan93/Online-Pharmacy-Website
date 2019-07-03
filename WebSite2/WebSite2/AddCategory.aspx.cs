﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
            if (!IsPostBack)
            {
                BindBrandsRptr();
            }
    }
   

        private void BindBrandsRptr()
        {
            String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblCatagories ", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtBrands = new DataTable();
                        sda.Fill(dtBrands);
                        rptrBrands.DataSource = dtBrands;
                        rptrBrands.DataBind();
                    }
                }
            }
        }



        protected void btnAddCategory_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("insert into tblCatagories values('" + txtCategoryName.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            txtCategoryName.Text = string.Empty;
        }
        BindBrandsRptr();
    }
}