CREATE database game;


/*
[Entities]
- User
- Character
- Item
- Inventory

[User Properties]
- id (INT)
- username (VARCHAR(50))
- password (VARCHAR(255))
- email (VARCHAR(100))
- join_date (DATE)

[Character Properties]
- id (INT)
- user_id (INT)
- name (VARCHAR(50))
- level (INT)
- gold (INT)
- last_login (DATETIME)

*/

-- 1. 유저
CREATE TABLE Users (
    id SERIAL PRIMARY KEY,     
    username VARCHAR(50) NOT NULL,           
    password VARCHAR(255) NOT NULL,           
    email VARCHAR(100),                       
    join_date DATE DEFAULT (CURRENT_DATE)     
);

-- 2. 캐릭터
CREATE TABLE Character_Info (
    id SERIAL PRIMARY KEY,       
    user_id INT NOT NULL,                    
    name VARCHAR(50) NOT NULL,               
    level INT DEFAULT 1,                     
    gold INT DEFAULT 0,                      
    last_login TIMESTAMP,                     
    
    
    FOREIGN KEY (user_id) REFERENCES UserS(id) ON DELETE CASCADE
);
