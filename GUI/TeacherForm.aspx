<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherForm.aspx.cs" Inherits="ReviewMidtermASpDotNet.GUI.TeacherForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 578px;
        }
        .auto-style2 {
            width: 98%;
            height: 277px;
        }
        .auto-style6 {
            text-align: center;
            width: 405px;
        }
        .auto-style7 {
            width: 375px;
            text-align: center;
        }
        .auto-style8 {
            width: 375px;
            height: 49px;
            text-align: center;
        }
        .auto-style9 {
            width: 203px;
            height: 49px;
        }
        .auto-style10 {
            height: 49px;
            text-align: center;
            width: 405px;
        }
        .auto-style11 {
            width: 375px;
            height: 31px;
        }
        .auto-style12 {
            width: 203px;
            height: 31px;
            text-align: center;
        }
        .auto-style13 {
            height: 31px;
            width: 405px;
        }
        .auto-style16 {
            height: 24px;
            width: 405px;
        }
        .auto-style18 {
            width: 203px;
        }
        .auto-style19 {
            width: 203px;
            height: 24px;
        }
        .auto-style20 {
            width: 375px;
        }
        .auto-style21 {
            width: 375px;
            height: 24px;
        }
        .auto-style22 {
            width: 405px;
        }
        .auto-style23 {
            text-align: center;
        }
        .auto-style24 {
            margin-bottom: 0px;
        }
        .auto-style25 {
            height: 24px;
        }
    </style>
</head>
<body style =" background-color:lightskyblue">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style23" colspan="2">
                        <asp:Label ID="lblTeacherForm" runat="server" Font-Bold="True" Font-Size="Larger" Text="Teachers Form" Width="200px"></asp:Label>
                    </td>
                    <td class="auto-style22">
                        <asp:Button ID="btnLogOut" runat="server" Font-Bold="True" Font-Size="Medium" OnClick="btnLogOut_Click" Text="Log Out" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style23" colspan="2">
                        <asp:Label ID="lblUser" runat="server" BorderStyle="Solid" Font-Bold="True" Font-Size="Larger" Width="262px" BackColor="#9999FF"></asp:Label>
                    </td>
                    <td class="auto-style22">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style18">
                        <asp:Label ID="lblSelectStudent" runat="server" Font-Bold="True" Text="Select Student" Font-Size="Larger"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="lblSelectProject" runat="server" Font-Bold="True" Text="Select  Project " Font-Size="Larger"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="dpdSelectStuds" runat="server" Height="30px" Width="300px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="dpdSelectProj" runat="server" Height="30px" Width="306px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style18">
                        <asp:Label ID="lblAssignDate" runat="server" Font-Bold="True" Text="Assigned Date" Font-Size="Larger"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="lblSubmittedDate" runat="server" Font-Bold="True" Text="Submitted Date" Font-Size="Larger"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtAssignedDate" runat="server" Height="30px" Width="300px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtSubmittedDate" runat="server" Height="30px" Width="300px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style12">
                        &nbsp;</td>
                    <td class="auto-style13"></td>
                    <td class="auto-style13">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style19">
                        <asp:Button ID="btnAssignProject" runat="server" Font-Bold="True" Font-Size="Medium" Text="Assign Project" Width="163px" OnClick="btnAssignProject_Click" />
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="btnListStudents" runat="server" CssClass="auto-style24" Font-Bold="True" Font-Size="Medium" OnClick="btnListStudents_Click" Text="List Students  Assign  to Projects" Width="320px" />
                    </td>
                    <td class="auto-style16">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style25" colspan="2">
                        <asp:GridView ID="GridViewListStudents" runat="server" Width="655px">
                        </asp:GridView>
                    </td>
                    <td class="auto-style16">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
