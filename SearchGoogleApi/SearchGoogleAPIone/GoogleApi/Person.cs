using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SearchGoogleAPIone.GoogleApi
{
    public class Person
    {
        [Key]
        public int Id { get; set; }
        public string org { get; set; }
        public string role { get; set; }
        public string name { get; set; }
        public string jobtitle { get; set; }
        public string worksfor { get; set; }
    }
}