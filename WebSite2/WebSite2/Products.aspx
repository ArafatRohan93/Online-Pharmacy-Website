<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row" style="padding-top: 50px">
        <asp:Repeater ID="rptrProducts" runat="server">
        <ItemTemplate>
  <div class="col-sm-6 col-md-3">
      <a style="text-decoration:none" href="ProductView.aspx?PID=<%#Eval("PID") %>">
    <div class="thumbnail" style="border:solid;border-color:#ff6a14">
      <img src="Images/ProductImages/<%#Eval("PID") %>/<%#Eval("ImageName") %><%#Eval("Extention") %>" alt="<%#Eval("ImageName") %>">
      <div class="caption" style="background:#ffb68c;">
        <div class="proName"><%#Eval("PName") %></div>
        <div class="probrand"><%#Eval("BrandName") %> Pharma Ltd.</div>
        <div class="proPrice"><span class="proOgPrice"><%#Eval("PPrice") %></span>  <%#Eval("SellPrice") %> <span class="proPriceDiscount">  <%#Eval("DiscAmount") %> off</span></div>

       
      </div>
    </div>
    </a>
  </div>
            </ItemTemplate>
</asp:Repeater>
</div>
</asp:Content>

