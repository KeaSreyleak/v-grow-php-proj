CREATE TABLE developer (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    ImagePath VARCHAR(255) NULL,
    Description VARCHAR(255) NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE platform (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    PlatformName VARCHAR(50) NOT NULL UNIQUE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO Platform (PlatformName) VALUES ('Facebook'), ('Telegram'), ('Instagram'), ('LinkedIn');

CREATE TABLE social_media (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    DeveloperID INT NULL,
    PlatformId INT NULL,
    Url VARCHAR(255) NULL,
    FOREIGN KEY (DeveloperID) REFERENCES Developer(Id) ON DELETE CASCADE,
    FOREIGN KEY (PlatformId) REFERENCES Platform(Id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;