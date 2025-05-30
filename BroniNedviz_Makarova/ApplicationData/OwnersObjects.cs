namespace BroniNedviz_Makarova.ApplicationData
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class OwnersObjects
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public OwnersObjects()
        {
            Objects = new HashSet<Objects>();
        }

        [Key]
        public int OwnerID { get; set; }

        [StringLength(50)]
        public string NameOwner { get; set; }

        [StringLength(50)]
        public string LastNameOwner { get; set; }

        [StringLength(50)]
        public string OtchestvoOwner { get; set; }

        [StringLength(50)]
        public string Phone { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Objects> Objects { get; set; }
    }
}
