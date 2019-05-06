-- Privileges for `admin`@`localhost`

GRANT USAGE ON *.* TO 'admin'@'localhost' IDENTIFIED BY PASSWORD '*2C6396ADEEF1AF865672D48735C0E3EC8B1A9CEC';

GRANT ALL PRIVILEGES ON `electronics_vendor`.* TO 'admin'@'localhost' WITH GRANT OPTION;


-- Privileges for `csrep`@`localhost`

GRANT USAGE ON *.* TO 'csrep'@'localhost' IDENTIFIED BY PASSWORD '*CB561604EBD4A5E0E64AA20C60E8D15FEB9A65B5';

GRANT SELECT, INSERT, UPDATE, DELETE ON `electronics_vendor`.* TO 'csrep'@'localhost';


-- Privileges for `stock`@`localhost`

GRANT USAGE ON *.* TO 'stock'@'localhost' IDENTIFIED BY PASSWORD '*CC93C189084F5F3C0B9D0B50367EE291B2B49E5C';

GRANT SELECT, INSERT, UPDATE, DELETE ON `electronics_vendor`.* TO 'stock'@'localhost';


-- Privileges for `webuser`@`localhost`

GRANT USAGE ON *.* TO 'webuser'@'localhost' IDENTIFIED BY PASSWORD '*5CE56A631C779EF2066704296DAEAE86F7F5CF78';

GRANT SELECT, INSERT, UPDATE, DELETE ON `electronics_vendor`.* TO 'webuser'@'localhost';