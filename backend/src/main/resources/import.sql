INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$efAKHcdzfnBwg5yCvuiOMeiu8pB6TuvNayPjVAZpopc1Ijx95Wyu2');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Yellow', 'bob@gmail.com', '$2a$10$efAKHcdzfnBwg5yCvuiOMeiu8pB6TuvNayPjVAZpopc1Ijx95Wyu2');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$efAKHcdzfnBwg5yCvuiOMeiu8pB6TuvNayPjVAZpopc1Ijx95Wyu2');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);


INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://www.picpedia.org/suspension-file/images/online-courses.jpg', 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0',TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z',1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0',TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z',1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id ) VALUES ('Trilha HTM','Trilha principal do curso',1,'https://www.picpedia.org/suspension-file/images/online-courses.jpg',1,1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id ) VALUES ('Forum','Tire suas dúvidas',2,'https://www.picpedia.org/suspension-file/images/online-courses.jpg',2,1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id ) VALUES ('Lives','Live exclusiva para a truma',3,'https://www.picpedia.org/suspension-file/images/online-courses.jpg',0,1);

INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capitulo 1','Neste capítulo vamos começar',1,'https://www.picpedia.org/suspension-file/images/online-courses.jpg',1,null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capitulo 2','Neste capítulo vamos continuar',2,'https://www.picpedia.org/suspension-file/images/online-courses.jpg',1,1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capitulo 3','Neste capítulo vamos finalizar',3,'https://www.picpedia.org/suspension-file/images/online-courses.jpg',1,2);

INSERT INTO tb_enrollment(user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES(1,1,TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z',null, true, false);
INSERT INTO tb_enrollment(user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES(2,1,TIMESTAMP WITH TIME ZONE '2020-11-21T11:00:00Z',null, true, false);

INSERT INTO tb_lesson (title, position, section_id) Values('Aula 1 do capítulo 1', 1, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES(1, 'Material de apoio: abc', 'https://www.youtube.com/watch?v=sqbqoR-lMf8'); 

INSERT INTO tb_lesson (title, position, section_id) Values('Aula 2 do capítulo 1', 2, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES(2, '', 'https://www.youtube.com/watch?v=sqbqoR-lMf8'); 

INSERT INTO tb_lesson (title, position, section_id) Values('Aula 3 do capítulo 1', 3, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES(3, '', 'https://www.youtube.com/watch?v=sqbqoR-lMf8');
 
INSERT INTO tb_lesson (title, position, section_id) Values('Tarefa do capítulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (4, 'Realizar tarefa do capítulo 1', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-11-30T13:00:00Z');  

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES(1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES(2, 1, 1);

INSERT INTO tb_deliver(uri, moment, status, feedback, correct_count, lesson_id, user_id, offer_id) VALUES ('https://github.com/robcosta/desafio-empregados-auth.git', TIMESTAMP WITH TIME ZONE '2020-11-30T13:00:00Z', 0, null, null, 4, 1, 1);
INSERT INTO tb_deliver(uri, moment, status, feedback, correct_count, lesson_id, user_id, offer_id) VALUES ('https://github.com/robcosta/desafio-empregados-auth.git', TIMESTAMP WITH TIME ZONE '2020-12-05T13:00:00Z', 2, 'Primeiro Feedback - Favor estudar mais', null, 4, 1, 1);
INSERT INTO tb_deliver(uri, moment, status, feedback, correct_count, lesson_id, user_id, offer_id) VALUES ('https://github.com/robcosta/desafio-empregados-auth.git', TIMESTAMP WITH TIME ZONE '2020-12-05T19:00:00Z', 1, 'Segundo feedback - Parabéns, aprovado', 4, 4, 1, 1);
