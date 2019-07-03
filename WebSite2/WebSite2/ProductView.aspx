<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="ProductView.aspx.cs" Inherits="ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding-top:50px">
        <div class="col-md-5">
            <div style="max-width: 480px" class="thumbnail">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <asp:Repeater ID="rptrImages" runat="server">
                            <ItemTemplate>
                                <div class="item <%# GetActiveClass(Container.ItemIndex) %>">
                                    <img src="Images/ProductImages/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" alt="<%#Eval("Name") %>" onerror="this.src='images/noimage.jpg'">
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="col-md-7">
            <asp:Repeater ID="rptrProductDetails" OnItemDataBound="rptrProductDetails_ItemDataBound" runat="server">
                <ItemTemplate>
                    <div class="divDet1">
                        <h1 class="proNameView"><%#Eval("PName") %></h1>                       
                        <span class="proOgPriceView"><%#Eval("PPrice") %> Tk. </span><span class="proPriceDiscountView"> <%# string.Format("{0}",Convert.ToInt64(Eval("PPrice"))+1.5-Convert.ToInt64(Eval("PPrice"))) %> Tk. OFF</span>
                        <p class="proPriceView"><%# string.Format("{0}",Convert.ToInt64(Eval("PPrice"))-1.5) %> Tk. </p>
                    </div>
                    <div>
                        <h5 class="h5Size">SIZE</h5>
                        <div>
                            <asp:RadioButtonList ID="rblSize" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            </asp:RadioButtonList>
                        </div>
                    </div>
                  <div class="divDet1">
                        <asp:Button ID="btnAddToCart"  OnClick="btnAddToCart_Click" CssClass="mainButton" runat="server" Text="ADD TO CART" />
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                    </div>
                    <div class="divDet1">
                        <h5 class="h5Size">Description</h5>
                        <p>
                            <%#Eval("PDescription") %>
                        </p>
                    </div>
                    <div>
                        <p><%# ((int)Eval("FreeDelivery")==1)?"Free Delivery":"" %></p>
                        <p><%# ((int)Eval("5DaysRet")==1)?"30 Days Returns":"" %></p>
                        <p><%# ((int)Eval("COD")==1)?"Cash on Delivery":"" %></p>
                    </div>

                    <asp:HiddenField ID="hfCatID" Value='<%# Eval("PCategoryID") %>' runat="server" />
                    <asp:HiddenField ID="hfGenericID" Value='<%# Eval("PGenericID") %>' runat="server" />
                    <asp:HiddenField ID="hfBrandID" Value='<%# Eval("PBrandID") %>' runat="server" />
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>

