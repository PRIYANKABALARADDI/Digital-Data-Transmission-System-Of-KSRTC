<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Route.aspx.cs" Inherits="KSRTC.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 177px;
        }
        .auto-style4 {
            width: 177px;
            height: 33px;
        }
        .auto-style5 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style3">Route No.</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="308px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="RouteNo" DataValueField="RouteNo">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KSRTCConnectionString6 %>" SelectCommand="SELECT [RouteNo] FROM [RouteNo]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Bus No.</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="BusNo" DataValueField="BusNo">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:KSRTCConnectionString7 %>" SelectCommand="SELECT [BusNo] FROM [BusNo]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style5">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Next" />
        </td>
    </tr>
</table>
</asp:Content>
