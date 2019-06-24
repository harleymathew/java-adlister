USE adlister_db;

INSERT INTO users (username, email, password)
    VALUES ();

# TRUNCATE ads;
INSERT INTO ads (title, description, user_id)
    VALUES ('Bike For Sale', '10-speed bike in good condition', (SELECT id FROM users WHERE email = 'ok@gmail.com')),
    ('F-150 Truck For Sale', 'Vehicle in decent shape. Good A/C.', 2),
    ('House For Sale', '5 bed/3 bath', 3),
    ('MARRY MY SON!!!', 'Arranged marriage desired', 3),
    ('Toys for Sick Children', 'Please donate toys to children with cancer.', 2),
    ('Lawn Needs Mowing', 'Need someone to mow my lawn.', 1);