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
    
    public partial class Zadacha
    {
        public int Id { get; set; }
        public int ZaiavkaOtdelId { get; set; }
        public int SotrudnikId { get; set; }
    
        public virtual Sotrudnik Sotrudnik { get; set; }
        public virtual ZaiavkaOtdel ZaiavkaOtdel { get; set; }
    }
}
