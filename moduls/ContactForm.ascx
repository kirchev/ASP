<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="moduls_ContactForm" %>

<!-- Contact Form -->
        <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
        <div class="row">
            <div class="col-md-8">
                <h3>Send us a Message</h3>
                <div class="control-group form-group">
                    <div class="controls">
                        <asp:Label ID="LabelFullName" runat="server" Text="Full Name"></asp:Label>
                        <asp:TextBox ID="TextBoxFullName" runat="server" CssClass ="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="FullNameValidator" ControlToValidate ="TextBoxFullName" ValidationExpression ="[a-zA-Z ]{3,}" runat="server" ErrorMessage="Please Enter Valid Name" SetFocusOnError="true" ValidateRequestMode="Enabled"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <asp:Label ID="LabelPhone" runat="server" Text="Phone Number"></asp:Label>
                       <asp:TextBox ID="TextBoxPhone" runat="server" CssClass ="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="PhoneValidator" ControlToValidate ="TextBoxPhone" ValidationExpression ="^\+?\d{7,14}" runat="server" ErrorMessage="Please Enter Valid Name" SetFocusOnError="true" ValidateRequestMode="Enabled"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                         <asp:Label ID="LabelEmail" runat="server" Text="Email"></asp:Label>
                       <asp:TextBox ID="TextBoxEmail" runat="server" CssClass ="form-control"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="EmailValidator" ControlToValidate ="TextBoxEmail" ValidationExpression ="[a-zA-Z0-9._]*@[a-zA-Z0-9]*.[a-zA-Z]{2,5}" runat="server" ErrorMessage="Please Enter Valid Name" SetFocusOnError="true" ValidateRequestMode="Enabled"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                         <asp:Label ID="LabelMessage" runat="server" Text="Message"></asp:Label>
                        <asp:TextBox ID="TextBoxMessage" runat="server" CssClass ="form-control"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="MessageValidator" ControlToValidate ="TextBoxMessage" ValidationExpression ="[\s\S]{20,}" runat="server" ErrorMessage="Please Enter Valid Name" SetFocusOnError="true" ValidateRequestMode="Enabled"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <asp:Button ID="ButtonSend" CssClass="btn btn-primari" runat="server" Text="Send" OnClick ="ButtonSend_Click" />
            </div>
        </div>
        <!-- /.row -->
    </div>