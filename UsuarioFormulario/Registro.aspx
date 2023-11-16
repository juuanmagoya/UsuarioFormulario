<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestrra.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="UsuarioFormulario.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Registrate en la Página</p>
    <p>
        Username:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" Font-Bold="True" ForeColor="Red">Campo Obligatorio</asp:RequiredFieldValidator>
    </p>
    <p>
        Maill:<asp:TextBox ID="TextBox2" runat="server" TextMode="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Campo Obligatorio" Font-Bold="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="El formato ingresado no es un email" Font-Bold="True" ForeColor="#CC0000" ValidationExpression="^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$"></asp:RegularExpressionValidator>
    </p>
    <p>
        Edad:<asp:TextBox ID="TextBox5" runat="server" Height="28px" TextMode="Number" Width="134px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Campo Obligatorio" Font-Bold="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Debes ser mayor de 15 años" Font-Bold="True" ForeColor="#CC0000" MaximumValue="89" MinimumValue="16" Type="Integer"></asp:RangeValidator>
    </p>
    <p>
        Contraseña:<asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Campo Obligatorio" Font-Bold="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
    </p>
    <p>
        Repite tu Contraseña:<asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Campo Obligatorio" Font-Bold="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Las contraseñas no coinciden" Font-Bold="True" ForeColor="#CC0000"></asp:CompareValidator>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
</asp:Content>
