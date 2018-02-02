using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SearchGoogleAPIone.GoogleApi
{
    public class CseThumbnail
    {
        [Key]
        public int Id { get; set; }
        public string width { get; set; }
        public string height { get; set; }
        public string src { get; set; }
    }
}