CREATE DATABASE IF NOT EXISTS rentycarry;
USE rentycarry;

CREATE TABLE IF NOT EXISTS cars (
  id INT AUTO_INCREMENT PRIMARY KEY,
  brand VARCHAR(50) NOT NULL,
  model VARCHAR(50) NOT NULL,
  year INT NOT NULL,
  price_per_day DECIMAL(10,2) NOT NULL,
  seats INT NOT NULL,
  fuel_type VARCHAR(20) NOT NULL,
  image_url VARCHAR(255) NOT NULL
);

TRUNCATE TABLE cars;

INSERT INTO cars (brand, model, year, price_per_day, seats, fuel_type, image_url)
VALUES
  ('Toyota', 'Corolla', 2022, 42.00, 5, 'Petrol', 'https://images.unsplash.com/photo-1550355291-bbee04a92027?auto=format&fit=crop&w=1200&q=80'),
  ('BMW', '3 Series', 2023, 78.00, 5, 'Diesel', 'https://images.unsplash.com/photo-1552519507-da3b142c6e3d?auto=format&fit=crop&w=1200&q=80'),
  ('Tesla', 'Model 3', 2024, 95.00, 5, 'Electric', 'https://images.unsplash.com/photo-1619767886558-efdc259cde1a?auto=format&fit=crop&w=1200&q=80'),
  ('Volkswagen', 'Golf', 2021, 48.00, 5, 'Petrol', 'https://images.unsplash.com/photo-1503376780353-7e6692767b70?auto=format&fit=crop&w=1200&q=80'),
  ('Audi', 'A4', 2023, 84.00, 5, 'Hybrid', 'https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?auto=format&fit=crop&w=1200&q=80');
