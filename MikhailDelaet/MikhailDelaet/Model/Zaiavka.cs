//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MikhailDelaet.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Zaiavka
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Zaiavka()
        {
            this.ZaiavkaOtdel = new HashSet<ZaiavkaOtdel>();
        }
    
        public int Id { get; set; }
        public int ZakazchikId { get; set; }
        public string Opisanie { get; set; }
        public int Platforma { get; set; }
        public System.DateTime ObrashenieDate { get; set; }
        public System.DateTime Deadline { get; set; }
    
        public virtual Platforma Platforma1 { get; set; }
        public virtual Zakazchik Zakazchik { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ZaiavkaOtdel> ZaiavkaOtdel { get; set; }
    }
}
