<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="COMP2139___W2018___Lesson_8.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row justify-content-md-center">
        <div class="col-md-6 col-lg-4 col-sm-8">
            <h1>Contact Us</h1>

            <div runat="server" ID="MessageArea">
                <div class="form-group">
                     <asp:RequiredFieldValidator CssClass="alert alert-warning" Display="Dynamic" ID="NameFieldValidator" runat="server" ErrorMessage="Name Text Field is Required" ControlToValidate="Name"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                     <asp:RequiredFieldValidator CssClass="alert alert-warning" Display="Dynamic"  ID="ContactFieldValidator" runat="server" ErrorMessage="Contact Number Field is Required" ControlToValidate="ContactNumber"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:RequiredFieldValidator CssClass="alert alert-warning" Display="Dynamic"  ID="EmailFieldValidator" runat="server" ErrorMessage="Email Field is Required" ControlToValidate="Email"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label for="Name">Your Name</label>
                <input runat="server" type="text" class="form-control" ID="Name" placeholder="e.g. John Smith">
               
            </div>

            <div class="form-group">
                <label for="ContactNumber">Contact Number</label>
                <input runat="server" type="tel" class="form-control" ID="ContactNumber" placeholder=" e.g.(416) 555-5555" >
                 
            </div>

            <div class="form-group">
                <label for="Email">Email address</label>
                <input runat="server" type="email" class="form-control" ID="Email" aria-describedby="emailHelp" placeholder="youremail@yourdomain.com" >
                
            </div>

            <div class="form-group">
                <label for="Message">Your Message</label>
                <textarea runat="server" class="form-control" ID="Message" rows="3" placeholder="Enter Your Message Here..."></textarea>
            </div>

        </div>
    </div>

    <div class="row justify-content-md-center">
        <div class="col-md-offset-9 col-md-2 col-lg-2 col-sm-2">
            <asp:Button runat="server" ID="SubmitButton" type="submit" CssClass="btn btn-success" Text="Send" OnClick="SubmitButton_Click" />
        </div>
        <div class="col-md-offset-9 col-md-2 col-lg-2 col-sm-2">
            <asp:Button runat="server" ID="CancelButton" type="cancel" CssClass="btn btn-warning" Text="Cancel" OnClick="CancelButton_Click" />
        </div>
    </div>

</asp:Content>
