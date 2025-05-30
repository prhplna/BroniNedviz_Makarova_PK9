using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace BroniNedviz_Makarova.ApplicationData
{
    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model1")
        {
        }

        public virtual DbSet<Bronirovanie> Bronirovanie { get; set; }
        public virtual DbSet<Clients> Clients { get; set; }
        public virtual DbSet<GrafikUborki> GrafikUborki { get; set; }
        public virtual DbSet<Objects> Objects { get; set; }
        public virtual DbSet<OwnersObjects> OwnersObjects { get; set; }
        public virtual DbSet<Roles> Roles { get; set; }
        public virtual DbSet<StatusObject> StatusObject { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<Users> Users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Clients>()
                .HasMany(e => e.Bronirovanie)
                .WithOptional(e => e.Clients)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Objects>()
                .HasMany(e => e.Bronirovanie)
                .WithOptional(e => e.Objects)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Objects>()
                .HasMany(e => e.GrafikUborki)
                .WithOptional(e => e.Objects)
                .WillCascadeOnDelete();

            modelBuilder.Entity<OwnersObjects>()
                .HasMany(e => e.Objects)
                .WithOptional(e => e.OwnersObjects)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Roles>()
                .HasMany(e => e.Users)
                .WithOptional(e => e.Roles)
                .WillCascadeOnDelete();

            modelBuilder.Entity<StatusObject>()
                .HasMany(e => e.Objects)
                .WithOptional(e => e.StatusObject1)
                .HasForeignKey(e => e.StatusObject)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Users>()
                .HasMany(e => e.Bronirovanie)
                .WithOptional(e => e.Users)
                .WillCascadeOnDelete();
        }
    }
}
