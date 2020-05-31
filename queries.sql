/*
добавление пользователей
*/
INSERT INTO users (name, email, creation_time, password) 
VALUE ('Александр', 'alex58@gmail.com', '2020-05-31', 'alex_legend'), 
	  ('Леонид', 'leo@yandex.ru', '2020-06-01', 'king_leonid');
/*
добавление существующих проектов
*/
INSERT INTO projects (name, user_id) 
VALUE ('Входящие', 1), 
      ('Учеба', 2),
	  ('Работа', 2),
	  ('Домашние дела', 1),
	  ('Авто', 1);

/*
добавление существующих задач
*/
INSERT INTO tasks (name, creation_time, deadline_time, file, status, user_id, project_id) 
VALUE ('Собеседование в IT компании', '2020-06-05', '2020-08-05', '', 0, 2, 3), 
	  ('Выполнить тестовое задание', '2020-05-01', '2020-05-05', '', 0, 2, 3),
	  ('Сделать задание первого раздела', '2019-12-11', '2019-12-21', '', 1, 2, 2),
	  ('Встреча с другом', '2020-05-03', '2020-05-07', '', 0, 1, 1),
	  ('Купить корм для кота', '2020-03-05', null, '', 0, 1, 4),
	  ('Заказать пиццу', '2020-04-30', null, '', 0, 1, 4);

/*
получить список из всех проектов для одного пользователя
*/
SELECT * FROM projects WHERE user_id = '1';
/*
получить список из всех задач для одного проекта
*/
SELECT * FROM tasks WHERE project_id = '3';
/*
пометить задачу как выполненную
*/
UPDATE tasks SET status = true WHERE name = 'Заказать пиццу';
/*
обновить название задачи по её идентификатору
*/
UPDATE tasks SET name = 'Заказать пиццу и колу' WHERE id = '6';