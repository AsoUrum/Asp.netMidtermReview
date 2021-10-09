<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ReviewMidtermASpDotNet.GUI.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 268px;
        }
        .auto-style4 {
            width: 352px;
        }
        .auto-style5 {
            height: 268px;
            width: 352px;
        }
        .auto-style6 {
            width: 445px;
        }
        .auto-style7 {
            height: 268px;
            width: 445px;
            text-align: left;
        }
        .auto-style8 {
            position: absolute;
            top: 105px;
            left: 465px;
            z-index: 1;
            width: 190px;
            height: 34px;
            margin-left: 46px;
        }
        .auto-style9 {
            position: absolute;
            top: 178px;
            left: 464px;
            z-index: 1;
            width: 190px;
            height: 39px;
            margin-left: 46px;
        }
        .auto-style10 {
            position: absolute;
            top: 266px;
            left: 376px;
            z-index: 1;
            height: 38px;
        }
        .auto-style11 {
            position: absolute;
            left: 599px;
            top: 266px;
            z-index: 1;
            height: 36px;
        }
    </style>
</head>
<body style="height: 324px; background-color:darkkhaki" >
    <form id="form1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style7" style=" background-color:burlywood">
                    <asp:Label ID="lblUserID" runat="server" Text="User ID:" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <asp:TextBox ID="txtUserID" runat="server" CssClass="auto-style8"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="lblPassword" runat="server" Text="Password:" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style9"></asp:TextBox>
                    <br />
                    <asp:Button ID="btnLogin" runat="server" CssClass="auto-style10" OnClick="btnLogin_Click" Text="Teacher LogIn" Font-Bold="True" Font-Size="Medium" />
                    <asp:Button ID="btnStudentLogIn" runat="server" Text=" Student LogIn" CssClass="auto-style11" OnClick="btnStudentLogIn_Click" Font-Bold="True" Font-Size="Medium" />
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
