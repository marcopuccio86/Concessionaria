using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class dEFAULT : System.Web.UI.Page
    {

        protected void Button1_Click(object sender, EventArgs e)
        {
            double prezzoAuto = Convert.ToDouble( DropDownList1.SelectedValue);

            double accessori = 0;
            double totale = 0;
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    accessori +=Convert.ToDouble( CheckBoxList1.Items[i].Value);
                }
            }

            int anniGaranzia = Convert.ToInt32(DropDownList2.SelectedValue);
            int totaleCostoGaranzia = anniGaranzia * 120;
         
            totale = prezzoAuto + accessori+ totaleCostoGaranzia;

            lblTotAuto.Text = prezzoAuto.ToString("c");
            lblTotOptional.Text = accessori.ToString("c");
            lblGaranziaCosto.Text = totaleCostoGaranzia.ToString("c");
            TOTALE.Text = totale.ToString("c");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string autoSelezionata = DropDownList1.SelectedItem.Text;
            double autoSelezionatoCosto = Convert.ToDouble( DropDownList1.SelectedValue);
            if (autoSelezionata== "Jeep Renegade 1.6 131CV")
            {
                Image1.ImageUrl = "~/img/jeep_renegade.png";
            } else if (autoSelezionata == "Jeep Compass 1.6 150CV")
            {
                Image1.ImageUrl = "~/img/jeep_compass.png";
            }
            else if (autoSelezionata == "Jeep Compass 1.4 190CV 4xe")
            {
                Image1.ImageUrl = "~/img/jeep_compass_4xe.png";
            }
            else if (autoSelezionata == "Jeep Wrangler 80 anniversario")
            {
                Image1.ImageUrl = "~/img/jeep_wrangler.png";
            }
            PrezzoPartenza.Visible = true;
            PrezzoPartenza.Text = autoSelezionatoCosto.ToString("c");
        }

    }
}