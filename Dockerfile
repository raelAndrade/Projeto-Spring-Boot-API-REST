# Imagem básica que vai ser utilizado
FROM openjdk:8-jdk-alpine 
# Criar um usuário no sistema criado, como o nome spring, para não rodar com usuário root
RUN addgroup -S spring && adduser -S spring -G spring 
# Trocar de usuário para usuário spring
USER spring:spring 
# Cria um argumento que foi gerado dentro do target e colocar o nome do arquivo na variável de ambiente JAR_FILE
ARG JAR_FILE=target/*.jar 
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Xmx512m","-Dserver.port=${PORT}","-jar","/app.jar"]