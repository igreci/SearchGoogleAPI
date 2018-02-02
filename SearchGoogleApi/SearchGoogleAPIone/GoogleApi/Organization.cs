using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SearchGoogleAPIone.GoogleApi
{
    public class Organization
    {
        [Key]
        public int Id { get; set; }
        public string url { get; set; }
        public string name { get; set; }
        public string genre { get; set; }
    }
}