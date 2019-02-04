using System;
using System.Collections;
using System.Web.UI.WebControls;


public partial class oferta : System.Web.UI.Page
{
    private Hashtable expertsAdvice = new Hashtable();
    private Hashtable hardwareSwap = new Hashtable();
    private Hashtable softwareInstallment = new Hashtable();
    private Hashtable items = null;
    private CheckBoxList currCBL = null;
    private Hashtable cart = new Hashtable();


    protected void Page_Load(object sender, EventArgs e)
    {
        expertsAdvice.Add("Coś tam - 5 zł", 5);
        expertsAdvice.Add("Coś tam - 4 zł", 4);
        expertsAdvice.Add("Coś tam - 3 zł", 3);
        expertsAdvice.Add("Coś tam - 2 zł", 2);
        expertsAdvice.Add("Coś tam - 1 zł", 1);


        hardwareSwap.Add("Inne Coś tam - 5 zł", 5);
        hardwareSwap.Add("Inne Coś tam - 4 zł", 4);
        hardwareSwap.Add("Inne Coś tam - 3 zł", 3);
        hardwareSwap.Add("Inne Coś tam - 2 zł", 2);
        hardwareSwap.Add("Inne Coś tam - 1 zł", 1);



        softwareInstallment.Add("Jeszcze Inne Coś tam - 5 zł", 5);
        softwareInstallment.Add("Jeszcze Inne Coś tam - 4 zł", 4);
        softwareInstallment.Add("Jeszcze Inne Coś tam - 3 zł", 3);
        softwareInstallment.Add("Jeszcze Inne Coś tam - 2 zł", 2);
        softwareInstallment.Add("Jeszcze Inne Coś tam - 1 zł", 1);


        if (IsPostBack)
        {
            if ((Hashtable)Session["cart"] != null)
                cart = (Hashtable)Session["cart"];

            if (cart.Count > 0)
                orderLabel.Visible = true;
            else
                orderLabel.Visible = false;


            cartLabel.Text = "Liczba produktow w koszyku: " + cart.Count.ToString();
            double totalPrice = 0;
            foreach (DictionaryEntry de in cart)
            {
                int x = 0;
                Int32.TryParse((string)de.Value, out x);
                totalPrice += (double)x;
            }
            cartLabel.Text += ", suma: " + totalPrice.ToString() + "zl";

            if (serviceTypeList.SelectedItem != null)
            {
                responseLabel.Text = "<h4>Wybrano " +
                   serviceTypeList.SelectedItem.Text + "</h4>";



                if (serviceTypeList.SelectedValue == "0")
                {
                    items = expertsAdvice;
                    checkboxList0.Visible = true;
                    checkboxList1.Visible = false;
                    checkboxList2.Visible = false;
                    currCBL = checkboxList0;
                }
                else if (serviceTypeList.SelectedValue == "1")
                {
                    items = hardwareSwap;
                    checkboxList0.Visible = false;
                    checkboxList1.Visible = true;
                    checkboxList2.Visible = false;
                    currCBL = checkboxList1;
                }
                else if (serviceTypeList.SelectedValue == "2")
                {
                    items = softwareInstallment;
                    checkboxList0.Visible = false;
                    checkboxList1.Visible = false;
                    checkboxList2.Visible = true;
                    currCBL = checkboxList2;
                }

                responseLabel.Visible = true;
                cartLabel.Visible = true;
            }
            else
                responseLabel.Text = "Nie wybrano kategorii.";


        }
        else
        {
            if ((Hashtable)Session["cart"] != null)
                cart = (Hashtable)Session["cart"];


            for (int i = 0; i < checkboxList0.Items.Count; i++)
            {
                foreach (DictionaryEntry de in cart)
                {
                    if (checkboxList0.Items[i].Text == de.Key)
                        checkboxList0.Items[i].Selected = true;
                }

            }

            for (int i = 0; i < checkboxList1.Items.Count; i++)
            {
                foreach (DictionaryEntry de in cart)
                {
                    if (checkboxList1.Items[i].Text == de.Key)
                        checkboxList1.Items[i].Selected = true;
                }

            }

            for (int i = 0; i < checkboxList2.Items.Count; i++)
            {
                foreach (DictionaryEntry de in cart)
                {
                    if (checkboxList2.Items[i].Text == de.Key)
                        checkboxList2.Items[i].Selected = true;
                }

            }
        }
    }

    protected void submitButton_Click(object sender, EventArgs e)
    {

        if (serviceTypeList.SelectedItem != null)
            Session.Add(serviceTypeList.SelectedItem.Text,
               serviceTypeList.SelectedItem.Value);
    }

    protected void CartAdd(object sender, EventArgs e)
    {

        for (int i = 0; i < currCBL.Items.Count; i++)
        {
            if (currCBL.Items[i].Selected)
            {
                if (cart[currCBL.Items[i].Text] == null)
                    //items[currCBL.Items[i].Text]
                    cart.Add(currCBL.Items[i].Text, currCBL.Items[i].Value);
            }
            else
            {
                if (cart[currCBL.Items[i].Text] != null)
                    cart.Remove(currCBL.Items[i].Text);
            }
        }
        cartLabel.Text = "Liczba produktow w koszyku: " + cart.Count.ToString();

        if (cart.Count > 0)
            orderLabel.Visible = true;
        else
            orderLabel.Visible = false;


        double totalPrice = 0;
        foreach (DictionaryEntry de in cart)
        {
            //totalPrice += (int)de.Value;
            int x = 0;
            Int32.TryParse((string)de.Value, out x);
            totalPrice += (double)x;
        }
        cartLabel.Text += ", suma: " + totalPrice.ToString() + "zl";
        Session["cart"] = cart;
    }
}