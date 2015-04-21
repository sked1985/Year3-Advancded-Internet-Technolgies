using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicLibray
{
    public partial class _Default : Page
    {
        private MusicLibraryContainer entities = new MusicLibraryContainer();

        private int currentId = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RefreshGrid();

                gvAlbums.DataSource = entities.Albums.ToList();
                gvAlbums.DataBind();
                ddlLabel.DataSource = entities.Labels.ToList();
                ddlLabel.DataTextField = "Name";
                ddlLabel.DataValueField = "Id";
                ddlLabel.DataBind();

                ddlBand.DataSource = entities.Bands.ToList();
                ddlBand.DataTextField = "Name";
                ddlBand.DataValueField = "Id";
                ddlBand.DataBind();

                ddlGenre.DataSource = entities.Genres.ToList();
                ddlGenre.DataTextField = "Name";
                ddlGenre.DataValueField = "Id";
                ddlGenre.DataBind();

                ShowFirstAlbum();
            }
        }

        private void ShowFirstAlbum()
        {
            Album album = entities.Albums.FirstOrDefault();
            if (album != null)
            {
                PopulateForm(album);
            }
        }

        private void PopulateForm(Album album)
        {
            hidId.Value = album.Id.ToString();
            txtTitle.Text = album.Name;
            txtDescr.Text = album.Description;
            txtImage.Text = album.CoverImage;
            txtRelDate.Text = album.ReleaseDate.ToString();
            ddlLabel.SelectedValue = entities.Labels.FirstOrDefault().Id.ToString();
            //ddlBand.SelectedValue = entities.Bands.FirstOrDefault().Id.ToString();
            //ddlGenre.SelectedValue = entities.Genres.FirstOrDefault().Id.ToString();
        }





        private void RefreshGrid()
        {

            gvAlbums.DataSource = entities.Albums.ToList();
            gvAlbums.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Album album = new Album();
            album.Name = txtTitle.Text;
            album.ReleaseDate = Convert.ToDateTime(txtRelDate.Text);
            album.Description = txtDescr.Text;
            album.CoverImage = txtImage.Text;



            int labelId = Convert.ToInt32(ddlLabel.SelectedValue);
            Label label = entities.Labels.FirstOrDefault(p => p.Id == labelId);
            album.Label = label;

            int bandId = Convert.ToInt32(ddlBand.SelectedValue);
            Band band = entities.Bands.FirstOrDefault(p => p.Id == bandId);
            album.Band = band;

            int genreId = Convert.ToInt32(ddlGenre.SelectedValue);
            Genre genre = entities.Genres.FirstOrDefault(p => p.Id == genreId);
            album.Genre = genre;

            entities.Albums.Add(album);

            entities.SaveChanges();
            RefreshGrid();
        }

      
  
        protected void btnNext_Click1(object sender, EventArgs e)
        {
            int currentId = Convert.ToInt32(hidId.Value);
            Album album = entities.Albums.FirstOrDefault(b => b.Id > currentId);

            if (album != null)
            {
                PopulateForm(album);
            }
        }

        protected void btnPrevious_Click(object sender, EventArgs e)
        {
            int currentId = Convert.ToInt32(hidId.Value);
            Album album = entities.Albums.ToList().LastOrDefault(a => a.Id < currentId);

            if (album != null)
            {
                PopulateForm(album);
            }
        }

        public Album GetNextAlbum(int id)
        {

            Album nextAlbum = new Album();

            nextAlbum = entities.Albums.ToList().FirstOrDefault(album => album.Id > id);

            return nextAlbum;

        }

        public Album GetPreviousAlbum(int id)
        {

            Album previousAlbum = new Album();

            previousAlbum = entities.Albums.ToList().FirstOrDefault(album => album.Id < id);

            return previousAlbum;

        }

   

        

        
        

    }
}