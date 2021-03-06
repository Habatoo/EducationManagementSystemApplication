package educationManagementSystem.model.user;

import educationManagementSystem.model.education.Group;
import educationManagementSystem.model.Role;
import educationManagementSystem.model.Token;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * Модель администратора. Записывается в БД в таблицу с имененм admins
 * реализует методы администрирования интерфейса {@link Administer}
 * @author habatoo, dmitriysamus
 *
 * @param "id" - primary key таблицы admins.
 * @param "username" - имя пользователя - предпоалагается строковоя переменная Имя + Фамилия.
 * @param "password" - пароль, в БД хранится в виде хешированном виде.
 * @param "email" - email пользователя.
 * @param "creationDate" - дата создания пользователя.
 * @param "roles" - роли пользователя - определяют возможности доступа - администратор, учитель, пользователь
 * @see Role
 * @param "token" - токен сессии пользователя
 * @see Token (токены пользователя).
 */
@Getter
@Setter
@NoArgsConstructor
public class Admin extends AbstractUser implements Administer{
        public Admin(String username, String email, String password) {
                super(username, email, password);
        }

        /**
         * Метод {@link Admin#createGroup} создает новую группу {@link Group}
         * и добавляет в нее пользователей List<User> users.
         *
         * @param groupNum номер группы
         */
        @Override
        public void createGroup(Integer groupNum) {
                //Implementation
        }

        /**
         * Метод {@link Admin#createGroup} удаляет группу {@link Group}
         * по id группы.
         *
         * @param groupNum id группы
         */
        @Override
        public void deleteGroup(Integer groupNum) {
                //Implementation
        }
}
