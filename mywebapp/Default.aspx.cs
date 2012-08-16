using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using net.webservicex.www;




public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("<p> Added from server...</p>");
        
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        double strRate;
        string str;
       
        CurrencyConvertor ccv = new CurrencyConvertor();
        strRate=ccv.ConversionRate(Currency.USD,Currency.INR);
        str = strRate.ToString();
        TextBox1.Text = str;
    }
}
