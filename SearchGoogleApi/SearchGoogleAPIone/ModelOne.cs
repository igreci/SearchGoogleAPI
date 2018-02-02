namespace SearchGoogleAPIone
{
    using SearchGoogleAPIone.GoogleApi;
    using System;
    using System.Data.Entity;
    using System.Linq;

    public class ModelOne : DbContext
    {
        // Your context has been configured to use a 'ModelOne' connection string from your application's 
        // configuration file (App.config or Web.config). By default, this connection string targets the 
        // 'SearchGoogleAPIone.ModelOne' database on your LocalDb instance. 
        // 
        // If you wish to target a different database and/or database provider, modify the 'ModelOne' 
        // connection string in the application configuration file.
        public ModelOne()
            : base("name=ModelOne")
        {
        }

        // Add a DbSet for each entity type that you want to include in your model. For more information 
        // on configuring and using a Code First model, see http://go.microsoft.com/fwlink/?LinkId=390109.

        // public virtual DbSet<MyEntity> MyEntities { get; set; }
        public virtual DbSet<Aggregaterating> Aggregateratings { get; set; }
        public virtual DbSet<Context> Contexts { get; set; }
        public virtual DbSet<CseImage> CseImages { get; set; }
        public virtual DbSet<CseThumbnail> CseThumbnails { get; set; }
        public virtual DbSet<Hcard> Hcards { get; set; }
        public virtual DbSet<Item> Items { get; set; }
        public virtual DbSet<Itemlist> Itemlists { get; set; }
        public virtual DbSet<Metatag> Metatags { get; set; }
        public virtual DbSet<Mobileapplication> Mobileapplications { get; set; }
        public virtual DbSet<NextPage> NextPages { get; set; }
        public virtual DbSet<Offer> Offers { get; set; }
        public virtual DbSet<Organization> Organizations { get; set; }
        public virtual DbSet<Pagemap> Pagemaps { get; set; }
        public virtual DbSet<Person> Persons { get; set; }
        public virtual DbSet<Queries> Queriess { get; set; }
        public virtual DbSet<Request> Requests { get; set; }
        public virtual DbSet<RootObject> RootObjects { get; set; }
        public virtual DbSet<SearchInformation> SearchInformations { get; set; }
        public virtual DbSet<Url> Urls { get; set; }
        public virtual DbSet<Webpage> Webpages { get; set; }
        
    }

    //public class MyEntity
    //{
    //    public int Id { get; set; }
    //    public string Name { get; set; }
    //}
}