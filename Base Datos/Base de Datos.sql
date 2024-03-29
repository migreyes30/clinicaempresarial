SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USUARIO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[USUARIO](
	[USUARIO_ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE_USUARIO] [varchar](50) NULL,
	[CORREO_USUARIO] [varchar](50) NULL,
	[CONTRASENA_USUARIO] [varchar](50) NULL,
	[PERFIL_USUARIO] [varchar](10) NULL,
 CONSTRAINT [PK_USUARIO] PRIMARY KEY CLUSTERED 
(
	[USUARIO_ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CAMBIO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CAMBIO](
	[CAMBIO_ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE_CAMBIO] [varchar](50) NULL,
	[TIPO_CAMBIO] [varchar](10) NULL,
	[AREA_ID] [int] NULL,
	[FECHA_RECEPCION] [datetime] NULL,
	[FECHA_APROBACION] [datetime] NULL,
	[FECHA_REALIZACION] [datetime] NULL,
	[ESTADO_CAMBIO] [varchar](15) NULL,
	[ARCHIVO] [text] NULL,
 CONSTRAINT [PK_CAMBIO] PRIMARY KEY CLUSTERED 
(
	[CAMBIO_ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NIVEL2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NIVEL2](
	[NIVEL2_ID] [int] IDENTITY(1,1) NOT NULL,
	[STATUS] [varchar](15) NULL,
	[FECHA_ASIGNACION] [datetime] NULL,
	[FECHA_APROBACION] [datetime] NULL,
	[COMENTARIOS] [text] NULL,
	[CAMBIO_ID] [int] NULL,
	[AREA_SOPORTE_ID] [int] NULL,
 CONSTRAINT [PK_NIVEL2] PRIMARY KEY CLUSTERED 
(
	[NIVEL2_ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AREA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AREA](
	[AREA_ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE_AREA] [varchar](50) NULL,
	[DEPTO_ID] [int] NULL,
 CONSTRAINT [PK_AREA] PRIMARY KEY CLUSTERED 
(
	[AREA_ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DEPARTAMENTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DEPARTAMENTO](
	[DEPTO_ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE_DEPTO] [varchar](50) NULL,
	[REPONSABLE_ID] [int] NULL,
 CONSTRAINT [PK_DEPARTAMENTO] PRIMARY KEY CLUSTERED 
(
	[DEPTO_ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AREAS_SOPORTE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AREAS_SOPORTE](
	[AREA_SOPORTE_ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE_AREA_SOPORTE] [varchar](50) NULL,
	[REPONSABLE_ID] [int] NULL,
 CONSTRAINT [PK_AREA_SOPORTE] PRIMARY KEY CLUSTERED 
(
	[AREA_SOPORTE_ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NIVEL0]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NIVEL0](
	[NIVEL0_ID] [int] IDENTITY(1,1) NOT NULL,
	[STATUS] [varchar](15) NULL,
	[AREA_ID] [int] NULL,
	[FECHA_ASIGNACION] [datetime] NULL,
	[FECHA_APROBACION] [datetime] NULL,
	[COMENTARIOS] [text] NULL,
	[CAMBIO_ID] [int] NULL,
 CONSTRAINT [PK_NIVEL0] PRIMARY KEY CLUSTERED 
(
	[NIVEL0_ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NIVEL1_QA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NIVEL1_QA](
	[NIVEL1_QA_ID] [int] IDENTITY(1,1) NOT NULL,
	[STATUS] [varchar](50) NULL,
	[AREA_ID] [int] NULL,
	[FECHA_ASIGNACION] [datetime] NULL,
	[FECHA_APROBACION] [datetime] NULL,
	[COMENTARIOS] [text] NULL,
	[NIVEL2] [bit] NULL,
	[CAMBIO_ID] [int] NULL,
 CONSTRAINT [PK_NIVEL1_QA] PRIMARY KEY CLUSTERED 
(
	[NIVEL1_QA_ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BACKUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BACKUP](
	[BACKUP_ID] [int] IDENTITY(1,1) NOT NULL,
	[STATUS] [varchar](15) NULL,
	[FECHA_ASIGNACION] [datetime] NULL,
	[FECHA_APROBACION] [datetime] NULL,
	[COMENTARIOS] [text] NULL,
	[CAMBIO_ID] [int] NULL,
 CONSTRAINT [PK_BACKUP] PRIMARY KEY CLUSTERED 
(
	[BACKUP_ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NIVEL1_HSE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NIVEL1_HSE](
	[NIVEL1_HSE_ID] [int] IDENTITY(1,1) NOT NULL,
	[STATUS] [varchar](15) NULL,
	[AREA_ID] [int] NULL,
	[FECHA_ASIGNACION] [datetime] NULL,
	[FECHA_APROBACION] [datetime] NULL,
	[COMENTARIOS] [text] NULL,
	[NIVEL2] [bit] NULL,
	[CAMBIO_ID] [int] NULL,
 CONSTRAINT [PK_NIVEL1_HSE] PRIMARY KEY CLUSTERED 
(
	[NIVEL1_HSE_ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INCIDENTES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[INCIDENTES](
	[INCIDENTE_ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE_INCIDENTE] [varchar](50) NULL,
	[FECHA_INCIDENTE] [datetime] NULL,
	[AREA_ID] [int] NULL,
 CONSTRAINT [PK_INCIDENTES] PRIMARY KEY CLUSTERED 
(
	[INCIDENTE_ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NIVEL2_AREAS_SOPORTE]') AND parent_object_id = OBJECT_ID(N'[dbo].[NIVEL2]'))
ALTER TABLE [dbo].[NIVEL2]  WITH CHECK ADD  CONSTRAINT [FK_NIVEL2_AREAS_SOPORTE] FOREIGN KEY([AREA_SOPORTE_ID])
REFERENCES [dbo].[AREAS_SOPORTE] ([AREA_SOPORTE_ID])
GO
ALTER TABLE [dbo].[NIVEL2] CHECK CONSTRAINT [FK_NIVEL2_AREAS_SOPORTE]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NIVEL2_CAMBIO1]') AND parent_object_id = OBJECT_ID(N'[dbo].[NIVEL2]'))
ALTER TABLE [dbo].[NIVEL2]  WITH CHECK ADD  CONSTRAINT [FK_NIVEL2_CAMBIO1] FOREIGN KEY([CAMBIO_ID])
REFERENCES [dbo].[CAMBIO] ([CAMBIO_ID])
GO
ALTER TABLE [dbo].[NIVEL2] CHECK CONSTRAINT [FK_NIVEL2_CAMBIO1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AREA_DEPARTAMENTO]') AND parent_object_id = OBJECT_ID(N'[dbo].[AREA]'))
ALTER TABLE [dbo].[AREA]  WITH CHECK ADD  CONSTRAINT [FK_AREA_DEPARTAMENTO] FOREIGN KEY([DEPTO_ID])
REFERENCES [dbo].[DEPARTAMENTO] ([DEPTO_ID])
GO
ALTER TABLE [dbo].[AREA] CHECK CONSTRAINT [FK_AREA_DEPARTAMENTO]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DEPARTAMENTO_USUARIO]') AND parent_object_id = OBJECT_ID(N'[dbo].[DEPARTAMENTO]'))
ALTER TABLE [dbo].[DEPARTAMENTO]  WITH CHECK ADD  CONSTRAINT [FK_DEPARTAMENTO_USUARIO] FOREIGN KEY([REPONSABLE_ID])
REFERENCES [dbo].[USUARIO] ([USUARIO_ID])
GO
ALTER TABLE [dbo].[DEPARTAMENTO] CHECK CONSTRAINT [FK_DEPARTAMENTO_USUARIO]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AREAS_SOPORTE_USUARIO]') AND parent_object_id = OBJECT_ID(N'[dbo].[AREAS_SOPORTE]'))
ALTER TABLE [dbo].[AREAS_SOPORTE]  WITH CHECK ADD  CONSTRAINT [FK_AREAS_SOPORTE_USUARIO] FOREIGN KEY([REPONSABLE_ID])
REFERENCES [dbo].[USUARIO] ([USUARIO_ID])
GO
ALTER TABLE [dbo].[AREAS_SOPORTE] CHECK CONSTRAINT [FK_AREAS_SOPORTE_USUARIO]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NIVEL0_AREA]') AND parent_object_id = OBJECT_ID(N'[dbo].[NIVEL0]'))
ALTER TABLE [dbo].[NIVEL0]  WITH CHECK ADD  CONSTRAINT [FK_NIVEL0_AREA] FOREIGN KEY([AREA_ID])
REFERENCES [dbo].[AREA] ([AREA_ID])
GO
ALTER TABLE [dbo].[NIVEL0] CHECK CONSTRAINT [FK_NIVEL0_AREA]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NIVEL0_CAMBIO1]') AND parent_object_id = OBJECT_ID(N'[dbo].[NIVEL0]'))
ALTER TABLE [dbo].[NIVEL0]  WITH CHECK ADD  CONSTRAINT [FK_NIVEL0_CAMBIO1] FOREIGN KEY([CAMBIO_ID])
REFERENCES [dbo].[CAMBIO] ([CAMBIO_ID])
GO
ALTER TABLE [dbo].[NIVEL0] CHECK CONSTRAINT [FK_NIVEL0_CAMBIO1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NIVEL1_QA_AREA]') AND parent_object_id = OBJECT_ID(N'[dbo].[NIVEL1_QA]'))
ALTER TABLE [dbo].[NIVEL1_QA]  WITH CHECK ADD  CONSTRAINT [FK_NIVEL1_QA_AREA] FOREIGN KEY([AREA_ID])
REFERENCES [dbo].[AREA] ([AREA_ID])
GO
ALTER TABLE [dbo].[NIVEL1_QA] CHECK CONSTRAINT [FK_NIVEL1_QA_AREA]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NIVEL1_QA_CAMBIO1]') AND parent_object_id = OBJECT_ID(N'[dbo].[NIVEL1_QA]'))
ALTER TABLE [dbo].[NIVEL1_QA]  WITH CHECK ADD  CONSTRAINT [FK_NIVEL1_QA_CAMBIO1] FOREIGN KEY([CAMBIO_ID])
REFERENCES [dbo].[CAMBIO] ([CAMBIO_ID])
GO
ALTER TABLE [dbo].[NIVEL1_QA] CHECK CONSTRAINT [FK_NIVEL1_QA_CAMBIO1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BACKUP_CAMBIO]') AND parent_object_id = OBJECT_ID(N'[dbo].[BACKUP]'))
ALTER TABLE [dbo].[BACKUP]  WITH CHECK ADD  CONSTRAINT [FK_BACKUP_CAMBIO] FOREIGN KEY([CAMBIO_ID])
REFERENCES [dbo].[CAMBIO] ([CAMBIO_ID])
GO
ALTER TABLE [dbo].[BACKUP] CHECK CONSTRAINT [FK_BACKUP_CAMBIO]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NIVEL1_HSE_AREA]') AND parent_object_id = OBJECT_ID(N'[dbo].[NIVEL1_HSE]'))
ALTER TABLE [dbo].[NIVEL1_HSE]  WITH CHECK ADD  CONSTRAINT [FK_NIVEL1_HSE_AREA] FOREIGN KEY([AREA_ID])
REFERENCES [dbo].[AREA] ([AREA_ID])
GO
ALTER TABLE [dbo].[NIVEL1_HSE] CHECK CONSTRAINT [FK_NIVEL1_HSE_AREA]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NIVEL1_HSE_CAMBIO1]') AND parent_object_id = OBJECT_ID(N'[dbo].[NIVEL1_HSE]'))
ALTER TABLE [dbo].[NIVEL1_HSE]  WITH CHECK ADD  CONSTRAINT [FK_NIVEL1_HSE_CAMBIO1] FOREIGN KEY([CAMBIO_ID])
REFERENCES [dbo].[CAMBIO] ([CAMBIO_ID])
GO
ALTER TABLE [dbo].[NIVEL1_HSE] CHECK CONSTRAINT [FK_NIVEL1_HSE_CAMBIO1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_INCIDENTES_AREA]') AND parent_object_id = OBJECT_ID(N'[dbo].[INCIDENTES]'))
ALTER TABLE [dbo].[INCIDENTES]  WITH CHECK ADD  CONSTRAINT [FK_INCIDENTES_AREA] FOREIGN KEY([AREA_ID])
REFERENCES [dbo].[AREA] ([AREA_ID])
GO
ALTER TABLE [dbo].[INCIDENTES] CHECK CONSTRAINT [FK_INCIDENTES_AREA]
