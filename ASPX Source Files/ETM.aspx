<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ETM.aspx.cs" Inherits="KSRTC.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            height: 354px;
        }
        .auto-style4 {
            width: 374px;
        }
        .auto-style5 {
            width: 468px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3" style="background-color: #CC9900">
        <tr>
            <td colspan="2" style="border-width: thin; border-style: solid">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink8" runat="server" Font-Bold="True" Font-Size="X-Large">ELECTRONIC TICKETING MACHINE</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; border-style: solid; background-color: #FFFFFF;" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4" style="border-width: thin; border-style: solid; background-color: #FFFFFF;">Source-Destination Station</td>
            <td class="auto-style5" style="border-width: thin; border-style: solid; background-color: #FFFFFF;">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="126px" Width="369px" DataSourceID="SqlDataSource1" DataTextField="Source_Station" DataValueField="Source_Station">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="border-width: thin; border-style: solid; background-color: #FFFFFF;">Kilometers</td>
            <td class="auto-style5" style="border-width: thin; border-style: solid; background-color: #FFFFFF;">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="border-width: thin; border-style: solid; background-color: #FFFFFF;">Number of&nbsp; Passangers</td>
            <td class="auto-style5" style="border-width: thin; border-style: solid; background-color: #FFFFFF;">
                <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="358px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="border-width: thin; border-style: solid; background-color: #FFFFFF;">Fare</td>
            <td class="auto-style5" style="border-width: thin; border-style: solid; background-color: #FFFFFF;">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; border-style: solid; background-color: #FFFFFF;" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generate Ticket" BackColor="#CC9900" Font-Size="Medium" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="border-color: #CC9900; background-color: #FFFFFF">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
