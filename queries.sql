use messenger;

select nickname, user_password, Message.message from User
join Message on Message.user_id = User.id;

select email, nickname, balance,
Settings.color, Logs.log_type from User
right join Logs on Logs.user_id = User.id
join Settings on Settings.user_id = User.id;

select id, archive_id from Dialog 
where id between 2 and 3;

select dialog_id, Message.message from DialogMessage
right join Message on Message.id = DialogMessage.message_id
where dialog_id < 3
order by dialog_id asc;

select dialog_id, message_id from DialogMessage
order by dialog_id desc;

select id, nickname, email, user_password from User;

select * from Settings;

select * from Logs;