using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using SearchGoogleAPIone.GoogleApi;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Data.Entity.Validation;
using System.Linq;
using System.Net;
using System.Text;
using System.Web.Mvc;
using System.Web.Services;
using System.Web.Services.Description;
using System.Web.UI.WebControls;

namespace SearchGoogleAPIone.Controllers
{
    public class HomeController : Controller
    {
        private ModelOne _db = new ModelOne();
        private List<RootObject> roLista = new List<RootObject>();


        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// Returns result list from base to view
        /// </summary>
        /// <param name="searchString">search string</param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Index(string searchString)
        {
            ViewBag.SearchString = searchString;
            RootObject ro = new RootObject();
            if (!string.IsNullOrEmpty(searchString))
            {
                List<Item> rezultatiLista = new List<Item>();
                string query = searchString;
                Session["Search"] = searchString;
                ViewBag.Search = searchString;

                GetPages(searchString);     
                List<Item> rezOne = _db.Items.ToList();

                rezultatiLista = rezOne.Where(x => x.title.Contains(query) || x.title.Contains(query.ToLower())).ToList();

                ViewBag.Lista = rezultatiLista;
                
                return View("Proba3", rezultatiLista);
            }
            else
            {
                return View();
            }
        }

        /// <summary>
        /// Collects api key, api id and search query
        /// </summary>
        /// <param name="query">search query string</param>
        /// <returns>full url</returns>
        public string UrlWithQueryString(string query)
        {
            string completeURL = "";
            string apiKey = "AIzaSyCgGO65qg3pOBrPS_CkLbyIrkcbSizDQp8";
            string apiId = "006177186945925827762:m2c6kv5zz3e";


            return completeURL = @"https://www.googleapis.com/customsearch/v1?key=" + apiKey + @"&cx=" + apiId + "&q=" + query/* "pola"*/;
        }
        
        /// <summary>
        /// Collects data from Google api as JSON and returns .NET object
        /// </summary>
        /// <param name="url">input string</param>
        public object GetDataFromGoogleSearch(string url)
        {
            string addressUrl = UrlWithQueryString(url);
            var client = new WebClient();
            var result = client.DownloadString(addressUrl);
            var proba = JsonConvert.DeserializeObject<RootObject>(result);
           
            return proba;
        }

        /// <summary>
        /// Save object to database
        /// </summary>
        /// <param name="rootObject">object to save</param>
        public void SaveDataToDB(RootObject rootObject)
        {
            RootObject roo = new RootObject();
            roo = rootObject;
            if (roo != null)
            {
                _db.RootObjects.Add(roo);

                try
                {
                    _db.SaveChanges();
                }
                catch (DbEntityValidationException exDBval)
                {
                    throw new DbEntityValidationException(exDBval.Message);
                }
                catch (Exception ex)
                {
                    throw new Exception(ex.Message);
                }
            }
        }
        /// <summary>
        /// Saves 10 pages to database
        /// </summary>
        /// <param name="url">url with query</param>
        public void GetPages(string url)
        {
            string pageNumberPrefix = "&start=";
            for (int i = 1; i < 92; i += 10)
            {
                RootObject root = new RootObject();
                root = (RootObject)GetDataFromGoogleSearch(url + pageNumberPrefix + i);
                SaveDataToDB(root);
            }
        }
        
        /// <summary>
        /// Calls a method to return excel file
        /// </summary>
        /// <returns></returns>
        public ActionResult ExcelFile()
        {
            string search = (string)(Session["Search"]);
            List<Item> rezOne = _db.Items.ToList();

            rezOne = rezOne.Where(x => x.title.Contains(search) || x.title.Contains(search.ToLower())).ToList();

            ExportToExcel(rezOne);

            return View("Index", rezOne);
        }

        /// <summary>
        /// Shows search result View
        /// </summary>
        /// <param name="search">String to search for</param>
        /// <returns>Search result View</returns>
        public ActionResult Search(string search)
        {
            string term = (string)(Session["Search"]);
            List<Item> rezOne = _db.Items.ToList();
            rezOne = rezOne.Where(x => x.title.Contains(term) || x.title.Contains(term.ToLower())).ToList();

            rezOne = rezOne.Where(x => x.title.Contains(search) || x.snippet.Contains(search)).ToList();

            return View(rezOne);
        }

        /// <summary>
        /// Returns Excel file
        /// </summary>
        /// <param name="ulaz">List of type Item</param>
        public void ExportToExcel(List<Item> ulaz)
        {
            string fileName = "Izlaz.xls";

            DataGrid dg = new DataGrid();
            dg.AllowPaging = false;
            dg.DataSource = ulaz;
            dg.DataBind();
            
            System.Web.HttpContext.Current.Response.Clear();
            System.Web.HttpContext.Current.Response.Buffer = true;
            System.Web.HttpContext.Current.Response.ContentEncoding = Encoding.UTF8;
            System.Web.HttpContext.Current.Response.Charset = "";
            System.Web.HttpContext.Current.Response.AddHeader("Content-Disposition", "attachment; filename=" + fileName);
            System.Web.HttpContext.Current.Response.ContentType = "application/vnd.ms-excel";
            System.IO.StringWriter stringWriter = new System.IO.StringWriter();
            System.Web.UI.HtmlTextWriter htmlTextWriter = new System.Web.UI.HtmlTextWriter(stringWriter);
            dg.RenderControl(htmlTextWriter);
            System.Web.HttpContext.Current.Response.Write(stringWriter.ToString());
            System.Web.HttpContext.Current.Response.End();
        }
        
    }
}