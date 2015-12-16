INSERT INTO `meetup` VALUES(1,'2016-11-11 11:11:11','Homrogd','Dogs','This is a beautiful description one');
INSERT INTO `meetup` VALUES(2,'2016-11-15 15:10:00','Halmaj','Cats','This is a beautiful description two');
INSERT INTO `meetup` VALUES(3,'2016-11-23 10:00:00','Encs','Kids','This is a beautiful description three');
INSERT INTO `meetup` VALUES(4,'2016-11-30 18:00:00','Szikszó','Freetime','This is a beautiful description four');
INSERT INTO `meetup` VALUES(5,'2016-12-03 08:00:00','Alsóvadász','Programs','This is a beautiful description five');

INSERT INTO `meetupdb`.`statuses` (`Value`) VALUES ('Going');
INSERT INTO `meetupdb`.`statuses` (`Value`) VALUES ('Tentative');
INSERT INTO `meetupdb`.`statuses` (`Value`) VALUES ('Not going');
INSERT INTO `meetupdb`.`statuses` (`Value`) VALUES ('Presenting');
INSERT INTO `meetupdb`.`statuses` (`Value`) VALUES ('Tentative');


INSERT INTO `meetupdb`.`users` (`Name`, `Birthdate`, `Introduction`, `Avatar`, `Email`) VALUES ('Lakatos Elemér', '1990-05-05', 'This is me', 'This is avatar', 'lakatos@elem.com');
INSERT INTO `meetupdb`.`users` (`Name`, `Birthdate`, `Introduction`, `Avatar`, `Email`) VALUES ('Asztala Viszta', '1985-10-01', "I' m viszta", 'What is this?', 'asztala@viszta.hu');
INSERT INTO `meetupdb`.`users` (`Name`, `Birthdate`, `Introduction`, `Avatar`, `Email`) VALUES ('Halam Kamir', '1980-02-07', 'Turuk kuru koleg', 'ide valami jön', 'Hala@madrid.hu');
INSERT INTO `meetupdb`.`users` (`Name`, `Birthdate`, `Introduction`, `Avatar`, `Email`) VALUES ('Vadik Ladik', '1968-04-07', 'Ez vagyok én', 'I belive in avatar', 'ladik@kaki.hu');
INSERT INTO `meetupdb`.`users` (`Name`, `Birthdate`, `Introduction`, `Avatar`, `Email`) VALUES ('Alaba malaba', '1983-08-15', 'Halad a kalap', 'Okay avatar okay', 'Alaba@mala.hu');

INSERT INTO `meetupdb`.`meetupregistrations` (`StatusId`, `MeetupId`, `UserId`) VALUES ('1', '2', '2');
INSERT INTO `meetupdb`.`meetupregistrations` (`StatusId`, `MeetupId`, `UserId`) VALUES ('1', '3', '3');
INSERT INTO `meetupdb`.`meetupregistrations` (`StatusId`, `MeetupId`, `UserId`) VALUES ('2', '1', '4');
INSERT INTO `meetupdb`.`meetupregistrations` (`StatusId`, `MeetupId`, `UserId`) VALUES ('3', '2', '5');
INSERT INTO `meetupdb`.`meetupregistrations` (`StatusId`, `MeetupId`, `UserId`) VALUES ('3', '3', '5');
INSERT INTO `meetupdb`.`meetupregistrations` (`StatusId`, `MeetupId`, `UserId`) VALUES ('4', '1', '3');
