<%@ Page Title="Ok Computer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OkComputer.aspx.cs" Inherits="MusicLibray.OkComputer" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h2>Ok Computer</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>About:</h3>
        </header>
            
        <p>
            OK Computer is the third studio album by the English alternative rock band Radiohead, released in 1997 on Parlophone and Capitol Records. OK Computer was the first self-produced Radiohead album, with assistance from Nigel Godrich. Radiohead recorded the album in Oxfordshire and Bath between 1996 and early 1997, with most of the recording completed in the historic mansion St. Catherine's Court. The band made a deliberate attempt to distance themselves from the guitar-oriented, lyrically introspective style of their previous album, The Bends. OK Computer's abstract lyrics, densely layered sound and wide range of influences laid the groundwork for Radiohead's later, more experimental work.
    </section>

    <section class="contact">
        <header>
            <h3>Critical Reception:</h3>
        </header>
            
        <p>
           Upon its release, OK Computer received almost unanimously positive reviews. Critics in the British and American press generally agreed that the album was a landmark of its time and would have far-reaching impact and importance, and that the band's willingness to experiment made it a challenging listen. According to Footman, "Not since 1967, with the release of Sgt. Pepper's Lonely Hearts Club Band, had so many major critics agreed immediately, not only on an album's merits, but on its long-term significance, and its ability to encapsulate a particular point in history."In the English press, the album garnered favourable reviews in NME, Melody Maker,The Guardian, and Q. Nick Kent wrote in Mojo that "Others may end up selling more, but in 20 years time I'm betting OK Computer will be seen as the key record of 1997, the one to take rock forward instead of artfully revamping images and song-structures from an earlier era."
        </p>
    </section>

    <section class="contact">
        <header>
           
        </header>
        <p>
            <img src="http://upload.wikimedia.org/wikipedia/en/a/a1/Radiohead.okcomputer.albumart.jpg" style="height: 156px; width: 164px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="http://www.wired.com/images_blogs/photos/uncategorized/2007/10/01/radiohead.jpg" style="height: 156px; width: 164px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="http://imgs.mi9.com/uploads/music/1862/ok-computer-radiohead_1024x768_23518.jpg" style="height: 156px; width: 164px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <iframe width="560" height="315" src="//www.youtube.com/embed/g-w2wgceXUE"></iframe>        
        </p>
        <p>
            &nbsp;&nbsp;
        <asp:Button ID="PreviousAlbum" runat="server" Text="Previous" Width="143px" OnClick="PreviousAlbum_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="NextAlbum" runat="server" onclick="myBtn_Click" OnClientClick="window.open('EitherOr.aspx', 'EitherOr');" Text="Next" Width="143px" />
        </p>
        <p>
            <u><a href="http://www.last.fm/music/Radiohead/OK+Computer">Buy Album</a></u></p>
        <p>
            </p>
        <p>
            
        </p>
    </section>
</asp:Content>
