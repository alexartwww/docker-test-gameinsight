CREATE TABLE `gifts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` char(36) NOT NULL,
  `day_id` int(11) unsigned NOT NULL,
  `friend_id` char(36) NOT NULL,
  `gift_id` int(11) unsigned NOT NULL,
  `is_taken` tinyint(1) NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `gifts` (`id`,`user_id`,`day_id`,`friend_id`,`gift_id`,`is_taken`,`is_valid`) VALUES
  (DEFAULT, 'Jimi-Hendrix', 17932, 'Slash', 1, 0, 1),
  (DEFAULT, 'Slash', 17932, 'Brian-May', 2, 0, 1),
  (DEFAULT, 'Brian-May', 17932, 'Jimi-Page', 3, 0, 1),
  (DEFAULT, 'Jimi-Page', 17932, 'Paul-Gilbert', 4, 0, 1),
  (DEFAULT, 'Paul-Gilbert', 17932, 'Jimi-Hendrix', 5, 0, 1);
