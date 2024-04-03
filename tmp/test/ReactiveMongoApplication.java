package org.project.ranking_idol_project.test1;

import com.mongodb.reactivestreams.client.MongoClients;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.ReactiveMongoOperations;
import org.springframework.data.mongodb.core.SimpleReactiveMongoDatabaseFactory;

public class ReactiveMongoApplication {

        public static void main(String[] args) throws Exception {

            ReactiveMongoOperations mongoOps = new MongoTemplate(
                    new SimpleReactiveMongoDatabaseFactory(
                            MongoClients.create(), "database"));
            // ...
        }
}
