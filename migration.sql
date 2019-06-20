USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS ads_categories;

CREATE TABLE IF NOT EXISTS users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL,
    email VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(240) NOT NULL,
    description TEXT NOT NULL,
    price INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS categories (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  category VARCHAR(250) NOT NULL,
  UNIQUE (category),
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ads_categories (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  ads_id INT UNSIGNED NOT NULL,
  ads_category_id INT UNSIGNED NOT NULL,
  UNIQUE (ads_id, ads_category_id),
  PRIMARY KEY (id),
  FOREIGN KEY (ads_id) REFERENCES ads(id),
  FOREIGN KEY (ads_category_id) REFERENCES categories(id)
);

INSERT INTO users (username, email, password)
VALUES ('orion', 'ok@com', 'pass');

SELECT * FROM users;