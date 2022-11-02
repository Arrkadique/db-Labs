# Описание сущностей
(имя поля, тип, ограничения, связь с другими сущностями)

## Пользователь (User)
|Имя поля|Тип|Ограничения|Описание|
|:-----:|:--:|:---------:|:------:|
|email|VARCHAR(100)|PK, NOT NULL, UNIQUE|Первичный ключ|
|nickname|VARCHAR(30)|NOT NULL|Никнейм аккаунта|
|password|VARCHAR(30)|NOT NULL|Пароль аккаунта|
|balance|INT|NOT NULL|Баланс аккаунта|

## Диалоги (Dialogs)
|Имя поля|Тип|Ограничения|Описание|
|:-----:|:--:|:---------:|:------:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE|Первичный ключ|
|messages|INT|FK|Сообщения в диалоге|

## Сообщения (Messages)
|Имя поля|Тип|Ограничения|Описание|
|:-----:|:--:|:---------:|:------:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE|Первичный ключ|
|user_id|INT|NOT NULL|ID пользователя|
|message|VARCHAR(1000)|NOT NULL|Содержимое сообщения|

## Контакты (Contacts)
|Имя поля|Тип|Ограничения|Описание|
|:------:|:-:|:---------:|:------:|
|id|PK|AUTO INCREMENT, NOT NULL, UNIQUE|Первичный ключ|
|user_id|INT|NOT NULL|ID пользователя|

## Баланс (Balance)
|Имя поля|Тип|Ограничения|Описание|
|:------:|:-:|:---------:|:------:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE|Первичный ключ|
|balance|INT|FK, NOT NULL|Баланс пользователя|

## Настройки клиента (User settings)
|Имя поля|Тип|Ограничения|Описание|
|:------:|:-:|:---------:|:------:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE|Первичный ключ|
|color|VARCHAR(100)|NOT NULL|Цвет клиента|

## Архив диалогов (Dialog archive)
|Имя поля|Тип|Ограничения|Описание|
|:------:|:-:|:---------:|:------:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE|Первичный ключ|
|dialog_id|INT|FK, NOT NULL|Номер диалога|

## Избранные сообщения (Favorite messages)
|Имя поля|Тип|Ограничения|Описание|
|:------:|:-:|:---------:|:------:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE|Первичный ключ|
|message_id|VARCHAR(100)|NOT NULL|Сообщение|

## Беседы (Conversations)
|Имя поля|Тип|Ограничения|Описание|
|:------:|:-:|:---------:|:------:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE|Первичный ключ|
|user_id|INT|NOT NULL|ID пользователей|
|messages|INT|FK|Сообщения в беседе|

## Роли (Roles)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
| id | INT | PK, AUTO INCREMENT, NOT NULL, UNIQUE | первичный ключ |
| name | VARCHAR(50) | NOT NULL | название роли |
| permission | VARCHAR(128) | NOT NULL | право пользователя |

## Логи (Logs)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
| id | INT | PK, AUTO INCREMENT, NOT NULL, UNIQUE | первичный ключ |
| user | VARCHAR(100) | FK, NOT NULL | внешний ключ на Аккаунт |
| type | VARCHAR(50) | NOT NULL | тип лога(CREATE/UPDATE/DELETE) |

