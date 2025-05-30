namespace BroniNedviz_Makarova.ApplicationData
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("GrafikUborki")]
    public partial class GrafikUborki
    {
        [Key]
        public int GrafikID { get; set; }

        public int? ObjectID { get; set; }

        [StringLength(50)]
        public string Worker { get; set; }

        public DateTime? PeriodTime { get; set; }

        public virtual Objects Objects { get; set; }
    }
}
