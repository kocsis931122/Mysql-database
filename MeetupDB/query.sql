SELECT * FROM meetupdb.meetup where id = 1;
SELECT * FROM statuses where Value = 'Tentative';
SELECT * FROM meetupdb.users where Name Like 'Asz%ta'
SELECT * FROM meetupdb.users where Name Like 'a%'
SELECT * FROM meetupdb.users where Birthdate Like '198%'
SELECT * FROM meetupdb.users where Name Between 'B' and 'X';
SELECT * FROM meetupdb.meetup where Location = 'Homrogd';