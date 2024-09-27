<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucBeverage.ascx.cs" Inherits="de1.UserControl.ucBeverage" %>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="BeverageDataSource">
    
    <ItemTemplate>
        <div>
            <asp:Label ID="Label1" runat="server" Text="<%# Eval("Name") %>"></asp:Label><br />
            <asp:Image ID="Image1" runat="server" ImageUrl="<%# Eval("ImageFilePath") %>" /><br />
            <asp:Label ID="Label2" runat="server" Text="<%# Eval("Price") %>"></asp:Label><br />
        </div>
    </ItemTemplate>
    <LayoutTemplate>
        <div id="itemPlaceholderContainer" runat="server" style="">
            <span runat="server" id="itemPlaceholder" />
        </div>
        <div style="">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    <asp:NumericPagerField />
                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
</asp:ListView>
<asp:EntityDataSource ID="BeverageDataSource" runat="server" ConnectionString="name=QLDoUongEntities" DefaultContainerName="QLDoUongEntities" EnableFlattening="False" EntitySetName="Beverages" EntityTypeFilter="Beverage">
</asp:EntityDataSource>

