CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`,`name`) VALUES
  ('c5a715cf-1a0b-44bf-9487-a621468cb3d1', 'Jimi Hendrix'),
  ('5a75a8f4-c534-4ea1-86ee-ad2edd1e36ea', 'Slash'),
  ('741ddcd6-baa7-4305-a2cc-0c4c70b3ed8e', 'Brian May'),
  ('d0432aba-747c-43cf-ae54-23c7bd9a650b', 'Jimi Page'),
  ('1a4f54f6-9985-47ff-8915-a7b4c871856b', 'Paul Gilbert');

CREATE TABLE `gifts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` char(36) NOT NULL,
  `day_id` int(11) unsigned NOT NULL,
  `friend_id` char(36) NOT NULL,
  `gift_id` int(11) unsigned NOT NULL,
  `is_taken` tinyint(1) NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
--  ,FOREIGN KEY (`user_id`)
--    REFERENCES `users`(`id`)
--    ON DELETE RESTRICT,
--  FOREIGN KEY (`friend_id`)
--    REFERENCES `users`(`id`)
--    ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `gifts` (`id`,`user_id`,`day_id`,`friend_id`,`gift_id`,`is_taken`,`is_valid`) VALUES
  (DEFAULT, 'c5a715cf-1a0b-44bf-9487-a621468cb3d1', 17932, '5a75a8f4-c534-4ea1-86ee-ad2edd1e36ea', 1, 0, 1),
  (DEFAULT, '5a75a8f4-c534-4ea1-86ee-ad2edd1e36ea', 17932, '741ddcd6-baa7-4305-a2cc-0c4c70b3ed8e', 2, 0, 1),
  (DEFAULT, '741ddcd6-baa7-4305-a2cc-0c4c70b3ed8e', 17932, 'd0432aba-747c-43cf-ae54-23c7bd9a650b', 3, 0, 1),
  (DEFAULT, 'd0432aba-747c-43cf-ae54-23c7bd9a650b', 17932, '1a4f54f6-9985-47ff-8915-a7b4c871856b', 4, 0, 1),
  (DEFAULT, '1a4f54f6-9985-47ff-8915-a7b4c871856b', 17932, 'c5a715cf-1a0b-44bf-9487-a621468cb3d1', 5, 0, 1);
