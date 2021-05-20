using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace prjShoppingArena
{
    public partial class Payment : System.Web.UI.Page
    {
        public static string conStr = "Data Source=.;Initial Catalog=ShoppingArenaDB;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                if (!IsPostBack)
                {
                    BindPriceData();
                }
            }
            else
            {
                Response.Redirect("~/SignIn.aspx");
            }
        }
    
        private void BindPriceData()
        {
            if (Request.Cookies["CartPID"] != null)
            {
                DataTable dt = new DataTable();
                string CookieData = Request.Cookies["CartPID"].Value.Split('=')[1];

                string[] CookieDataArray = CookieData.Split(',');

                if (CookieDataArray.Length > 0)
                {
                   
                    Int64 CartTotal = 0;
                    Int64 Total = 0;
                    for (int i = 0; i < CookieDataArray.Length; i++)
                    {
                        string pId = CookieDataArray[i].ToString().Split('-')[0];
                        string sizeID = CookieDataArray[i].ToString().Split('-')[1];

                        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=ShoppingArenaDB;Integrated Security=True");

                        string sql;
                        sql = "select A.*,dbo.getSizeName(" + sizeID + ") as SizeNamee, " + sizeID + " as SizeIDD, SizeData.Name,SizeData.Extension  from tblProducts A cross apply(select top 1 B.Name,Extension from tblProductImages B where B.Pid=A.PId ) SizeData where A.PId='" + pId + "'";
                        SqlCommand cmd = new SqlCommand(sql, con);

                        SqlDataAdapter sda = new SqlDataAdapter(cmd);


                        sda.Fill(dt);

                        CartTotal += Convert.ToInt64(dt.Rows[i]["PPrice"]);
                        Total += Convert.ToInt64(dt.Rows[i]["PSelPrice"]);

                    }
                  

                    spanCartTotal.InnerText = CartTotal.ToString();

                    spanTotal.InnerText = "$ " + Total.ToString();
                    spanDiscount.InnerText = "-" + (CartTotal - Total).ToString();


                    //hdCartAmount.Value = CartTotal.ToString();
                    //hdCartDiscount.Value = (CartTotal - Total).ToString();
                    //hdTotalPayed.Value = Total.ToString();
                }
                else
                {
                    Response.Redirect("ViewAllProducts.aspx");
                }

            }
            else
            {
                Response.Redirect("ViewAllProducts.aspx");

            }
        }
    }
}