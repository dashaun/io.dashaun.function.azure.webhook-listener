package io.dashaun.function.azure.webhooklistener;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;
import reactor.core.publisher.Mono;

import java.util.Collections;
import java.util.function.Function;

@SpringBootApplication
public class Application {

	public static void main(String[] args) {
		SpringApplication app = new SpringApplication(Application.class);
		String functionServerPort = System.getenv("FUNCTIONS_HTTPWORKER_PORT");
		if (functionServerPort != null) {
			app.setDefaultProperties(Collections
					.singletonMap("server.port", functionServerPort));
		}
		app.setWebApplicationType(WebApplicationType.REACTIVE);
		app.run(args);
	}

}

@Component
class OrganizationWebhookClient implements Function<Mono<String>, Mono<String>> {

	public Mono<String> apply(Mono<String> mono) {
		return mono.map(name -> "Hello, " + name + "!\n");
	}
}