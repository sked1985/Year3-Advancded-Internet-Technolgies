<%@ Page Title="Definitely Maybe" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DefinitelyMaybe.aspx.cs" Inherits="MusicLibray.DefinitelyMaybe" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h2>Definitely Maybe</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>About:</h3>
        </header>
            
        <p>
            Definitely Maybe is the debut album by English rock band Oasis, released in August 1994. It was an immediate commercial and critical success in the UK, having followed on the heels of singles &quot;Supersonic&quot;, &quot;Shakermaker&quot; and &quot;Live Forever&quot;. Definitely Maybe went straight to number one in the UK Albums Charts on initial release. It was the fastest selling debut album of all time in the UK when it was released and went on to be certified 7x Platinum (2.1 million+ sales) by the BPI. Definitely Maybe marked the beginning of Oasis&#39; success in America, selling over one million copies there, despite only peaking at 58 on the Billboard 200. The album went on to sell over 15 million copies worldwide and brought widespread critical acclaim. The album, along with Blur&#39;s Parklife, helped to spur a revitalisation in British pop music in the mid nineties and was embraced by critics for its optimistic themes and supposed rebuttal of the downtrodden fatalism evident in the dominant grunge music of the 
            time. It was a seminal record of the Britpop movement and still appears in many 'best of' lists to this day. In June 2006, the NME named it as the greatest album of all time.
    </section>

    <section class="contact">
        <header>
            <h3>Critical Reception:</h3>
        </header>
            
        <p>
            Definitely Maybe was finally released on 29 August 1994. The album sold 86,000 in its first week. On 4 September the album debuted at number one on the British charts. It outsold the second-highest album (The Three Tenors in Concert 1994, which had been favoured to be the chart-topper that week), by a factor of 50%. The first-week sales earned Definitely Maybe the record of the fastest-selling debut album in British history. The album received almost unanimous critical acclaim along with commercial success, with many critics and listeners welcoming the album's fearless optimistic themes, particularly in an era of rock which was dominated by American grunge which seemed at odds with the album, while also praising Noel Gallagher's songwriting and melodic skills along with younger brother Liam's vocals. "Cigarettes & Alcohol" was released as the fourth single from the album in October, peaking at number 7 UK, then a career high for the band. Noel Gallagher said "Slide Away" was considered as a fifth single, but he ultimately refused, arguing, "You can't have five [singles] off a debut album."</p>
    </section>

    <section class="contact">
        <p>
            <img src="http://upload.wikimedia.org/wikipedia/en/d/d4/OasisDefinitelyMaybealbumcover.jpg" style="height: 156px; width: 164px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="http://britpopnews.com/wp-content/uploads/2013/07/9_2000OasisPA080911.jpg" style="height: 156px; width: 164px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="http://all-noise.co.uk/wp-content/uploads/2013/08/oasis-reunion.jpg" style="height: 156px; width: 164px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <iframe height="308" src="//www.youtube.com/embed/p29MG7wn4F8"></iframe>

        </p>
        
        <p>
             <asp:Button ID="PreviousAlbum" runat="server" Text="Previous" Width="143px" OnClick="PreviousAlbum_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="NextAlbum" runat="server"  Text="Next" Width="143px" OnClick="NextAlbum_Click" />
        </p>
        <u><a href="http://store.digitalstores.co.uk/oasis/oasis/Albums/?sort=articleNameAscending">Buy Album</a></u>
        <p>
            </p>
        <p>
            </p>
        <p>
            
        </p>
    </section>
</asp:Content>
