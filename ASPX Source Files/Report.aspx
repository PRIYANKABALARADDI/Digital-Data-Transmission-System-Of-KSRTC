<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="KSRTC.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp; TICKET REPORT &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="BusNo" DataValueField="BusNo" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KSRTCConnectionString9 %>" SelectCommand="SELECT [BusNo] FROM [BusNo]"></asp:SqlDataSource>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:KSRTCConnectionString10 %>" SelectCommand="SELECT * FROM [TicketStatus] WHERE ([BusNo] = @BusNo)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="BusNo" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" Width="86px" />
</p>
</asp:Content>
