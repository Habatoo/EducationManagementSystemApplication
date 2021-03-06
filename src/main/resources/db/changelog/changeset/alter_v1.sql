alter table groups_users add constraint UK_ewsdo90bf97qmunwue89wq623 unique (users_id);
alter table journals_lessons add constraint UK_e8b4bm1axo7ws0kdnw6up0e9o unique (lessons_id);
alter table lessons_grades add constraint UK_41khxxs7vj5s12t035lo2dne1 unique (grades_id);
alter table lessons_tasks add constraint UK_bxdembw098x7f26rndjve3jrh unique (tasks_id);
alter table tokens add constraint UK_na3v9f8s7ucnj16tylrs822qj unique (token);
alter table users add constraint UKr43af9ap4edm43mmtq01oddj6 unique (username);
alter table users add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);
alter table users_grades add constraint UK_go4w37iori8nxya0u8dwcscuv unique (grades_id);
alter table users_groups add constraint UK_m163myjq3tb7hmhcaya4eiema unique (groups_group_num);
alter table grades add constraint FKmt7ytccr6ebljxbu05mlb5fif foreign key (lesson_id) references lessons;
alter table grades add constraint FK2udi8qqpoqmopyp47iy76jeq6 foreign key (student_id) references users;
alter table groups add constraint FKi59g3kcydhxlk2al3beq2llvi foreign key (journal_id) references journals;
alter table groups add constraint FKfbehr2v3qarkb2wxo7ex18fi4 foreign key (teacher_id) references users;
alter table groups_users add constraint FKtqn1wd1nl4s87rm85wtcsi763 foreign key (users_id) references users;
alter table groups_users add constraint FKbqkl8vw8p7l2iufa0l16jq5g foreign key (group_group_num) references groups;
alter table journals add constraint FKf3pvsq6if44kw9xpfkhx5ncnc foreign key (group_group_num) references groups;
alter table journals_lessons add constraint FKcnoe10jwf4iyrbhe92gxserks foreign key (lessons_id) references lessons;
alter table journals_lessons add constraint FK74wr5212ac9x5xcfoi008q7dc foreign key (journal_id) references journals;
alter table lessons add constraint FKaqx7p6uuxg741rcg0sd6j9808 foreign key (journal_id) references journals;
alter table lessons_grades add constraint FK4ru4plyup3syhnucidyoouwv7 foreign key (grades_id) references grades;
alter table lessons_grades add constraint FKaiof3j14drjw9mx2j9lnp35xv foreign key (lesson_id) references lessons;
alter table lessons_tasks add constraint FKdsjro7rs29mx14i30fc4d3ljn foreign key (tasks_id) references tasks;
alter table lessons_tasks add constraint FKpkmw4u0h2x0fxm8gy7d81dgoi foreign key (lesson_id) references lessons;
alter table tasks add constraint FKij2nuclq3hx0l5tanobfknbpw foreign key (lesson_id) references lessons;
alter table tokens add constraint FKg2u5odybkcjq2fowtslss1mmt foreign key (token_user_id) references users;
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles;
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users;
alter table users add constraint FKemfuglprp85bh5xwhfm898ysc foreign key (group_id) references groups;
alter table users_grades add constraint FKpprb5wxd3800o7w6an1dr8jcu foreign key (grades_id) references grades;
alter table users_grades add constraint FKfc0wr83lelj1vto2eygx4k7cn foreign key (user_id) references users;
alter table users_groups add constraint FKq80k73d8nr1h1w5by5dwel579 foreign key (groups_group_num) references groups;
alter table users_groups add constraint FKg6fu0mfuj9eqfd9aro1nc40nn foreign key (user_id) references users;