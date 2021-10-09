<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentAccountForm.aspx.cs" Inherits="ReviewMidtermASpDotNet.GUI.StudentAccountForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 496px;
            width: 855px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 50px;
            width: 235px;
        }
        .auto-style4 {
            height: 50px;
            text-align: center;
            width: 435px;
        }
        .auto-style5 {
            height: 42px;
        }
        .auto-style6 {
            height: 42px;
            text-align: center;
            width: 435px;
        }
        .auto-style7 {
            text-align: center;
            width: 435px;
        }
        .auto-style8 {
            height: 124px;
        }
        .auto-style9 {
            height: 50px;
            text-align: right;
        }
        .auto-style10 {
            height: 42px;
            width: 235px;
        }
        .auto-style11 {
            width: 235px;
        }
        .auto-style12 {
            height: 124px;
            width: 235px;
        }
        .auto-style13 {
            margin-left: 0px;
        }
        .auto-style14 {
            height: 124px;
            width: 435px;
        }
        .auto-style15 {
            width: 435px;
        }
    </style>
</head>
<body style ="background-color:rosybrown">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">
                        <asp:Label ID="lblTitle" runat="server" BackColor="#FFFF99" Font-Bold="True" Font-Size="Larger" Text="Student Projects Form"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:Button ID="btnLogOut" runat="server" BorderColor="Red" BorderStyle="Ridge" Font-Bold="True" Font-Size="Medium" OnClick="btnLogOut_Click" Text="Log Out" Width="98px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style6">
                        <asp:Label ID="lblStudUser" runat="server" BorderColor="#0066FF" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" Width="320px"></asp:Label>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="btnListProjects" runat="server" BorderColor="Red" BorderStyle="Ridge" Font-Bold="True" Font-Size="Medium" OnClick="btnListProjects_Click" Text="List Projects" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style14">
                        <asp:GridView ID="GridViewListProjects" runat="server" CssClass="auto-style13" Width="510px">
                        </asp:GridView>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
