namespace BroniNedviz_Makarova.ApplicationData
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("StatusObject")]
    public partial class StatusObject
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public StatusObject()
        {
            Objects = new HashSet<Objects>();
        }

        [Key]
        public int StatusID { get; set; }

        [StringLength(50)]
        public string NameStatus { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Objects> Objects { get; set; }
    }
}
