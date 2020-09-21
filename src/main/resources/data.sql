INSERT INTO USUARIO(nome, email, senha) VALUES('Aluno', 'aluno@teste.com', '$2a$10$dcEMDH75iK/O49uJdwXNF.glZSMRWfiO0cjcPiR4tPm./IhKcLDIq');
INSERT INTO USUARIO(nome, email, senha) VALUES('Moderador', 'moderador@teste.com', '$2a$10$dcEMDH75iK/O49uJdwXNF.glZSMRWfiO0cjcPiR4tPm./IhKcLDIq');

INSERT INTO PERFIL(id, role) VALUES(1, 'ROLE_ALUNO');
INSERT INTO PERFIL(id, role) VALUES(2, 'ROLE_MODERADOR');

INSERT INTO USUARIO_PERFIS(usuario_id, perfis_id) VALUES(1, 1);
INSERT INTO USUARIO_PERFIS(usuario_id, perfis_id) VALUES(2, 2);

INSERT INTO CURSO(nome, categoria) VALUES('Spring Boot', 'Programação');
INSERT INTO CURSO(nome, categoria) VALUES('HTML 5', 'Front-end');

INSERT INTO TOPICO(titulo, mensagem, status, data_criacao, autor_id, curso_id) VALUES('Dúvida 1', 'Erro ao criar projeto', 'NAO_RESPONDIDO', '2019-05-05 20:00:00', 1, 1);
INSERT INTO TOPICO(titulo, mensagem, status, data_criacao, autor_id, curso_id) VALUES('Dúvida 2', 'Projeto não compila', 'NAO_RESPONDIDO','2019-05-05 20:00:00', 1, 1);
INSERT INTO TOPICO(titulo, mensagem, status, data_criacao, autor_id, curso_id) VALUES('Dúvida 3', 'Tag HTML', 'NAO_RESPONDIDO','2019-05-05 20:00:00', 1, 2);