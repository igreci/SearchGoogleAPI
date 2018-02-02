namespace SearchGoogleAPIone.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Fourth : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.RootObjects", "ItemsModel_Id", "dbo.ItemsModels");
            DropIndex("dbo.RootObjects", new[] { "ItemsModel_Id" });
            DropColumn("dbo.RootObjects", "ItemsModel_Id");
            DropTable("dbo.ItemsModels");
        }
        
        public override void Down()
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
    }
}
