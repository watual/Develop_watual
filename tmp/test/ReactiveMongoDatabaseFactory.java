package org.project.ranking_idol_project.test1;

import com.mongodb.reactivestreams.client.MongoDatabase;
import org.springframework.dao.DataAccessException;
import reactor.core.publisher.Mono;

public interface ReactiveMongoDatabaseFactory {
    Mono<MongoDatabase> getDatabase() throws DataAccessException;

    Mono<MongoDatabase> getDatabase(String dbName) throws DataAccessException;
}
