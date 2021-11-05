package educationManagementSystem.model.education;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "lessons")
public class Lesson {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne(fetch = FetchType.EAGER)
    private Journal journal;

    @OneToMany(fetch = FetchType.EAGER, orphanRemoval = true)
    private Set<Task> tasks = new HashSet<>();

    @Column(name="lesson_date", updatable = false)
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime lessonDate;

    @OneToMany(fetch = FetchType.EAGER, orphanRemoval = true)
    private Set<Grade> grades = new HashSet<>();
}