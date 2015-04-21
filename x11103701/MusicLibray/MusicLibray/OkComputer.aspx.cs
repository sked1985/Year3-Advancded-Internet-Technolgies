using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicLibray
{
    public partial class OkComputer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void myBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("EitherOr.aspx");
        }

        protected void PreviousAlbum_Click(object sender, EventArgs e)
        {
            Response.Redirect("DefinitelyMaybe.aspx");
        }
    }
}