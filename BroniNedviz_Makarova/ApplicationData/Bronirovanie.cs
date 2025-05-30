namespace BroniNedviz_Makarova.ApplicationData
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Bronirovanie")]
    public partial class Bronirovanie
    {
        [Key]
        public int BronID { get; set; }

        public int? ObjectID { get; set; }

        public int? ClientID { get; set; }

        public int? UserID { get; set; }

        [Column(TypeName = "date")]
        public DateTime? DateGo { get; set; }

        [Column(TypeName = "date")]
        public DateTime? DateEnd { get; set; }

        [StringLength(50)]
        public string Count { get; set; }

        [StringLength(50)]
        public string Oplata { get; set; }

        public virtual Clients Clients { get; set; }

        public virtual Objects Objects { get; set; }

        public virtual Users Users { get; set; }
    }
}
