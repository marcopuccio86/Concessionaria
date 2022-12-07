<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dEFAULT.aspx.cs" Inherits="WebApplication1.dEFAULT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .imgAuto{
            width:300px;
        }

        td{
            padding:10px;
        }

        input 
        {
            margin-right: 8px !important;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <h1>Seleziona Auto:</h1>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" 
                        OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="form-control">
                        <asp:ListItem Value="0" Text="" />
                        <asp:ListItem Value="24550" Text="Jeep Renegade 1.6 131CV" />
                        <asp:ListItem Value="30200" Text="Jeep Compass 1.6 150CV" />
                        <asp:ListItem Value="47100" Text="Jeep Compass 1.4 190CV 4xe" />
                        <asp:ListItem Value="61000" Text="Jeep Wrangler 80 anniversario" />
                    </asp:DropDownList><br />
                </div>
                <div class="col-md-6" style="text-align: center">
                    <asp:Image ID="Image1" CssClass="imgAuto" runat="server" />
                </div>
            </div>
            <div class="row text-end">
                <p style="font-size: 30px; font-weight: bold">Prezzo di partenza:
                    <asp:Label ID="PrezzoPartenza" Visible="false" runat="server" Text=""></asp:Label></p>
            </div>
            <hr />
            <div class="row">
                <h2>Optional</h2>
                <div class="col-md-12">
                    <asp:CheckBoxList ID="CheckBoxList1" RepeatDirection="Horizontal" RepeatColumns="3" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Vernice m. (+ 330,00)" Value="330"></asp:ListItem>
                        <asp:ListItem Text="Fari XENO (+ 180,00)" Value="180"></asp:ListItem>
                        <asp:ListItem Text="Sistema navigazione (+ 1.800,00)" Value="1800"></asp:ListItem>
                        <asp:ListItem Text="Line Assist (+ 2.000,00)" Value="2000"></asp:ListItem>
                        <asp:ListItem Text="Ruota di scorta (+ 155,00)" Value="155"></asp:ListItem>
                        <asp:ListItem Text="Sedili/Volante in pelle (+ 700,00)" Value="700"></asp:ListItem>
                    </asp:CheckBoxList>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-6">
                    <h2>Garanzia</h2>
                    Numero anni di garanzia (€ 120,00 cad):
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" CssClass="form-control">
                <asp:ListItem Text="1 anno" Value="1"></asp:ListItem>
                <asp:ListItem Text="2 anni" Value="2"></asp:ListItem>
                <asp:ListItem Text="3 anni" Value="3"></asp:ListItem>
                <asp:ListItem Text="4 anni" Value="4"></asp:ListItem>
            </asp:DropDownList>
                    <br />
                </div>
            </div>
            <hr />
            <br />
            <br />
            <div style="display:flex;justify-content:space-around">
                <div>
                       <asp:Button ID="Button1" runat="server" Text="Calcola Preventivo" OnClick="Button1_Click" CssClass="btn btn-primary"/>
                </div>
                <div class="alert alert-info">
                        Totale Modello:
                        <asp:Label ID="lblTotAuto" runat="server" Text=""></asp:Label><br />
                        Totale Optional:
                        <asp:Label ID="lblTotOptional" runat="server" Text=""></asp:Label><br />
                        Totale Garanzia:
                        <asp:Label ID="lblGaranziaCosto" runat="server" Text=""></asp:Label><br />
                        
                        <strong>Totale Complessivo:
                        <asp:Label ID="TOTALE" runat="server" Text=""></asp:Label></strong><br />
                    </div>
            </div>
            <hr />
        </div>
    </form>
</body>
</html>
