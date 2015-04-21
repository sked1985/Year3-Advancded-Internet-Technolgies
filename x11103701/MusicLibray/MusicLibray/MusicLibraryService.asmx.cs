using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace MusicLibray
{
    /// <summary>
    /// Summary description for MusicLibraryService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class MusicLibraryService : System.Web.Services.WebService
    {

        private MusicLibraryContainer entities = new MusicLibraryContainer();


        [WebMethod]
        public string[] GetAlbumsByBand(string name)
        {
            string[] albumDetails;
            List<Album> albums = new List<Album>();
            Band band;
            band = entities.Bands
                    .FirstOrDefault(b => b.Name == name);

            if (band != null)
            {
                albums = band.Albums.ToList();
                int numberOfAlbums = albums.Count;
                albumDetails = new string[numberOfAlbums];
                for (int i = 0; i < numberOfAlbums; i++)
                {
                    albumDetails[i] = albums[i].Name;

                }
            }
            else
            {
                albumDetails = null;

            }

            return albumDetails;

        }

        [WebMethod]
        public string[] GetAlbumssByTitle(string titlePart)
        {
            List<string> albums = new List<string>();

            foreach (var album in entities.Albums
                                         .Where(b => b.Name.Contains(titlePart))
                                         .ToList())
            {
                albums.Add(album.Name);
            }

            return albums.ToArray();

        }
    }
}
