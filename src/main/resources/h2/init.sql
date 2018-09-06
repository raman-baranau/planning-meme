--Insert into users
INSERT INTO USERS(id, username, email, password) VALUES(1, 'user1', 'user1@gmail.com', 'qwerty');
INSERT INTO USERS(id, username, email, password) VALUES(2, 'user2', 'user2@gmail.com', 'qwerty');
INSERT INTO USERS(id, username, email, password) VALUES(3, 'user3', 'user3@gmail.com', 'qwerty');
INSERT INTO USERS(id, username, email, password) VALUES(4, 'user4', 'user4@gmail.com', 'qwerty');
INSERT INTO USERS(id, username, email, password) VALUES(5, 'user5', 'user5@gmail.com', 'qwerty');

--Insert into stories
INSERT INTO STORIES(id, description) VALUES(1, 'No description');
INSERT INTO STORIES(id, description) VALUES(2, 'No description2');
INSERT INTO STORIES(id, description) VALUES(3, 'No description3');
INSERT INTO STORIES(id, description) VALUES(4, 'No description4');
INSERT INTO STORIES(id, description) VALUES(5, 'No description5');

--Insert into votes
INSERT INTO VOTES(id, story_id, start_date, finish_date) VALUES(1, 1, '2018-04-05-08.48.28.020005', '2018-04-05-08.49.28.020005');
INSERT INTO VOTES(id, story_id, start_date, finish_date) VALUES(2, 1, '2018-04-05-09.49.28.020005', '2018-04-05-09.59.28.020005');
INSERT INTO VOTES(id, story_id, start_date, finish_date) VALUES(3, 2, '2018-04-05-09.50.28.020005', '2018-04-05-09.52.28.020005');
INSERT INTO VOTES(id, story_id, start_date, finish_date) VALUES(4, 3, '2018-04-05-09.51.28.020005', '2018-04-05-09.53.28.020005');
INSERT INTO VOTES(id, story_id, start_date, finish_date) VALUES(5, 3, '2018-04-05-09.54.28.020005', '2018-04-05-09.55.28.020005');
INSERT INTO VOTES(id, story_id, start_date, finish_date) VALUES(6, 4, '2018-04-05-09.56.28.020005', '2018-04-05-09.58.28.020005');
INSERT INTO VOTES(id, story_id, start_date, finish_date) VALUES(7, 4, '2018-04-05-09.59.28.020005', '2018-04-05-09.59.38.020005');
INSERT INTO VOTES(id, story_id, start_date, finish_date) VALUES(8, 5, '2018-04-05-10.51.28.020005', '2018-04-05-10.53.28.020005');

--Insert into boards
INSERT INTO BOARDS(id, name, admin_id) VALUES(1, 'Board1', 1);
INSERT INTO BOARDS(id, name, admin_id) VALUES(2, 'Board1', 2);

--Insert into estimate_stories
INSERT INTO ESTIMATE_STORIES(id, story_id, estimate) VALUES (1, 1, 5);
INSERT INTO ESTIMATE_STORIES(id, story_id, estimate) VALUES (2, 2, 5);
INSERT INTO ESTIMATE_STORIES(id, story_id, estimate) VALUES (3, 3, 5);
INSERT INTO ESTIMATE_STORIES(id, story_id, estimate) VALUES (4, 4, 5);
INSERT INTO ESTIMATE_STORIES(id, story_id, estimate) VALUES (5, 5, 5);

--Insert into users_votes
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(1, 3, 1);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(1, 3, 2);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(1, 3, 3);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(1, 5, 5);

INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(2, 5, 1);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(2, 5, 2);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(2, 5, 3);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(2, 5, 5);

INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(3, 5, 2);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(3, 5, 3);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(3, 5, 5);

INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(4, 3, 1);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(4, 3, 2);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(4, 3, 3);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(4, 5, 5);

INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(5, 5, 1);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(5, 5, 2);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(5, 5, 3);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(5, 5, 5);

INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(6, 3, 1);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(6, 3, 2);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(6, 3, 3);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(6, 5, 5);

INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(7, 5, 1);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(7, 5, 2);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(7, 5, 3);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(7, 5, 5);

INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(8, 5, 1);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(8, 5, 2);
INSERT INTO USERS_VOTES(vote_id, estimate, user_id) VALUES(8, 5, 3);

--Insert into boards_users
INSERT INTO BOARDS_USERS(user_id, board_id) VALUES(1, 1);
INSERT INTO BOARDS_USERS(user_id, board_id) VALUES(2, 1);
INSERT INTO BOARDS_USERS(user_id, board_id) VALUES(3, 1);
INSERT INTO BOARDS_USERS(user_id, board_id) VALUES(5, 1);

INSERT INTO BOARDS_USERS(user_id, board_id) VALUES(1, 2);
INSERT INTO BOARDS_USERS(user_id, board_id) VALUES(2, 2);
INSERT INTO BOARDS_USERS(user_id, board_id) VALUES(3, 2);
INSERT INTO BOARDS_USERS(user_id, board_id) VALUES(5, 2);