﻿using System.Data.Entity.ModelConfiguration;

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
                .HasColumnName("nome");

            this.Property(t => t.IdEstado)
                .IsRequired()
                .HasColumnName("idestado");

            //Table
            this.ToTable("estado");
        }
    }
}