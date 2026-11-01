<%@ Page Title="" Language="C#" MasterPageFile="~/Nueva.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Parcial2.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Nombre y Apellido<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" BorderColor="Black" ControlToValidate="TextBox1" ErrorMessage="* ingerese Nombre y apellido" ForeColor="Red">*</asp:RequiredFieldValidator>
    </p>
    <p>
        Edad:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Ingrese su edad" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Ingresar valor numerico y solo se aceptan usuarios mayores a 15 años " ForeColor="Red" MaximumValue="90" MinimumValue="16" Type="Integer">*</asp:RangeValidator>
    </p>
    <p>
        Nombre de Usuario:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Ingrese Nombre de Usuario" ForeColor="Red">*</asp:RequiredFieldValidator>
    </p>
    <p>
        Correo Electronico:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Ingrese su correo" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Formato de correo No valido " ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
    </p>
    <p>
        Contraseña:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Ingrese su contraseña" ForeColor="Red">*</asp:RequiredFieldValidator>
    </p>
    <p>
        Confirmar Contraseña:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*Confirme su contraseña" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="*Las contraseñas no son iguales" ForeColor="Red">*</asp:CompareValidator>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registrar" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
</asp:Content>
