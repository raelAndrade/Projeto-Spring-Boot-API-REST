# Projeto Spring Boot API REST
Esse projeto foi desenvolvido com o objetivo em aplicar os conceitos REST.
#### REST (Representational State Transfer)
É um modelo de arquitetura para sistemas distribuídos. Toda arquitetura de sistema comunicando com outros é um sistema distribuído.
##### Conceitos
- Recursos
- Identificador de recursos (URI)
    * Aluno (/alunos)
    * Topico (/topicos)
    * Resposta (/respostas)
    * Curso (/cursos)
- Manipulação de recursos (Verbos HTTP) 
    * GET (/topicos) - Busca todos os tópicos
    * GET (/topicos/{id}) - Busca por um tópico pelo id
    * POST (/topicos) - Salva um tópico
    * PUT (/topicos/{id}) - Atualiza o tópico pelo id
    * DELETE (/topicos/{id}) - Deleta o tópico pelo id
- Representações de recursos (Media Type)
    * JSON (JavaScript Object Notation)
    * XML (Extensible markup Language)
#### Banco de dados utilizado
- H2 (É um banco de dados Open Source que funciona em memória)

Para manipular os dados que enviamos no corpo da requisição e recebemos com resposta, foi utilizado o padrão DTO (Data Transfer Object), assim conseguimos blindar mais a nossa camada de domain.