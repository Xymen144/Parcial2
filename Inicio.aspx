<%@ Page Title="" Language="C#" MasterPageFile="~/Nueva.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Parcial2.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Estilos internos para darle diseño a la página de inicio -->
    <style>
        .home-container {
            text-align: center;
            padding: 30px 20px;
        }
        .hero-section {
            background-color: #1a252f;
            color: white;
            padding: 50px 20px;
            border-radius: 8px;
            margin-bottom: 40px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        /* Estilos para alinear el logo al lado del título */
        .hero-title-container {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 15px;
            margin-bottom: 15px;
            flex-wrap: wrap;
        }
        .hero-logo {
            max-height:90px;
            width: auto;
            border-radius: 4px;
        }
        .hero-section h2 {
            font-size: 32px;
            margin-bottom: 15px;
            color: #f1c40f;
        }
        .hero-description {
            font-size: 16px;
            max-width: 750px;
            margin: 0 auto 25px auto;
            color: #ecf0f1;
            line-height: 1.6;
        }
        .btn-action {
            background-color: #c0392b;
            color: white;
            padding: 12px 25px;
            border-radius: 4px;
            text-decoration: none;
            font-weight: bold;
            display: inline-block;
            transition: background 0.3s;
        }
        .btn-action:hover {
            background-color: #e74c3c;
            color: white;
        }
        .services-section {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            gap: 20px;
            max-width: 1200px;
            margin: 0 auto;
        }
        .service-card {
            background: white;
            padding: 25px;
            border-radius: 8px;
            flex: 1;
            min-width: 280px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.05);
            border-top: 4px solid #1a252f;
            text-align: left;
        }
        .service-card h3 {
            color: #1a252f;
            margin-bottom: 10px;
            font-size: 18px;
        }
        .service-card p {
            color: #666;
            font-size: 14px;
            line-height: 1.5;
        }
    </style>

    <!-- Contenido Visual Principal -->
    <div class="home-container">
        
        <!-- Sección de Bienvenida (Hero) -->
        <div class="hero-section">
            <asp:Image ID="imgHeroLogo" runat="server" ImageUrl="~/Images/logo 1.png" AlternateText="Logo Asesoría Legal" CssClass="hero-logo" />

            <h2>Bienvenido a Asesoría Legal Global</h2>
            <p class="hero-description">
                Brindamos soluciones jurídicas estratégicas, asesoramiento corporativo y un entorno digital eficiente y seguro para la gestión de documentos y registro de clientes.
            </p>
            <!-- Botón que lleva directamente al formulario de registro de tu parcial -->
            <asp:HyperLink ID="lnkIrRegistro" runat="server" NavigateUrl="~/Registro.aspx" CssClass="btn-action">Ir al Registro de Usuarios</asp:HyperLink>
        </div>

        <!-- Tarjetas de Información / Servicios -->
        <div class="services-section">
            <div class="service-card">
                <h3>⚖️ Asesoramiento Integral</h3>
                <p>Especialistas en derecho corporativo, civil y defensa estratégica enfocados en el rigor profesional y la excelencia.</p>
            </div>
            
            <div class="service-card">
                <h3>📝 Registro de Clientes</h3>
                <p>Acceda a nuestro sistema de captación para dar de alta su cuenta de forma rápida, segura y validada.</p>
            </div>
            
            <div class="service-card">
                <h3>📁 Gestión Documental</h3>
                <p>Plataforma exclusiva para usuarios autenticados donde podrá cargar y administrar sus archivos legales de forma confidencial.</p>
            </div>
        </div>

    </div>
</asp:Content>
