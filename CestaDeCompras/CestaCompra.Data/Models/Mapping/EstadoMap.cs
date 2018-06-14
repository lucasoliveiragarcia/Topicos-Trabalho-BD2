﻿using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models.Mapping
{
    public class EstadoMap : EntityTypeConfiguration<Estado>
    {
        public EstadoMap()
        {
            //Chave Primaria
            this.HasKey(t => t.IdEstado);


            //Propriedades  & Column Mappings
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(100)
                .HasColumnName("Nome");

            this.Property(t => t.IdEstado)
                .IsRequired()
                .HasColumnName("IdEstado");

            //Table
            this.ToTable("Estado");

            //Relacionamentos
            this.HasRequired(d => d.Pais)
                .WithMany(d => d.Estados)
                .Map(m => m.MapKey("IdPais"));

        }
    }
}