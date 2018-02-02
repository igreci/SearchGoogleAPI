namespace SearchGoogleAPIone.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class First : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Aggregateratings",
                c => new
                    {
                        ratingvalue = c.String(nullable: false, maxLength: 128),
                        ratingcount = c.String(),
                        Pagemap_Id = c.Int(),
                    })
                .PrimaryKey(t => t.ratingvalue)
                .ForeignKey("dbo.Pagemaps", t => t.Pagemap_Id)
                .Index(t => t.Pagemap_Id);
            
            CreateTable(
                "dbo.Contexts",
                c => new
                    {
                        title = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => t.title);
            
            CreateTable(
                "dbo.CseImages",
                c => new
                    {
                        src = c.String(nullable: false, maxLength: 128),
                        Pagemap_Id = c.Int(),
                    })
                .PrimaryKey(t => t.src)
                .ForeignKey("dbo.Pagemaps", t => t.Pagemap_Id)
                .Index(t => t.Pagemap_Id);
            
            CreateTable(
                "dbo.CseThumbnails",
                c => new
                    {
                        width = c.String(nullable: false, maxLength: 128),
                        height = c.String(),
                        src = c.String(),
                        Pagemap_Id = c.Int(),
                    })
                .PrimaryKey(t => t.width)
                .ForeignKey("dbo.Pagemaps", t => t.Pagemap_Id)
                .Index(t => t.Pagemap_Id);
            
            CreateTable(
                "dbo.Hcards",
                c => new
                    {
                        fn = c.String(nullable: false, maxLength: 128),
                        title = c.String(),
                        Pagemap_Id = c.Int(),
                    })
                .PrimaryKey(t => t.fn)
                .ForeignKey("dbo.Pagemaps", t => t.Pagemap_Id)
                .Index(t => t.Pagemap_Id);
            
            CreateTable(
                "dbo.Itemlists",
                c => new
                    {
                        itemlistelement = c.String(nullable: false, maxLength: 128),
                        Pagemap_Id = c.Int(),
                    })
                .PrimaryKey(t => t.itemlistelement)
                .ForeignKey("dbo.Pagemaps", t => t.Pagemap_Id)
                .Index(t => t.Pagemap_Id);
            
            CreateTable(
                "dbo.Items",
                c => new
                    {
                        kind = c.String(nullable: false, maxLength: 128),
                        title = c.String(),
                        htmlTitle = c.String(),
                        link = c.String(),
                        displayLink = c.String(),
                        snippet = c.String(),
                        htmlSnippet = c.String(),
                        cacheId = c.String(),
                        formattedUrl = c.String(),
                        htmlFormattedUrl = c.String(),
                        pagemap_Id = c.Int(),
                        RootObject_kind = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => t.kind)
                .ForeignKey("dbo.Pagemaps", t => t.pagemap_Id)
                .ForeignKey("dbo.RootObjects", t => t.RootObject_kind)
                .Index(t => t.pagemap_Id)
                .Index(t => t.RootObject_kind);
            
            CreateTable(
                "dbo.Pagemaps",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Metatags",
                c => new
                    {
                        Title = c.String(nullable: false, maxLength: 128),
                        OgTitle = c.String(),
                        OgDescription = c.String(),
                        OgImage = c.String(),
                        Viewport = c.String(),
                        FormatDetection = c.String(),
                        Referrer = c.String(),
                        OgType = c.String(),
                        OgUrl = c.String(),
                        FbPages = c.String(),
                        TwitterCard = c.String(),
                        TwitterUrl = c.String(),
                        TwitterTitle = c.String(),
                        TwitterDescription = c.String(),
                        TwitterImage = c.String(),
                        Pagemap_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Title)
                .ForeignKey("dbo.Pagemaps", t => t.Pagemap_Id)
                .Index(t => t.Pagemap_Id);
            
            CreateTable(
                "dbo.Mobileapplications",
                c => new
                    {
                        url = c.String(nullable: false, maxLength: 128),
                        image = c.String(),
                        name = c.String(),
                        screenshot = c.String(),
                        description = c.String(),
                        datepublished = c.String(),
                        numdownloads = c.String(),
                        softwareversion = c.String(),
                        operatingsystems = c.String(),
                        contentrating = c.String(),
                        Pagemap_Id = c.Int(),
                    })
                .PrimaryKey(t => t.url)
                .ForeignKey("dbo.Pagemaps", t => t.Pagemap_Id)
                .Index(t => t.Pagemap_Id);
            
            CreateTable(
                "dbo.Offers",
                c => new
                    {
                        url = c.String(nullable: false, maxLength: 128),
                        price = c.String(),
                        Pagemap_Id = c.Int(),
                    })
                .PrimaryKey(t => t.url)
                .ForeignKey("dbo.Pagemaps", t => t.Pagemap_Id)
                .Index(t => t.Pagemap_Id);
            
            CreateTable(
                "dbo.Organizations",
                c => new
                    {
                        url = c.String(nullable: false, maxLength: 128),
                        name = c.String(),
                        genre = c.String(),
                        Pagemap_Id = c.Int(),
                    })
                .PrimaryKey(t => t.url)
                .ForeignKey("dbo.Pagemaps", t => t.Pagemap_Id)
                .Index(t => t.Pagemap_Id);
            
            CreateTable(
                "dbo.People",
                c => new
                    {
                        org = c.String(nullable: false, maxLength: 128),
                        role = c.String(),
                        name = c.String(),
                        jobtitle = c.String(),
                        worksfor = c.String(),
                        Pagemap_Id = c.Int(),
                    })
                .PrimaryKey(t => t.org)
                .ForeignKey("dbo.Pagemaps", t => t.Pagemap_Id)
                .Index(t => t.Pagemap_Id);
            
            CreateTable(
                "dbo.Webpages",
                c => new
                    {
                        name = c.String(nullable: false, maxLength: 128),
                        image = c.String(),
                        Pagemap_Id = c.Int(),
                    })
                .PrimaryKey(t => t.name)
                .ForeignKey("dbo.Pagemaps", t => t.Pagemap_Id)
                .Index(t => t.Pagemap_Id);
            
            CreateTable(
                "dbo.NextPages",
                c => new
                    {
                        title = c.String(nullable: false, maxLength: 128),
                        totalResults = c.String(),
                        searchTerms = c.String(),
                        count = c.Int(nullable: false),
                        startIndex = c.Int(nullable: false),
                        inputEncoding = c.String(),
                        outputEncoding = c.String(),
                        safe = c.String(),
                        cx = c.String(),
                        Queries_Id = c.Int(),
                    })
                .PrimaryKey(t => t.title)
                .ForeignKey("dbo.Queries", t => t.Queries_Id)
                .Index(t => t.Queries_Id);
            
            CreateTable(
                "dbo.Queries",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Requests",
                c => new
                    {
                        title = c.String(nullable: false, maxLength: 128),
                        totalResults = c.String(),
                        searchTerms = c.String(),
                        count = c.Int(nullable: false),
                        startIndex = c.Int(nullable: false),
                        inputEncoding = c.String(),
                        outputEncoding = c.String(),
                        safe = c.String(),
                        cx = c.String(),
                        Queries_Id = c.Int(),
                    })
                .PrimaryKey(t => t.title)
                .ForeignKey("dbo.Queries", t => t.Queries_Id)
                .Index(t => t.Queries_Id);
            
            CreateTable(
                "dbo.RootObjects",
                c => new
                    {
                        kind = c.String(nullable: false, maxLength: 128),
                        context_title = c.String(maxLength: 128),
                        queries_Id = c.Int(),
                        searchInformation_searchTime = c.Double(),
                        url_type = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => t.kind)
                .ForeignKey("dbo.Contexts", t => t.context_title)
                .ForeignKey("dbo.Queries", t => t.queries_Id)
                .ForeignKey("dbo.SearchInformations", t => t.searchInformation_searchTime)
                .ForeignKey("dbo.Urls", t => t.url_type)
                .Index(t => t.context_title)
                .Index(t => t.queries_Id)
                .Index(t => t.searchInformation_searchTime)
                .Index(t => t.url_type);
            
            CreateTable(
                "dbo.SearchInformations",
                c => new
                    {
                        searchTime = c.Double(nullable: false),
                        formattedSearchTime = c.String(),
                        totalResults = c.String(),
                        formattedTotalResults = c.String(),
                    })
                .PrimaryKey(t => t.searchTime);
            
            CreateTable(
                "dbo.Urls",
                c => new
                    {
                        type = c.String(nullable: false, maxLength: 128),
                        template = c.String(),
                    })
                .PrimaryKey(t => t.type);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.RootObjects", "url_type", "dbo.Urls");
            DropForeignKey("dbo.RootObjects", "searchInformation_searchTime", "dbo.SearchInformations");
            DropForeignKey("dbo.RootObjects", "queries_Id", "dbo.Queries");
            DropForeignKey("dbo.Items", "RootObject_kind", "dbo.RootObjects");
            DropForeignKey("dbo.RootObjects", "context_title", "dbo.Contexts");
            DropForeignKey("dbo.Requests", "Queries_Id", "dbo.Queries");
            DropForeignKey("dbo.NextPages", "Queries_Id", "dbo.Queries");
            DropForeignKey("dbo.Items", "pagemap_Id", "dbo.Pagemaps");
            DropForeignKey("dbo.Webpages", "Pagemap_Id", "dbo.Pagemaps");
            DropForeignKey("dbo.People", "Pagemap_Id", "dbo.Pagemaps");
            DropForeignKey("dbo.Organizations", "Pagemap_Id", "dbo.Pagemaps");
            DropForeignKey("dbo.Offers", "Pagemap_Id", "dbo.Pagemaps");
            DropForeignKey("dbo.Mobileapplications", "Pagemap_Id", "dbo.Pagemaps");
            DropForeignKey("dbo.Metatags", "Pagemap_Id", "dbo.Pagemaps");
            DropForeignKey("dbo.Itemlists", "Pagemap_Id", "dbo.Pagemaps");
            DropForeignKey("dbo.Hcards", "Pagemap_Id", "dbo.Pagemaps");
            DropForeignKey("dbo.CseThumbnails", "Pagemap_Id", "dbo.Pagemaps");
            DropForeignKey("dbo.CseImages", "Pagemap_Id", "dbo.Pagemaps");
            DropForeignKey("dbo.Aggregateratings", "Pagemap_Id", "dbo.Pagemaps");
            DropIndex("dbo.RootObjects", new[] { "url_type" });
            DropIndex("dbo.RootObjects", new[] { "searchInformation_searchTime" });
            DropIndex("dbo.RootObjects", new[] { "queries_Id" });
            DropIndex("dbo.RootObjects", new[] { "context_title" });
            DropIndex("dbo.Requests", new[] { "Queries_Id" });
            DropIndex("dbo.NextPages", new[] { "Queries_Id" });
            DropIndex("dbo.Webpages", new[] { "Pagemap_Id" });
            DropIndex("dbo.People", new[] { "Pagemap_Id" });
            DropIndex("dbo.Organizations", new[] { "Pagemap_Id" });
            DropIndex("dbo.Offers", new[] { "Pagemap_Id" });
            DropIndex("dbo.Mobileapplications", new[] { "Pagemap_Id" });
            DropIndex("dbo.Metatags", new[] { "Pagemap_Id" });
            DropIndex("dbo.Items", new[] { "RootObject_kind" });
            DropIndex("dbo.Items", new[] { "pagemap_Id" });
            DropIndex("dbo.Itemlists", new[] { "Pagemap_Id" });
            DropIndex("dbo.Hcards", new[] { "Pagemap_Id" });
            DropIndex("dbo.CseThumbnails", new[] { "Pagemap_Id" });
            DropIndex("dbo.CseImages", new[] { "Pagemap_Id" });
            DropIndex("dbo.Aggregateratings", new[] { "Pagemap_Id" });
            DropTable("dbo.Urls");
            DropTable("dbo.SearchInformations");
            DropTable("dbo.RootObjects");
            DropTable("dbo.Requests");
            DropTable("dbo.Queries");
            DropTable("dbo.NextPages");
            DropTable("dbo.Webpages");
            DropTable("dbo.People");
            DropTable("dbo.Organizations");
            DropTable("dbo.Offers");
            DropTable("dbo.Mobileapplications");
            DropTable("dbo.Metatags");
            DropTable("dbo.Pagemaps");
            DropTable("dbo.Items");
            DropTable("dbo.Itemlists");
            DropTable("dbo.Hcards");
            DropTable("dbo.CseThumbnails");
            DropTable("dbo.CseImages");
            DropTable("dbo.Contexts");
            DropTable("dbo.Aggregateratings");
        }
    }
}
