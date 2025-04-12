CREATE DATABASE db_batch5_rels;

use db_batch5_rels;

CREATE TABLE tbl_users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(100) NOT NULL,
    lastname VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role_id int,
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO tbl_users (firstname, lastname, email, password, role_id)
VALUES
    ('admin', 'admin', 'admin@admin.com', '123456,',1);

    -- if($password == $row['password']) {

CREATE TABLE properties (
    id  INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    bedrooms INT NOT NULL,
    location VARCHAR(255) NOT NULL,
    image VARCHAR(255) NOT NULL
);

CREATE TABLE agents (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL
);

CREATE TABLE property_agents (
    property_id INT NOT NULL,
    agent_id INT NOT NULL,
    FOREIGN KEY (property_id) REFERENCES properties(id),
    FOREIGN KEY (agent_id) REFERENCES agents(id)
);


