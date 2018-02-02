using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SearchGoogleAPIone.GoogleApi
{
    public class Aggregaterating
    {
        [Key]
        public int Id { get; set; }
        public string ratingvalue { get; set; }
        public string ratingcount { get; set; }
    }
}