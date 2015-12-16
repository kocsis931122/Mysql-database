update meetupdb.meetup
set Location = 'Tomor', Topic = 'Animals'
where Location = 'Homrogd';

update meetupdb.meetup
set Location = 'Budapest'
where id = 3;

update meetupdb.users
set Email = 'lakatos@elemi.hu'
where id = 1;

update meetupdb.users
set Avatar = 'GL & HF'
where Name = 'Halam Kamir';

update meetupdb.users
set Introduction = 'Egyedi lett gg bb'
where Name = 'Vadik Ladik';
