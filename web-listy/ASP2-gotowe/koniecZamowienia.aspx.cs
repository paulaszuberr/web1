using System;

using System.Web.UI.WebControls;

public partial class koniecZamowienia : System.Web.UI.Page
{
    double totalPrice;

    protected void Page_Load(object sender, EventArgs e)
    {

        totalPrice = (double)Session["totalPrice"];

        LabelInfo.Text += totalPrice + "zl.";

        Session.Clear();
    }
}