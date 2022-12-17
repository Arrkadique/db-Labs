use messenger;

delimiter //
create trigger addUserLog after insert on User
for each row
begin
	insert into Logs(log_type, user_id)
    values(concat('user ', new.nickname ,' was added'), new.id);
end//
delimiter ;

delimiter //
create trigger deleteUserLog after delete on User
for each row
begin
	insert into Logs(log_type, user_id)
    values(concat('user ', old.nickname ,' was deleted'), old.id);
end//
delimiter ;

delimiter //
create trigger updateUserLog after update on User
for each row
begin
	insert into Logs(log_type, user_id)
    values(concat('user ', old.nickname ,' changed password'), old.id);
end//
delimiter ;

delimiter //
create trigger addMessageLog after insert on Message
for each row
begin
	insert into Logs(log_type, user_id)
    values(concat('user ', (select nickname from User where id = new.user_id),' wrote a message'), new.user_id);
end//
delimiter ;