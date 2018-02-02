using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SearchGoogleAPIone.GoogleApi
{
    public class Webpage
    {
        [Key]
        public int Id { get; set; }
        public string name { get; set; }
        public string image { get; set; }
    }
}