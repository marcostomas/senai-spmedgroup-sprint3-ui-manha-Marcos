USE SPMEDGROUP_M;


INSERT INTO TBL_tipoUsuario (TituloTipoUsuario)
VALUES		('Administrador'),
			('Comum'),
			('Médico');
GO

INSERT INTO TBL_localizacao (NomePais, NomeEstado, NomeCidade)
VALUES		('Brasil','SP', 'São Paulo');
GO

INSERT INTO TBL_especialidade (TituloEspecialidade)
VALUES		('Pediatra'),
			('Clínico Geral'),
			('Dermatologista'),
			('Otorrinolaringologista');
GO

INSERT INTO TBL_spMedGroup (RazaoSocial, CNPJ, EnderecoSede)
VALUES		('SP Medical Group', '12.345.656/0000-01', 'Alameda Barão de Limeira - 539');
GO

INSERT INTO TBL_usuario (IdTipoUsuario, IdGrupo, NumSocial, DataNascimento, Nome, Nacionalidade)
VALUES		(1, 1,'123.456.789-11', '1974-03-04', 'Ademmir', 'Brasileiro'),
			(2, 1,'009.876.543-21', '1999-08-31', 'Gustavo', 'Brasileiro'),
			(2, 1,'567.890.012-34', '2005-12-27', 'Catarina', 'Brasileiro'),
			(3, 1,'123.567.890-23', '1980-03-12', 'Saulo', 'Brasileiro'),
			(3, 1,'233.543.544-33', '1990-12-03', 'Carol', 'Brasileiro');
GO


INSERT INTO TBL_paciente (IdUsuario)
VALUES		(2),
			(3);
GO

INSERT INTO TBL_administrador (IdUsuario)
VALUES		(1);
GO

INSERT INTO TBL_clinica (IdLocal, IdGrupo, RazaoSocial, CNPJ, Endereco)
VALUES		(1, 1,'Clinica Santa Cecília', '12.345.656/0000-01', 'Alameda Barão de Limeira - 539'),
			(1, 1,'Clinica Paulista', '23.567.433/0001-00', 'Avenida Paulista - 1339');
GO

INSERT INTO TBL_medico (IdClinica, IdEspecialidade, IdUsuario, CRM)
VALUES		(1, 2, 4, '12345'),
			(2, 1, 5, '23456');
GO

INSERT INTO TBL_consulta (IdPaciente, IdMedico, IdEspecialidade, IdClinica, StatusConsulta, Receita, DataConsulta)
VALUES		(1, 1, 2, 1, 1, 'Tomar Antibióticos por 7 dias', '2020-03-31'),
			(2, 2, 1, 1, 1, 'Repousar em cas por 8 dias', '2020-02-12');
GO