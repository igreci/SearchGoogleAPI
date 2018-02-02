using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SearchGoogleAPIone.GoogleApi
{
    public class Mobileapplication
    {
        [Key]
        public int Id { get; set; }
        public string url { get; set; }
        public string image { get; set; }
        public string name { get; set; }
        public string screenshot { get; set; }
        public string description { get; set; }
        public string datepublished { get; set; }
        public string numdownloads { get; set; }
        public string softwareversion { get; set; }
        public string operatingsystems { get; set; }
        public string contentrating { get; set; }
    }
}