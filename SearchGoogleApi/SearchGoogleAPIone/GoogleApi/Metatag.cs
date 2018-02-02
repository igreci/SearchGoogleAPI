using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SearchGoogleAPIone.GoogleApi
{

    public class Metatag
    {
        [Key]
        public int Id { get; set; }
        [JsonProperty("title")]
        public string Title { get; set; }

        [JsonProperty("og:title")]
        public string OgTitle { get; set; }

        [JsonProperty("og:description")]
        public string OgDescription { get; set; }

        [JsonProperty("og:image")]
        public string OgImage { get; set; }

        [JsonProperty("viewport")]
        public string Viewport { get; set; }

        [JsonProperty("format-detection")]
        public string FormatDetection { get; set; }

        [JsonProperty("referrer")]
        public string Referrer { get; set; }

        [JsonProperty("og:type")]
        public string OgType { get; set; }

        [JsonProperty("og:url")]
        public string OgUrl { get; set; }

        [JsonProperty("fb:pages")]
        public string FbPages { get; set; }

        [JsonProperty("twitter:card")]
        public string TwitterCard { get; set; }

        [JsonProperty("twitter:url")]
        public string TwitterUrl { get; set; }

        [JsonProperty("twitter:title")]
        public string TwitterTitle { get; set; }

        [JsonProperty("twitter:description")]
        public string TwitterDescription { get; set; }

        [JsonProperty("twitter:image")]
        public string TwitterImage { get; set; }
    }
}