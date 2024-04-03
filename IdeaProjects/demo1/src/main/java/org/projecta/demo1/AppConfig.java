package org.projecta.demo1;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {
    /*
 * Use the standard Mongo driver API to create a com.mongodb.client.MongoClient instance.
 */
    @Bean
    public com.mongodb.reactivestreams.client.MongoClient mongoClient() {
        return com.mongodb.reactivestreams.client.MongoClients.create("mongodb://localhost:27017");
    }
}
