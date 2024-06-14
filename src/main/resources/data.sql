-- Insert initial roles
INSERT INTO app_role (name) VALUES ('ROLE_USER');
INSERT INTO app_role (name) VALUES ('ROLE_ADMIN');
INSERT INTO app_role (name) VALUES ('ROLE_STAFF_MEMBER');
INSERT INTO app_role (name) VALUES ('ROLE_ASSISTANT_MANAGER');
INSERT INTO app_role (name) VALUES ('ROLE_MANAGER');
-- Insert initial users with hashed passwords
INSERT INTO app_user (username, password) VALUES ('user1', '$2a$12$N1FYQpzZoGUMJZhrW21KQujvj8qaV8.BbfanLzbqEdEMAH7XBuGxa'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('user2', '$2a$12$N1FYQpzZoGUMJZhrW21KQujvj8qaV8.BbfanLzbqEdEMAH7XBuGxa'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('user3', '$2a$12$N1FYQpzZoGUMJZhrW21KQujvj8qaV8.BbfanLzbqEdEMAH7XBuGxa'); -- Replace with BCrypt hashed password

INSERT INTO app_user (username, password) VALUES ('user4', '$2a$12$N1FYQpzZoGUMJZhrW21KQujvj8qaV8.BbfanLzbqEdEMAH7XBuGxa'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('user5', '$2a$12$N1FYQpzZoGUMJZhrW21KQujvj8qaV8.BbfanLzbqEdEMAH7XBuGxa'); -- Replace with BCrypt hashed password
-- Associate users with roles
INSERT INTO app_user_roles (user_id, role_id) VALUES (1, 1); -- user1 -> ROLE_USER
INSERT INTO app_user_roles (user_id, role_id) VALUES (1, 2); -- user1 -> ROLE_ADMIN
INSERT INTO app_user_roles (user_id, role_id) VALUES (2, 3); -- user2 -> ROLE_STAFF_MEMBER
INSERT INTO app_user_roles (user_id, role_id) VALUES (3, 3); -- user3 -> ROLE_STAFF_MEMBER
INSERT INTO app_user_roles (user_id, role_id) VALUES (3, 4); -- user3 -> ROLE_ASSISTANT_MANAGER

INSERT INTO app_user_roles (user_id, role_id) VALUES (4, 3); -- user4 -> ROLE_STAFF_MEMBER
INSERT INTO app_user_roles (user_id, role_id) VALUES (4, 2); -- user4 -> ROLE_ADMIN
INSERT INTO app_user_roles (user_id, role_id) VALUES (5, 5); -- user5 -> ROLE_MANAGER
INSERT INTO app_user_roles (user_id, role_id) VALUES (5, 3); -- user5 -> ROLE_STAFF_MEMBER

-- Insert initial user profiles
INSERT INTO user_profile (firstname, lastname, address, profilepictureurl) VALUES ('John', 'Doe', '123 Main St', 'http://example.com/johndoe.jpg');
INSERT INTO user_profile (firstname, lastname, address, profilepictureurl) VALUES ('Jane', 'Doe', '456 Maple Ave', 'http://example.com/janedoe.jpg');
INSERT INTO user_profile (firstname, lastname, address, profilepictureurl) VALUES ('Bob', 'Smith', '789 Oak Dr', 'http://example.com/bobsmith.jpg');

INSERT INTO user_profile (firstname, lastname, address, profilepictureurl) VALUES ('Charlie', 'Boberi', '789 Oak Dr', 'http://example.com/bobsmith.jpg');
INSERT INTO user_profile (firstname, lastname, address, profilepictureurl) VALUES ('Ben', 'Ten', '789 Oak Dr', 'http://example.com/bobsmith.jpg');
-- Get the IDs of the newly inserted user profiles
SET @johnDoeProfileId = (SELECT id FROM user_profile WHERE firstname = 'John' AND lastname = 'Doe');
SET @janeDoeProfileId = (SELECT id FROM user_profile WHERE firstname = 'Jane' AND lastname = 'Doe');
SET @bobSmithProfileId = (SELECT id FROM user_profile WHERE firstname = 'Bob' AND lastname = 'Smith');

SET @charlieBoberiProfileId = (SELECT id FROM user_profile WHERE firstname = 'Charlie' AND lastname = 'Boberi');
SET @benTenProfileId = (SELECT id FROM user_profile WHERE firstname = 'Ben' AND lastname = 'Ten');
-- Associate user profiles with users
UPDATE app_user SET profile_id = @johnDoeProfileId WHERE username = 'user1';
UPDATE app_user SET profile_id = @janeDoeProfileId WHERE username = 'user2';
UPDATE app_user SET profile_id = @bobSmithProfileId WHERE username = 'user3';

UPDATE app_user SET profile_id = @charlieBoberiProfileId WHERE username = 'user4';
UPDATE app_user SET profile_id = @benTenProfileId WHERE username = 'user5';

INSERT INTO product (name) VALUES ('Product 1');
INSERT INTO product (name) VALUES ('Product 2');
INSERT INTO product (name) VALUES ('Product 3');