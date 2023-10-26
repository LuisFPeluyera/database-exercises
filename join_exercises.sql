INSERT INTO users (name, email, role_id) VALUES
                                        ('juan', 'john@example.com', null),
                                        ('pedro', 'peter@example.com', 2),
                                        ('esteban', 'steven@example.com', 2),
                                        ('jesus', 'yisus@example.com', 2)

SELECT users.name, roles.name from users JOIN roles ON users.id = roles.id;

SELECT users.name, roles.name from users LEFT JOIN roles ON users.id = roles.id;

SELECT users.name, roles.name from users RIGHT JOIN roles ON users.id = roles.id;

SELECT COUNT(users.id) from users LEFT JOIN roles ON users.id = roles.id GROUP BY roles.name, roles.id;

SELECT roles.name from roles RIGHT JOIN roles ON users.id = roles.id;
