<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Conductor.aspx.cs" Inherits="KSRTC.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 115%;
            height: 639px;
        }
        .auto-style4 {
            height: 495px;
        }
        .auto-style5 {
            margin-left: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3" style="background-image: url('prgimg3.jpeg')">
        <tr>
            <td class="auto-style4" style="background-image: url('prgimg3.jpeg'); width: 384px; height: 224px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink8" runat="server" Font-Bold="True" Font-Size="XX-Large">Conductor Page</asp:HyperLink>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#CC9900" Font-Size="Large" Height="58px" Text="Ticket Generation" Width="257px" OnClick="Button1_Click" />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#CC9900" CssClass="auto-style5" Font-Size="Large" Height="55px" Text="Report" Width="255px" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
