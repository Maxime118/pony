CREATE TABLE Address (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    street VARCHAR(255) NOT NULL,
    number INT NOT NULL,
    place VARCHAR(255) NOT NULL
);

CREATE TABLE Stable (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    address_id BIGINT,
    FOREIGN KEY (address_id) REFERENCES Address(id)
);
