using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicLibray
{
    public partial class DefinitelyMaybe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void NextAlbum_Click(object sender, EventArgs e)
        {
            Response.Redirect("OkComputer.aspx");
        }

        protected void PreviousAlbum_Click(object sender, EventArgs e)
        {
            Response.Redirect("Parklife.aspx");
        }
    }
}