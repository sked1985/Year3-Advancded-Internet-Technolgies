using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicLibray
{
    public partial class Search2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private MusicLibraryContainer entities = new MusicLibraryContainer();

        [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethod()]
        public static string[] GetCompletionList(string prefixText, int count)
        {
            MusicLibraryService musicLibraryService = new MusicLibraryService();
            return musicLibraryService.GetAlbumsByBand(prefixText);



        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Album album = GetAlbum(txtSearch.Text);
            if (album == null)
            {
                lblMessage.Text = "Album Not On File";
            }
            else
            {
                lblMessage.Text = "";
                DetailsView1.DataSource = new List<Album> { album };
                DetailsView1.DataBind();
            }
        }

        private Album GetAlbum(string name)
        {
            return (entities.Albums.FirstOrDefault(b => b.Name == name));
        }
    }
}