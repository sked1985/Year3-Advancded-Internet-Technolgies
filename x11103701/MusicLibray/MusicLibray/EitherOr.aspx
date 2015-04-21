<%@ Page Title="Either Or" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EitherOr.aspx.cs" Inherits="MusicLibray.EitherOr" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h2>Either/Or</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>About:</h3>
        </header>
            
        <p>
            Either/Or is the third studio album by American singer-songwriter Elliott Smith. Recorded in several locations mostly in Portland, Oregon while Smith was still in Heatmiser and produced by Smith, Tom Rothrock and Rob Schnapf, Either/Or was released on February 25, 1997 through record label Kill Rock Stars following the demise of Heatmiser. Book-ended by the two singles "Speed Trials" and "Ballad of Big Nothing", Either/Or did not chart in the US but was acclaimed by critics.
Following the album's release, Smith would be struck to the forefront of popular culture after performing the song "Miss Misery" at the 1998 Academy Awards, which appeared in the film Good Will Hunting.
    </section>

    <section class="contact">
        <header>
            <h3>Critical Reception:</h3>
        </header>
            
        <p>
           Either/Or was acclaimed by critics upon its release, placing at number 20 in the 1997 end-of-year Pazz & Jop poll.
In its retrospective review, Tiny Mix Tapes opined: "Simply put, the songs on Either/Or are Elliott Smith's best".
        </p>
    </section>

    <section class="contact">
        <header>
            
        </header>
        <p>
            <img src="http://upload.wikimedia.org/wikipedia/en/f/fd/Elliottsmitheitheror55.jpg" style="height: 156px; width: 164px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="http://upload.wikimedia.org/wikipedia/en/2/20/Elliottsmithoscars.jpg" style="height: 156px; width: 164px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="http://www.dominorecordco.com/images/artists/elliott_smith/es_anintroduction_web.jpg" style="height: 156px; width: 164px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <iframe width="420" height="315" src="//www.youtube.com/embed/NcalJSO6jDY"></iframe>
        </p>
        <p>
             <asp:Button ID="PreviousAlbum" runat="server" Text="Previous" Width="143px" OnClick="PreviousAlbum_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="NextAlbum" runat="server"  Text="Next" Width="143px" OnClick="NextAlbum_Click" />
        </p>
             <p>
            <u><a href="http://www.amazon.com/Either-Or-Elliott-Smith/dp/B00000373U">Buy Album</a></u></p>
        <p>
            </p>
        <p>
            </p>
        <p>
            
        </p>
    </section>
</asp:Content>
