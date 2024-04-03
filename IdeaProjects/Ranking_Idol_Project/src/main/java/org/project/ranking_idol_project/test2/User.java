package org.project.ranking_idol_project.test2;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Getter
@Setter
@NoArgsConstructor
@Document(collection="users")
public class User {
    @Id
    private String id;
    private String name;
    private String email;

}
