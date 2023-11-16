<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestrra.Master" AutoEventWireup="true" CodeBehind="Archivos.aspx.cs" Inherits="UsuarioFormulario.Archivos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
<asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" BorderStyle="Dashed" />
<br />
<br />
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar" BackColor="White" BorderStyle="Solid" Font-Bold="True" Font-Italic="False" ForeColor="Red" />
<br />
<br />
<asp:Label ID="Label1" runat="server"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="Descargar" HeaderText="Descargar" ShowHeader="True" Text="Botón" />
        </Columns>
    </asp:GridView>
</asp:Content>
