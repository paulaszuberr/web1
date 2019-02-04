using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class confirm_order : System.Web.UI.Page
{
    private Hashtable cart = new Hashtable();
    protected void Page_Load(object sender, EventArgs e)
    {

        if ((Hashtable)Session["cart"] != null)
            cart = (Hashtable)Session["cart"];

        if (cart.Count < 1)
        {
            cartEmptyLabel.Visible = true;
            promptLabel.Visible = false;
            LabelConfirm.Visible = false;
            returnLink.Visible = false;
        }
        else
        {

            serviceLocationList.Visible = true;
            LabelCart.Visible = true;
            LabelTotalPrice.Visible = true;
            LabelSummary.Visible = true;
            LabelConfirm.Enabled = true;
            LabelTotal.Visible = true;
            string service = serviceLocationList.SelectedValue;

            cart = (Hashtable)Session["cart"];
            LabelCart.Text = "";
            double totalPrice = 0;
            double servicePrice = 0;
            foreach (DictionaryEntry de in cart)
            {
                LabelCart.Text += de.Key.ToString() + "<br>";

                int price = 0;
                Int32.TryParse((string)de.Value, out price);
                totalPrice += (double)price;
            }
            servicePrice += totalPrice;

            int serviceValue = 0;
            Int32.TryParse(service, out serviceValue);
            servicePrice += (double)serviceValue;

            LabelTotalPrice.Text = "Suma: " + totalPrice.ToString() + " zł";
            LabelTotal.Text = "Całkowita wartość zamówienia: " + servicePrice.ToString() + " zł";
            Session["totalPrice"] = servicePrice;

        }

    }

}