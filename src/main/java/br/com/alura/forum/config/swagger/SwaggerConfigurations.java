package br.com.alura.forum.config.swagger;

import java.util.Arrays;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import br.com.alura.forum.domain.Usuario;
import springfox.documentation.builders.ParameterBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.schema.ModelRef;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

@Configuration
public class SwaggerConfigurations {

	@Bean
	public Docket forumApi() {
		return new Docket(DocumentationType.SWAGGER_2) // Informando o tipo dessa documentação que é Swagger_2
				.select()
				.apis(RequestHandlerSelectors.basePackage("br.com.alura.forum")) // Informando em qual pacote deve começa a ler as classes do projeto
				.paths(PathSelectors.ant("/**")) // Quais end-point para o swagger começa a fazer uma análise
				.build()
				.ignoredParameterTypes(Usuario.class) // Ignore todas as urls que trabalham com a classe Usuario
				.globalOperationParameters(Arrays.asList(
						new ParameterBuilder()
						.name("Authorization")
						.description("Header para token JWT")
						.modelRef(new ModelRef("String"))
						.parameterType("header")
						.required(false)
						.build()));
	}
}
