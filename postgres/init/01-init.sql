CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS readings (
    id          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    spread_type VARCHAR(50) NOT NULL,
    cards_drawn JSONB NOT NULL,
    question    TEXT,
    created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS contacts (
    id         UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name       VARCHAR(100) NOT NULL,
    email      VARCHAR(255) NOT NULL,
    message    TEXT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO tarot_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO tarot_user;
