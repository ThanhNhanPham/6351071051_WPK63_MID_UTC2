<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucCategory.ascx.cs" Inherits="de1.UserControl.WebUserControl1" %>
<asp:DataList ID="DataList1" runat="server" DataKeyField="CatID" DataSourceID="CategoryListDataSource">
   <ItemTemplate>
    <div>
        <asp:HyperLink ID="CatNameLink" runat="server" Text='<%# Eval("CatName") + " ("+ Eval("Beverages.Count") + ")"%>' NavigateUrl="~/DefaultPageMaster.Master" /></asp:HyperLink>
    </div>
     
    <br />
</ItemTemplate>

</asp:DataList>
<hr />
<asp:EntityDataSource ID="CategoryListDataSource" runat="server" ConnectionString="name=QLDoUongEntities" DefaultContainerName="QLDoUongEntities" EnableFlattening="False" EntitySetName="Categories" EntityTypeFilter="Category" Include="Beverages" OnSelecting="CategoryListDataSource_Selecting">
</asp:EntityDataSource>

