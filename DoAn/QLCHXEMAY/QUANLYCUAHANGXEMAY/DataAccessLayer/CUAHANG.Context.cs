﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataAccessLayer
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class Entities : DbContext
    {
        public Entities()
            : base("name=Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<tb_HOADON> tb_HOADON { get; set; }
        public virtual DbSet<tb_KHACHHANG> tb_KHACHHANG { get; set; }
        public virtual DbSet<tb_LOAIXE> tb_LOAIXE { get; set; }
        public virtual DbSet<tb_NHACUNGCAP> tb_NHACUNGCAP { get; set; }
        public virtual DbSet<tb_NHANVIEN> tb_NHANVIEN { get; set; }
        public virtual DbSet<tb_XEMAY> tb_XEMAY { get; set; }
        public virtual DbSet<tb_CHITIETHOADON> tb_CHITIETHOADON { get; set; }
    
        [DbFunction("Entities", "CHARTXE")]
        public virtual IQueryable<CHARTXE_Result> CHARTXE()
        {
            return ((IObjectContextAdapter)this).ObjectContext.CreateQuery<CHARTXE_Result>("[Entities].[CHARTXE]()");
        }
    }
}
