package org.project.ranking_idol_project.test1;

import com.mongodb.reactivestreams.client.MongoClients;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.core.SimpleReactiveMongoDatabaseFactory;

@Configuration
public class ReactiveMongoConfiguration {
    @Bean
    public ReactiveMongoDatabaseFactory mongoDatabaseFactory() {
        return new SimpleReactiveMongoDatabaseFactory(
                MongoClients.create(), "database");
    }
}
