namespace BroniNedviz_Makarova.ApplicationData
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Clients
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Clients()
        {
            Bronirovanie = new HashSet<Bronirovanie>();
        }

        [Key]
        public int ClientID { get; set; }

        [StringLength(50)]
        public string NameClient { get; set; }

        [StringLength(50)]
        public string LastNameClient { get; set; }

        [StringLength(50)]
        public string OtchestvoClient { get; set; }

        [Column(TypeName = "date")]
        public DateTime? DateOfBirth { get; set; }

        [StringLength(50)]
        public string Phone { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Bronirovanie> Bronirovanie { get; set; }
    }
}
