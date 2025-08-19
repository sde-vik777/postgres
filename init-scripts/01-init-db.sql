-- Initialize Book Management Database

-- Create database if not exists
SELECT 'CREATE DATABASE bookdb'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'bookdb');

-- Connect to the database
\c bookdb;

-- Create extensions if needed
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Grant privileges
GRANT ALL PRIVILEGES ON DATABASE bookdb TO bookuser;
GRANT ALL PRIVILEGES ON SCHEMA public TO bookuser;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO bookuser;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO bookuser;

-- Insert sample data (optional)
-- This will be created by the application via JPA