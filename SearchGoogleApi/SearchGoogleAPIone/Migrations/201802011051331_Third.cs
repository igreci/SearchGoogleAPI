namespace SearchGoogleAPIone.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Third : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.ItemsModels",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                    })
                .PrimaryKey(t => t.Id);
            
            AddColumn("dbo.RootObjects", "ItemsModel_Id", c => c.Int());
            CreateIndex("dbo.RootObjects", "ItemsModel_Id");
            AddForeignKey("dbo.RootObjects", "ItemsModel_Id", "dbo.ItemsModels", "Id");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.RootObjects", "ItemsModel_Id", "dbo.ItemsModels");
            DropIndex("dbo.RootObjects", new[] { "ItemsModel_Id" });
            DropColumn("dbo.RootObjects", "ItemsModel_Id");
            DropTable("dbo.ItemsModels");
        }
    }
}
