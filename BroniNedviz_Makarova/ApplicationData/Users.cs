namespace BroniNedviz_Makarova.ApplicationData
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Users
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Users()
        {
            Bronirovanie = new HashSet<Bronirovanie>();
        }

        [Key]
        public int UserID { get; set; }

        [StringLength(50)]
        public string NameUser { get; set; }

        [StringLength(50)]
        public string LastNameUser { get; set; }

        public int? RoleID { get; set; }

        [StringLength(50)]
        public string Login { get; set; }

        [StringLength(50)]
        public string Password { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Bronirovanie> Bronirovanie { get; set; }

        public virtual Roles Roles { get; set; }
    }
}
