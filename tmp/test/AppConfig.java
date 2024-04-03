package org.project.ranking_idol_project.test1;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.core.ReactiveMongoClientFactoryBean;

@Configuration
public class AppConfig {
    /*
     * Use the standard Mongo driver API to create a com.mongodb.client.MongoClient instance.
     */
    @Bean
    public com.mongodb.reactivestreams.client.MongoClient mongoClient() {
        return com.mongodb.reactivestreams.client.MongoClients.create("mongodb://localhost:27017");
    }

    @Bean
    public ReactiveMongoClientFactoryBean mongo() {
        ReactiveMongoClientFactoryBean mongo = new ReactiveMongoClientFactoryBean();
        mongo.setHost("localhost");
        return mongo;
    }
}
