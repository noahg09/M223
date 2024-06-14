-- Insert initial roles
INSERT INTO app_role (name) VALUES ('ROLE_USER');
INSERT INTO app_role (name) VALUES ('ROLE_ASSISTANT_MANAGER');
INSERT INTO app_role (name) VALUES ('ROLE_MANAGER');

-- Prüfung
INSERT INTO app_role (name) VALUES ('ROLE_ADMIN');
INSERT INTO app_role (name) VALUES ('ROLE_STAFF_MEMBER');
INSERT INTO app_role (name) VALUES ('ROLE_OFFICE');
INSERT INTO app_role (name) VALUES ('ROLE_ACCOUNT_MANAGER');
INSERT INTO app_role (name) VALUES ('ROLE_CLIENT');
INSERT INTO app_role (name) VALUES ('ROLE_DEVELOPER');

-- Insert initial users with hashed passwords
INSERT INTO app_user (username, password) VALUES ('user1', '$2a$12$N1FYQpzZoGUMJZhrW21KQujvj8qaV8.BbfanLzbqEdEMAH7XBuGxa'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('user2', '$2a$12$N1FYQpzZoGUMJZhrW21KQujvj8qaV8.BbfanLzbqEdEMAH7XBuGxa'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('user3', '$2a$12$N1FYQpzZoGUMJZhrW21KQujvj8qaV8.BbfanLzbqEdEMAH7XBuGxa'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('user4', '$2a$12$N1FYQpzZoGUMJZhrW21KQujvj8qaV8.BbfanLzbqEdEMAH7XBuGxa'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('user5', '$2a$12$N1FYQpzZoGUMJZhrW21KQujvj8qaV8.BbfanLzbqEdEMAH7XBuGxa'); -- Replace with BCrypt hashed password

-- Prüfung
INSERT INTO app_user (username, password) VALUES ('Pruefung1', '$2a$12$N1FYQpzZoGUMJZhrW21KQujvj8qaV8.BbfanLzbqEdEMAH7XBuGxa'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('Pruefung2', '$2a$12$N1FYQpzZoGUMJZhrW21KQujvj8qaV8.BbfanLzbqEdEMAH7XBuGxa'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('Pruefung3', '$2a$12$N1FYQpzZoGUMJZhrW21KQujvj8qaV8.BbfanLzbqEdEMAH7XBuGxa'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('Pruefung4', '$2a$12$N1FYQpzZoGUMJZhrW21KQujvj8qaV8.BbfanLzbqEdEMAH7XBuGxa'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('Pruefung5', '$2a$12$N1FYQpzZoGUMJZhrW21KQujvj8qaV8.BbfanLzbqEdEMAH7XBuGxa'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('Pruefung6', '$2a$12$N1FYQpzZoGUMJZhrW21KQujvj8qaV8.BbfanLzbqEdEMAH7XBuGxa'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('Pruefung7', '$2a$12$N1FYQpzZoGUMJZhrW21KQujvj8qaV8.BbfanLzbqEdEMAH7XBuGxa'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('Pruefung8', '$2a$12$N1FYQpzZoGUMJZhrW21KQujvj8qaV8.BbfanLzbqEdEMAH7XBuGxa'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('Pruefung9', '$2a$12$N1FYQpzZoGUMJZhrW21KQujvj8qaV8.BbfanLzbqEdEMAH7XBuGxa'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('Pruefung10', '$2a$12$N1FYQpzZoGUMJZhrW21KQujvj8qaV8.BbfanLzbqEdEMAH7XBuGxa'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('Developer', '$2a$12$N1FYQpzZoGUMJZhrW21KQujvj8qaV8.BbfanLzbqEdEMAH7XBuGxa'); -- Replace with BCrypt hashed password

-- Associate users with roles
INSERT INTO app_user_roles (user_id, role_id) VALUES (1, 1); -- user1 -> ROLE_USER
INSERT INTO app_user_roles (user_id, role_id) VALUES (3, 4); -- user3 -> ROLE_ASSISTANT_MANAGER
INSERT INTO app_user_roles (user_id, role_id) VALUES (5, 5); -- user5 -> ROLE_MANAGER
INSERT INTO app_user_roles (user_id, role_id) VALUES (1, 2); -- user1 -> ROLE_ADMIN
INSERT INTO app_user_roles (user_id, role_id) VALUES (2, 3); -- user2 -> ROLE_STAFF_MEMBER
INSERT INTO app_user_roles (user_id, role_id) VALUES (3, 3); -- user3 -> ROLE_STAFF_MEMBER
INSERT INTO app_user_roles (user_id, role_id) VALUES (4, 3); -- user4 -> ROLE_STAFF_MEMBER
INSERT INTO app_user_roles (user_id, role_id) VALUES (4, 2); -- user4 -> ROLE_ADMIN
INSERT INTO app_user_roles (user_id, role_id) VALUES (5, 3); -- user5 -> ROLE_STAFF_MEMBER

-- Prüfung
INSERT INTO app_user_roles (user_id, role_id) VALUES (6, 4); -- user5 -> ROLE_ADMIN
INSERT INTO app_user_roles (user_id, role_id) VALUES (7, 4); -- user5 -> ROLE_ADMIN
INSERT INTO app_user_roles (user_id, role_id) VALUES (8, 5); -- user5 -> ROLE_STAFF_MEMBER
INSERT INTO app_user_roles (user_id, role_id) VALUES (9, 5); -- user5 -> ROLE_STAFF_MEMBER
INSERT INTO app_user_roles (user_id, role_id) VALUES (10, 6); -- user5 -> ROLE_OFFICE
INSERT INTO app_user_roles (user_id, role_id) VALUES (11, 6); -- user5 -> ROLE_OFFICE
INSERT INTO app_user_roles (user_id, role_id) VALUES (12, 7); -- user5 -> ROLE_ACCOUNT_MANAGER
INSERT INTO app_user_roles (user_id, role_id) VALUES (13, 7); -- user5 -> ROLE_ACCOUNT_MANAGER
INSERT INTO app_user_roles (user_id, role_id) VALUES (14, 8); -- user5 -> ROLE_CLIENT
INSERT INTO app_user_roles (user_id, role_id) VALUES (15, 8); -- user5 -> ROLE_CLIENT
INSERT INTO app_user_roles (user_id, role_id) VALUES (16, 9); -- user5 -> ROLE_CLIENT

-- Insert initial user profiles
INSERT INTO user_profile (firstname, lastname, address, profilepictureurl) VALUES ('John', 'Doe', '123 Main St', 'http://example.com/johndoe.jpg');
INSERT INTO user_profile (firstname, lastname, address, profilepictureurl) VALUES ('Jane', 'Doe', '456 Maple Ave', 'http://example.com/janedoe.jpg');
INSERT INTO user_profile (firstname, lastname, address, profilepictureurl) VALUES ('Bob', 'Smith', '789 Oak Dr', 'http://example.com/bobsmith.jpg');
INSERT INTO user_profile (firstname, lastname, address, profilepictureurl) VALUES ('Charlie', 'Boberi', '789 Oak Dr', 'http://example.com/bobsmith.jpg');
INSERT INTO user_profile (firstname, lastname, address, profilepictureurl) VALUES ('Ben', 'Ten', '789 Oak Dr', 'http://example.com/bobsmith.jpg');

--Prüfung
INSERT INTO user_profile (firstname, lastname, address, profilepictureurl) VALUES ('John', 'Werginz', '123 Main St', 'http://example.com/johndoe.jpg');
INSERT INTO user_profile (firstname, lastname, address, profilepictureurl) VALUES ('James', 'Marti', '123 Main St', 'http://example.com/johndoe.jpg');
INSERT INTO user_profile (firstname, lastname, address, profilepictureurl) VALUES ('Nils', 'Doe', '123 Main St', 'http://example.com/johndoe.jpg');
INSERT INTO user_profile (firstname, lastname, address, profilepictureurl) VALUES ('Nicik', 'Gruenig', '123 Main St', 'http://example.com/johndoe.jpg');
INSERT INTO user_profile (firstname, lastname, address, profilepictureurl) VALUES ('Mauro', 'Daeniken', '123 Main St', 'http://example.com/johndoe.jpg');
INSERT INTO user_profile (firstname, lastname, address, profilepictureurl) VALUES ('Loris', 'Smith', '123 Main St', 'http://example.com/johndoe.jpg');
INSERT INTO user_profile (firstname, lastname, address, profilepictureurl) VALUES ('Luca', 'Hila', '123 Main St', 'http://example.com/johndoe.jpg');
INSERT INTO user_profile (firstname, lastname, address, profilepictureurl) VALUES ('Ron', 'Donjon', '123 Main St', 'http://example.com/johndoe.jpg');
INSERT INTO user_profile (firstname, lastname, address, profilepictureurl) VALUES ('Noah', 'Schlappen', '123 Main St', 'http://example.com/johndoe.jpg');
INSERT INTO user_profile (firstname, lastname, address, profilepictureurl) VALUES ('Jonas', 'Heinz', '123 Main St', 'http://example.com/johndoe.jpg');
INSERT INTO user_profile (firstname, lastname, address, profilepictureurl) VALUES ('Dev', 'Developer', '123 Main St', 'http://example.com/johndoe.jpg');


-- Get the IDs of the newly inserted user profiles
SET @johnDoeProfileId = (SELECT id FROM user_profile WHERE firstname = 'John' AND lastname = 'Doe');
SET @janeDoeProfileId = (SELECT id FROM user_profile WHERE firstname = 'Jane' AND lastname = 'Doe');
SET @bobSmithProfileId = (SELECT id FROM user_profile WHERE firstname = 'Bob' AND lastname = 'Smith');
SET @charlieBoberiProfileId = (SELECT id FROM user_profile WHERE firstname = 'Charlie' AND lastname = 'Boberi');
SET @benTenProfileId = (SELECT id FROM user_profile WHERE firstname = 'Ben' AND lastname = 'Ten');

-- Prüfung
SET @werginzProfileId = (SELECT id FROM user_profile WHERE firstname = 'John' AND lastname = 'Werginz');
SET @martiProfileId = (SELECT id FROM user_profile WHERE firstname = 'James' AND lastname = 'Marti');
SET @doeProfileId = (SELECT id FROM user_profile WHERE firstname = 'Nils' AND lastname = 'Doe');
SET @gruenigProfileId = (SELECT id FROM user_profile WHERE firstname = 'Nicik' AND lastname = 'Gruenig');
SET @daenikenProfileId = (SELECT id FROM user_profile WHERE firstname = 'Mauro' AND lastname = 'Daeniken');
SET @smithProfileId = (SELECT id FROM user_profile WHERE firstname = 'Loris' AND lastname = 'Smith');
SET @hilaProfileId = (SELECT id FROM user_profile WHERE firstname = 'Luca' AND lastname = 'Hila');
SET @donjonProfileId = (SELECT id FROM user_profile WHERE firstname = 'Ron' AND lastname = 'Donjon');
SET @schlappenProfileId = (SELECT id FROM user_profile WHERE firstname = 'Noah' AND lastname = 'Schlappen');
SET @schlappenProfileId = (SELECT id FROM user_profile WHERE firstname = 'Jonas' AND lastname = 'Heinz');
SET @developerProfileId = (SELECT id FROM user_profile WHERE firstname = 'Dev' AND lastname = 'Developer');


-- Associate user profiles with users
UPDATE app_user SET profile_id = @johnDoeProfileId WHERE username = 'user1';
UPDATE app_user SET profile_id = @janeDoeProfileId WHERE username = 'user2';
UPDATE app_user SET profile_id = @bobSmithProfileId WHERE username = 'user3';
UPDATE app_user SET profile_id = @charlieBoberiProfileId WHERE username = 'user4';
UPDATE app_user SET profile_id = @benTenProfileId WHERE username = 'user5';

-- Prüfung
UPDATE app_user SET profile_id = @werginzProfileId WHERE username = 'Pruefung1';
UPDATE app_user SET profile_id = @martiProfileId WHERE username = 'Pruefung2';
UPDATE app_user SET profile_id = @doeProfileId WHERE username = 'Pruefung3';
UPDATE app_user SET profile_id = @gruenigProfileId WHERE username = 'Pruefung4';
UPDATE app_user SET profile_id = @daenikenProfileId WHERE username = 'Pruefung5';
UPDATE app_user SET profile_id = @smithProfileId WHERE username = 'Pruefung6';
UPDATE app_user SET profile_id = @hilaProfileId WHERE username = 'Pruefung7';
UPDATE app_user SET profile_id = @donjonProfileId WHERE username = 'Pruefung8';
UPDATE app_user SET profile_id = @schlappenProfileId WHERE username = 'Pruefung9';
UPDATE app_user SET profile_id = @schlappenProfileId WHERE username = 'Pruefung10';
UPDATE app_user SET profile_id = @developerProfileId WHERE username = 'Developer';


INSERT INTO product (name) VALUES ('Product 1');
INSERT INTO product (name) VALUES ('Product 2');
INSERT INTO product (name) VALUES ('Product 3');

--Prüfung
INSERT INTO doc_folder (title, sort_order) VALUES ('Folder 1', 1);
INSERT INTO doc_folder (title, sort_order) VALUES ('Folder 2', 2);

INSERT INTO document (title, sort_order, document_url, doc_folder_id, size) VALUES ('Document 1', 1, 'http://example.com/document1.pdf', 1, 500.0);
INSERT INTO document (title, sort_order, document_url, doc_folder_id, size) VALUES ('Document 2', 2, 'http://example.com/document2.pdf', 1, 1000.0);
INSERT INTO document (title, sort_order, document_url, doc_folder_id, size) VALUES ('Document 3', 3, 'http://example.com/document3.pdf', 2, 1500.0);