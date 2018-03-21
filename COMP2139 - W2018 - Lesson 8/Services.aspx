<%@ Page Title="Services" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="COMP2139___W2018___Lesson_8.Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row justify-content-md-center">
        <div class="col-md-auto">
            <h1>Services Page</h1>
            <asp:GridView CssClass="table table-bordered table-striped table-hover" ID="GridView1" 
                runat="server" AutoGenerateColumns="False" DataSourceID="DataSource1" 
                HeaderStyle-CssClass="thead-dark" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                
                       <asp:CommandField  HeaderText="Delete" DeleteText="<i class='fa fa-trash-o fa-lg'></i> Delete"
                            ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                </Columns>
            </asp:GridView>



            <asp:SqlDataSource ID="DataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDatabaseConnectionString %>" SelectCommand="SELECT [Name], [Description], [Cost] FROM [Services]"></asp:SqlDataSource>



        </div>
    </div>

</asp:Content>
