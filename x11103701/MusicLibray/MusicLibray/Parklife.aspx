<%@ Page Title="Parklife" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Parklife.aspx.cs" Inherits="MusicLibray.Parklife" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h2>Parklife</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>About:</h3>
        </header>
            
        <p>
            Parklife is the third studio album by the English alternative rock band Blur, released in April 1994 on Food Records. After disappointing sales for their previous album Modern Life Is Rubbish (1993), Parklife returned Blur to prominence in the UK, helped by its four hit singles: "Girls & Boys", "End of a Century", "Parklife" and "To the End". Certified four times platinum in the United Kingdom, in the year following its release the album came to define the emerging Britpop scene, along with the album Definitely Maybe by rivals Oasis. Britpop in turn would form the backbone of the broader Cool Britannia movement. Parklife therefore attained a cultural significance above and beyond its considerable sales and critical acclaim, cementing its status as a landmark in British rock music.
    </section>

    <section class="contact">
        <header>
            <h3>Critical Reception:</h3>
        </header>
            
        <p>
         Parklife remains one of the most acclaimed albums of the 1990s, released in April 1994, debuted at number one on the UK Album Charts. The album stayed on the chart for 90 weeks. However, the album only charted at number 6 on the Billboard Top Heatseekers album chart in the United States.Johnny Dee, reviewing Parklife for NME, called it "a great pop record", adding "On paper it sounds like hell, in practice it's joyous." Rolling Stone gave the album four out of five stars. Reviewer Paul Evans wrote, "With one of this year's best albums, [Blur] realize their cheeky ambition: to reassert all the style and wit, boy bonding and stardom aspiration that originally made British rock so dazzling." AllMusic's Stephen Thomas Erlewine commented: "By tying the past and the present together, Blur articulated the mid-'90s zeitgeist and produced an epoch-defining record." Conversely, Robert Christgau stated that the only good song on the album was "Girls & Boys".
        </p>
    </section>

    <section class="contact">
        <header>
        
        </header>
        <p>
            <img src="http://upload.wikimedia.org/wikipedia/en/7/7d/BlurParklife.jpg" style="height: 156px; width: 164px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="http://www.dublinconcerts.ie/content/uploads/2013/03/blur.jpg" style="height: 156px; width: 164px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="http://thebabushkalady.files.wordpress.com/2012/03/blur.jpg" style="height: 156px; width: 164px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <iframe width="420" height="315" src="//www.youtube.com/embed/SIEsmGzo2UE"></iframe>        
        </p>
        <p>
             <asp:Button ID="PreviousAlbum" runat="server" Text="Previous" Width="143px" OnClick="PreviousAlbum_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="NextAlbum" runat="server"  Text="Next" Width="143px" OnClick="NextAlbum_Click" />
        </p>
        <p>
            <u><a href="http://www.amazon.com/Parklife-Blur/dp/B000002TQB/ref=sr_1_sc_1?s=music&ie=UTF8&qid=1387207746&sr=1-1-spell&keywords=parklilfe">Buy Album</a></u></p>
        <p>
            </p>
        <p>
            </p>
        <p>
            
        </p>
    </section>
</asp:Content>
