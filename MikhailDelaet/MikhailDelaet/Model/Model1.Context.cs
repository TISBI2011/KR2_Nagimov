﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class KR2_NagimovEntities : DbContext
    {
        public KR2_NagimovEntities()
            : base("name=KR2_NagimovEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Otdel> Otdel { get; set; }
        public virtual DbSet<Platforma> Platforma { get; set; }
        public virtual DbSet<Role> Role { get; set; }
        public virtual DbSet<Rukovodstvo> Rukovodstvo { get; set; }
        public virtual DbSet<Sotrudnik> Sotrudnik { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<User> User { get; set; }
        public virtual DbSet<Zadacha> Zadacha { get; set; }
        public virtual DbSet<Zaiavka> Zaiavka { get; set; }
        public virtual DbSet<ZaiavkaOtdel> ZaiavkaOtdel { get; set; }
        public virtual DbSet<Zakazchik> Zakazchik { get; set; }
    }
}