using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SearchGoogleAPIone.GoogleApi
{
    public class Queries
    {
        [Key]
        public int Id { get; set; }
        public List<Request> request { get; set; }
        public List<NextPage> nextPage { get; set; }
    }
}