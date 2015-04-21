<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MusicLibray.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
   <hgroup class="title">
        <h2>About:</h2>
    </hgroup>

    <article>
        <p>        
            This is a site dedicated to the best in indie rock music:</p>

       <ol>
           <li>Browse all our albums</li>
           <li>Add your favorite</li>
           <li>Register to our site</li>
        </ol>

        <p>        
            Enjoy!!!!!!!!!!!!</p>
    </article>

    <aside>
       <hgroup class="title">
        <h3>Our favorite Sites!</h3>
    </hgroup>
        <ul>
            <li><a href="http://www.ultimate-guitar.com/">Ultimate Guitar</a></li>
            <li><a href="http://www.ticketmaster.ie/">Ticketmaster</a></li>
            <li><a href="http://www.amazon.com/">Amazon</a></li>
        </ul>
    </aside>
</asp:Content>