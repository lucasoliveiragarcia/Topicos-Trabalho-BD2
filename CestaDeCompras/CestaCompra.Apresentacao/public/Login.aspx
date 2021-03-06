﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CestaCompra.Apresentacao.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Espaco" class="row row-lg">
        <p></p>
    </div>
    <div class="Container-fluid-center" style="margin: 0 auto; width: 30%;">

        <div class="form-group">
            <label for="exampleInputEmail1">Usuário</label>
            <asp:TextBox runat="server" ID="TxtUsuario"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Senha&nbsp&nbsp</label>
            <asp:TextBox runat="server" ID="TxtSenha" type="password"></asp:TextBox>
        </div>
        <asp:Button ID="BtnAcesso" class="btn btn-primary" runat="server" TabIndex="4" OnClick="BtnEntrar_Click" Text="Entrar" />
        <asp:LinkButton ID="LkbEsqueceuSenha" OnClientClick="return window.confirm('Deseja realmente solicitar recuperação de senha?');" OnClick="LkbEsqueceuSenha_Click" runat="server">Esqueceu sua senha?</asp:LinkButton>

    </div>
</asp:Content>
