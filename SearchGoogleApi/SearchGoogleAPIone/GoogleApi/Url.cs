using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SearchGoogleAPIone.GoogleApi
{
    public class Url
    {
        [Key]
        public int Id { get; set; }
        public string type { get; set; }
        public string template { get; set; }
    }
}