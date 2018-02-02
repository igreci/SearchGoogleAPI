using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SearchGoogleAPIone.GoogleApi
{
    public class Context
    {
        [Key]
        public int Id { get; set; }
        public string title { get; set; }
    }
}