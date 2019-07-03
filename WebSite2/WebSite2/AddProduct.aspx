<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="form-horizontal">
            <h2>Add Product</h2>
            <hr />
            <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Name"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPName" CssClass="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtPName" runat="server" ErrorMessage="This Field Is Required" ControlToValidate="txtPName" CssClass="text-danger"></asp:RequiredFieldValidator>

                    </div>
                </div>
            <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Generic"></asp:Label>
                    <div class="col-md-3">
                          <asp:DropDownList ID="ddlPGeneric" CssClass="form-control" runat="server"></asp:DropDownList>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlPGeneric" runat="server" ErrorMessage="This Field Is Required" ControlToValidate="ddlPGeneric" CssClass="text-danger"></asp:RequiredFieldValidator>

                    </div>
                </div>

            <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Type"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlTypes" CssClass="form-control" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlTypes" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="ddlTypes" InitialValue="0"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Size"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPSize" CssClass="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtPSize" runat="server" ErrorMessage="This Field Is Required" ControlToValidate="txtPSize" CssClass="text-danger"></asp:RequiredFieldValidator>

                    </div>
                </div>

            <div class="form-group">
                <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Brand"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlBrands" CssClass="form-control" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="ddlBrands" InitialValue="0"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                    <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="Unit Price"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPUPrice" CssClass="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtPUPrice" runat="server" ErrorMessage="This Field Is Required" ControlToValidate="txtPUPrice" CssClass="text-danger"></asp:RequiredFieldValidator>

                    </div>
                </div>

            <div class="form-group">
                    <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="Description"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPDescription" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtPDescription" runat="server" ErrorMessage="This Field Is Required" ControlToValidate="txtPDescription" CssClass="text-danger"></asp:RequiredFieldValidator>

                    </div>
                </div>

            <div class="form-group">
                    <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label" Text="Image"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="fuImg01" runat="server" />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorfuImg01" runat="server" ErrorMessage="This Field Is Required" ControlToValidate="fuImg01" CssClass="text-danger"></asp:RequiredFieldValidator>

                    </div>
                </div>
            
            <div class="form-group">
                    <asp:Label ID="Label9" runat="server" CssClass="col-md-2 control-label" Text="Free Delivery"></asp:Label>
                    <div class="col-md-3">
                        <asp:CheckBox ID="cbFD" runat="server" />
                    </div>
                </div>

            <div class="form-group">
                    <asp:Label ID="Label10" runat="server" CssClass="col-md-2 control-label" Text="COD"></asp:Label>
                    <div class="col-md-3">
                        <asp:CheckBox ID="cbCOD" runat="server" />
                    </div>
                </div>

             <div class="form-group">
                    <asp:Label ID="Label11" runat="server" CssClass="col-md-2 control-label" Text="5 Days Return"></asp:Label>
                    <div class="col-md-3">
                        <asp:CheckBox ID="cb5Ret" runat="server" />
                    </div>
                </div>

             <div class="form-group">
                     <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-success" OnClick="btnAdd_Click" />
                    </div>
                </div>
        </div>
    </div>
</asp:Content>

