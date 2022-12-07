<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        #BenvenutoLabel{
            font-size:30px;
            color:red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="BenvenutoLabel" runat="server" Text=""></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Rimuovi Cookie" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
