<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MusicLibray.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h2>Contact:</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span>
            087-2333333</p>
        <p>
            <span class="label">After Hours:</span>
            0404-66666</p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:</span>
            mcgettiganbarry@yahoo.com</p>
        <p>
            <span class="label">Marketing:</span>
            sked27@gmail.com
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            Lower Road,</p>
        <p>
            Merrymeeting,</p>
        <p>
            Rathnew,</p>
        <p>
            Co.Wicklow</p>
        <p>
            Ireland
        </p>
    </section>
</asp:Content>