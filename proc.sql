use messenger;

drop procedure if exists addUser;
drop procedure if exists deleteUser;
drop procedure if exists showUsers;

delimiter //
create procedure addUser
(
	email nvarchar(50),
	nickname nvarchar(50),
	user_password nvarchar(100),
	role_id int,
    balance int
)
begin
	insert into User(email, nickname, user_password, role_id, balance)
	values(email, nickname, user_password, role_id, balance);
    insert into Settings(color, user_id)
    values("black", (select id from User ORDER BY id DESC LIMIT 1));
end//
delimiter ;

delimiter //
create procedure deleteUser(in d_nickname varchar(50))
begin
	delete from Settings where (select id from User where nickname = d_nickname) = user_id; 
	delete from User where nickname=d_nickname;
end//
delimiter ;

delimiter //
create procedure showUsers()
begin
	select id, nickname, email from User;
end//
delimiter ;

delimiter //
create procedure addMessage(message nvarchar(1000), user_id int)
begin
	insert into Message(message, user_id)
    values(message, user_id);
end//
delimiter ;

drop procedure addMessage;

delimiter //
create procedure showMessages()
begin
	select user_id, message from Message;
end//
delimiter ;

delimiter //
create procedure showUserMessages(id int)
begin
	select user_id, message from Message
    where user_id = id;
end//
delimiter ;

delimiter //
create procedure showLogs()
begin
	select * from Logs;
end//
delimiter ;

delimiter //
create procedure showUserLogs(id int)
begin
	select user_id, log_type from Logs
    where user_id = id;
end//
delimiter ;

delimiter //
create procedure changeUserPassword(user_id int, u_password varchar(100))
begin
	update User
    set user_password = u_password 
    where id = user_id;
end//
delimiter ;

delimiter //
create procedure changeUserSettings(u_id int, new_color varchar(100))
begin
	update Settings
    set color = new_color
    where user_id = u_id;
end//
delimiter ;



call changeUserSettings(1, "BlackBlack");
call changeUserPassword(1, "1234123412");
call showLogs();
call showUserLogs(2);
call addMessage("Hi with trigger2", 1);
call showMessages();
call showUserMessages(2);
call addUser("qwerqwerqwer@mail.ru", "qwerqwer","password1", 1, 255);
call showUsers();
call deleteUser("qwerqwer");
