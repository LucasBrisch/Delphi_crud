-- Tabela de Professores
CREATE TABLE public.professores (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(70) NOT NULL,
	cpf VARCHAR(11) NOT NULL UNIQUE,
	ativo BOOLEAN NOT NULL DEFAULT true
);

-- Tabela de Disciplinas
CREATE TABLE public.disciplinas (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(40) NOT NULL,
	ativo BOOLEAN NOT NULL DEFAULT true
);

-- Tabela de Alunos
CREATE TABLE public.alunos (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(70) NOT NULL,
	ativo BOOLEAN DEFAULT true
);

-- Tabela de Turmas (depende de Professores e Disciplinas)
CREATE TABLE public.turmas (
	id SERIAL PRIMARY KEY,
	fk_id_professor INTEGER NOT NULL,
	fk_id_disciplina INTEGER NOT NULL,
	ativo BOOLEAN NOT NULL DEFAULT true,
	CONSTRAINT fk_professor FOREIGN KEY (fk_id_professor) REFERENCES public.professores(id),
	CONSTRAINT fk_disciplina FOREIGN KEY (fk_id_disciplina) REFERENCES public.disciplinas(id)
);

-- Tabela de Matrículas (depende de Turmas e Alunos)
CREATE TABLE public.matriculas (
	id SERIAL PRIMARY KEY,
	fk_id_turma INTEGER NOT NULL,
	fk_id_estudante INTEGER NOT NULL,
	ativo BOOLEAN NOT NULL DEFAULT true,
	CONSTRAINT fk_turma FOREIGN KEY (fk_id_turma) REFERENCES public.turmas(id),
	CONSTRAINT fk_aluno FOREIGN KEY (fk_id_estudante) REFERENCES public.alunos(id)
);