<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TicketStatus.aspx.cs" Inherits="KSRTC.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TICKET STATUS<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="RouteNo" HeaderText="RouteNo" SortExpression="RouteNo" />
            <asp:BoundField DataField="BusNo" HeaderText="BusNo" SortExpression="BusNo" />
            <asp:BoundField DataField="Srcdest" HeaderText="Srcdest" SortExpression="Srcdest" />
            <asp:BoundField DataField="Km" HeaderText="Km" SortExpression="Km" />
            <asp:BoundField DataField="NoPass" HeaderText="NoPass" SortExpression="NoPass" />
            <asp:BoundField DataField="Fare" HeaderText="Fare" SortExpression="Fare" />
            <asp:BoundField DataField="TotalAmt" HeaderText="TotalAmt" SortExpression="TotalAmt" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KSRTCConnectionString8 %>" SelectCommand="SELECT * FROM [TicketStatus]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
    </p>
</asp:Content>
