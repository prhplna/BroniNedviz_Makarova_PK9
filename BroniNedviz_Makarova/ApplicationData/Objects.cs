namespace BroniNedviz_Makarova.ApplicationData
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Objects
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Objects()
        {
            Bronirovanie = new HashSet<Bronirovanie>();
            GrafikUborki = new HashSet<GrafikUborki>();
        }

        [Key]
        public int ObjectID { get; set; }

        [StringLength(50)]
        public string Address { get; set; }

        public int? OwnerID { get; set; }

        [StringLength(50)]
        public string CategoryObject { get; set; }

        public int? StatusObject { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Bronirovanie> Bronirovanie { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GrafikUborki> GrafikUborki { get; set; }

        public virtual OwnersObjects OwnersObjects { get; set; }

        public virtual StatusObject StatusObject1 { get; set; }
    }
}
