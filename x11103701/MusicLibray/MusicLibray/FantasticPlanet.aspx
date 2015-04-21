<%@ Page Title="Fantastic Planet" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FantasticPlanet.aspx.cs" Inherits="MusicLibray.FantasticPlanet" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h2>Fantastic Planet</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>About:</h3>
        </header>
            
        <p>
            Fantastic Planet (1996) is the third and final studio album by the
             American alternative rock band Failure. It was the last album released
             on Slash Records as distributed by Warner Bros. Records. The album failed to chart on
             Billboard 's Top 200 albums, but did produce a charting single with "Stuck on You", which reached #23 on Billboard 's Alternative Songs Chart.The album was produced by Failure themselves in a process that took longer than their previous two albums, with one song being recorded and produced soon after being written, and repeating this process. Space-rock themes course through the album's lyrics, as well as various indirect references to drug addiction, drug-related experiences, and prostitution. Seven of the album's songs were also included on Failure's Essentials, a best-of collection from 2006.
In 2009, JustPressPlay named Fantastic Planet the third-best album of the 1990s. They also ranked the song "The Nurse Who Loved Me" at #10 in its list of the Top 100 Songs of the 1990s.
    </section>

    <section class="contact">
        <header>
            <h3>Critical Reception:</h3>
        </header>
            
        <p>
          Fantastic Planet has receieved rave reviews from all critics.
        </p>
    </section>

    <section class="contact">
        <header>
           
        </header>
        <p>
            <img src="http://upload.wikimedia.org/wikipedia/en/e/e6/Failurefantasticplanet.jpg" style="height: 156px; width: 164px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="http://upload.wikimedia.org/wikipedia/en/2/2f/FailureBand.jpg" style="height: 156px; width: 164px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="http://userserve-ak.last.fm/serve/500/26750741/Failure.jpg" style="height: 156px; width: 164px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <iframe width="420" height="315" src="//www.youtube.com/embed/FumEwFDq5mg"></iframe>
        </p>
       
             <asp:Button ID="PreviousAlbum" runat="server" Text="Previous" Width="143px" OnClick="PreviousAlbum_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="NextAlbum" runat="server"  Text="Next" Width="143px" OnClick="NextAlbum_Click" />
        <p><a href="http://www.amazon.com/Fantastic-Planet-Failure/dp/B000002N89">Buy Album</a></p>
        <p>
            </p>
        <p>
            </p>
        <p>
            
        </p>
    </section>
</asp:Content>
