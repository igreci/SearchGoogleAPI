using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SearchGoogleAPIone.GoogleApi
{
    public class Offer
    {
        [Key]
        public int Id { get; set; }
        public string url { get; set; }
        public string price { get; set; }
    }
}