package educationManagementSystem.model.user;

import educationManagementSystem.model.Role;
import educationManagementSystem.model.Token;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * Модель группы. Записывается в БД в таблицу с имененм groups
 * @author habatoo, dmitriysamus
 *
 * @param "id" - primary key таблицы groups.
 * @param "users" - пользователи в группе.
 * @param "teacher" - учитель в группе.
 * @see Teacher
 * @see User
 */
@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "groups")
public class Group {
    @Id
    private Integer groupNum;

    @ManyToOne
    @JoinColumn(name = "TEACHER_ID")
    private User teacher;

    @OneToMany(fetch = FetchType.EAGER, orphanRemoval = true)
    private Set<User> users = new HashSet<>();

    public Group(Integer groupNum) {
        this.groupNum = groupNum;
    }
}
