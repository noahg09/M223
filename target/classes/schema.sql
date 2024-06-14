CREATE TABLE IF NOT EXISTS user_profile (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    address VARCHAR(255),
    profilepictureurl VARCHAR(255)
    );

CREATE TABLE IF NOT EXISTS app_user (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    profile_id BIGINT,
    CONSTRAINT fk_profile
    FOREIGN KEY (profile_id)
    REFERENCES user_profile(id)
    );

CREATE TABLE IF NOT EXISTS app_role (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS app_user_roles (
    user_id BIGINT NOT NULL,
    role_id BIGINT NOT NULL,
    PRIMARY KEY (user_id, role_id),
    FOREIGN KEY (user_id) REFERENCES app_user(id),
    FOREIGN KEY (role_id) REFERENCES app_role(id)
);

CREATE TABLE IF NOT EXISTS product (
     id BIGINT AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS doc_folder (
     id BIGINT AUTO_INCREMENT PRIMARY KEY,
     title VARCHAR(255) NOT NULL,
     sort_order INT NOT NULL
    );

CREATE TABLE IF NOT EXISTS document (
     id BIGINT AUTO_INCREMENT PRIMARY KEY,
     title VARCHAR(255) NOT NULL,
     sort_order INT NOT NULL,
     document_url VARCHAR(255),
     doc_folder_id BIGINT NOT NULL,
     size DOUBLE NOT NULL,
     CONSTRAINT fk_doc_folder
     FOREIGN KEY (doc_folder_id)
     REFERENCES doc_folder(id)
     ON DELETE CASCADE
    );
