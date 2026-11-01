<%@ Page Title="" Language="C#" MasterPageFile="~/Nueva.Master" AutoEventWireup="true" CodeBehind="Documentos.aspx.cs" Inherits="Parcial2.Documentos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- Contenedor con estilo de tarjeta para que no quede feo ni pegado -->
    <div style="max-width: 650px; margin: 40px auto; background-color: #ffffff; padding: 30px; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.1); font-family: Arial, sans-serif;">
        
        <h2 style="color: #2c3e50; margin-top: 0; margin-bottom: 20px; font-size: 22px; border-bottom: 2px solid #ecf0f1; padding-bottom: 10px;">
            Gestión de Documentos
        </h2>

        <!-- Tus controles originales intactos -->
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br /><br />
        
        <span style="font-weight: bold; color: #555;">Seleccione el Archivo a Subir:</span> 
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" Style="margin: 10px 0; padding: 5px;" />
        <br /><br />
        
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirmar" Style="background-color: #2c3e50; color: white; border: none; padding: 8px 18px; border-radius: 4px; cursor: pointer;" />
        <br /><br />
        
        <asp:Label ID="Label2" runat="server" Style="color: #27ae60; font-weight: bold;"></asp:Label>
        <br />

    </div>
</asp:Content>
