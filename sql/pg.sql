CREATE TABLE IF NOT EXISTS sessions (
    id           CHAR(72) PRIMARY KEY,
    session_data TEXT
);
CREATE TABLE IF NOT EXISTS member (
    id           SERIAL PRIMARY KEY,
    name         VARCHAR(255)
);
