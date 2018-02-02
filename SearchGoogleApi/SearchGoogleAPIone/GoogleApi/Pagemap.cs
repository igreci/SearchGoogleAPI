using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SearchGoogleAPIone.GoogleApi
{
    public class Pagemap
    {
        [Key]
        public int Id { get; set; }
        public List<CseThumbnail> cse_thumbnail { get; set; }
        public List<Mobileapplication> mobileapplication { get; set; }
        public List<Aggregaterating> aggregaterating { get; set; }
        public List<Metatag> metatags { get; set; }
        public List<Offer> offer { get; set; }
        public List<Organization> organization { get; set; }
        public List<CseImage> cse_image { get; set; }
        public List<Itemlist> itemlist { get; set; }
        public List<Hcard> hcard { get; set; }
        public List<Person> person { get; set; }
        public List<Webpage> webpage { get; set; }
    }
}