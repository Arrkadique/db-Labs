insert into Role
values(1, "admin"),
(2, "user"),
(3, "support");

insert into User
values(1, "qwer1@qwer.com", "user1", "password1", 1, 25),
(2, "qwer2@qwer.com", "user2", "password1", 2, 15),
(3, "qwer3@qwer.com", "user3", "password1", 2,255),
(4, "qwer4@qwer.com", "user4", "password1", 3,50);

insert into Logs
values (1, "user added", 1),
(2, "user added", 4),
(3, "user added", 2),
(4, "user added", 3);

insert into Contacts
values (1, 4, 1),
(2, 2, 1),
(3, 3, 2),
(4, 1, 3),
(5, 2, 3),
(6, 3, 4);

insert into Settings 
values (1, "red", 1),
(2, "blue", 2),
(3, "green", 3),
(4, "black", 4);

insert into Message
values (1, "hi!", 1),
(2, "Thanks!", 2),
(3, "Great!", 3),
(4, "How are you?", 4),
(5, "Good luck!", 2),
(6, "Morning!", 2);

insert into Message(message, user_id)
values("Morning2!", 2);

insert into FavoriteMessages
values (1, 3, 3),
(2, 2, 2),
(3, 2, 2),
(4, 4, 4),
(5, 1, 1);

insert into Archive
values (1, 1),
(2, 2),
(3, 3),
(4, 4);

insert into Dialog
values (1, 1),
(2, 4),
(3, 1),
(4, 4);


insert into UserDialogs
values(2, 1,2),
(3, 2,3),
(4, 3,4),
(5, 1,3);

insert into DialogMessage
values (1, 1, 2),
(2, 1, 3),
(3, 1, 4),
(4, 2, 3),
(5, 2, 1),
(6, 3, 6),
(7, 3, 1),
(8, 4, 6),
(9, 4, 5);



