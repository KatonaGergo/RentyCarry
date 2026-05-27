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
  ('Mercedes-Benz', 'S-Class', 2024, 220.00, 5, 'Hybrid', 'https://images.unsplash.com/photo-1618843479313-40f8afb4b4d8?auto=format&fit=crop&w=1200&q=80'),
  ('BMW', '7 Series', 2024, 210.00, 5, 'Hybrid', 'https://images.unsplash.com/photo-1552519507-da3b142c6e3d?auto=format&fit=crop&w=1200&q=80'),
  ('Audi', 'A8', 2023, 195.00, 5, 'Diesel', 'https://images.unsplash.com/photo-1542362567-b07e54358753?auto=format&fit=crop&w=1200&q=80'),
  ('Porsche', 'Panamera', 2024, 260.00, 4, 'Petrol', 'https://images.unsplash.com/photo-1503376780353-7e6692767b70?auto=format&fit=crop&w=1200&q=80'),
  ('Tesla', 'Model S', 2024, 205.00, 5, 'Electric', 'https://images.unsplash.com/photo-1619767886558-efdc259cde1a?auto=format&fit=crop&w=1200&q=80'),
  ('Lexus', 'LS 500', 2023, 180.00, 5, 'Hybrid', 'https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?auto=format&fit=crop&w=1200&q=80'),
  ('Maserati', 'Ghibli', 2023, 230.00, 5, 'Petrol', 'https://images.unsplash.com/photo-1553440569-bcc63803a83d?auto=format&fit=crop&w=1200&q=80'),
  ('Jaguar', 'XJ', 2022, 170.00, 5, 'Diesel', 'https://images.unsplash.com/photo-1541348263662-e068662d82af?auto=format&fit=crop&w=1200&q=80'),
  ('Genesis', 'G90', 2024, 175.00, 5, 'Petrol', 'https://images.unsplash.com/photo-1511919884226-fd3cad34687c?auto=format&fit=crop&w=1200&q=80'),
  ('Rolls-Royce', 'Ghost', 2023, 450.00, 5, 'Petrol', 'https://images.unsplash.com/photo-1580273916550-e323be2ae537?auto=format&fit=crop&w=1200&q=80'),
  ('Bentley', 'Flying Spur', 2024, 430.00, 5, 'Petrol', 'https://images.unsplash.com/photo-1555215695-3004980ad54e?auto=format&fit=crop&w=1200&q=80'),
  ('Range Rover', 'Autobiography', 2024, 280.00, 5, 'Diesel', 'https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?auto=format&fit=crop&w=1200&q=80'),
  ('Cadillac', 'Escalade', 2023, 300.00, 7, 'Petrol', 'https://images.unsplash.com/photo-1494905998402-395d579af36f?auto=format&fit=crop&w=1200&q=80'),
  ('Volvo', 'S90', 2023, 160.00, 5, 'Hybrid', 'https://images.unsplash.com/photo-1551830820-330a71b99659?auto=format&fit=crop&w=1200&q=80'),
  ('Alfa Romeo', 'Giulia', 2022, 155.00, 5, 'Petrol', 'https://images.unsplash.com/photo-1525609004556-c46c7d6cf023?auto=format&fit=crop&w=1200&q=80'),
  ('Toyota', 'Camry', 2024, 120.00, 5, 'Hybrid', 'https://images.unsplash.com/photo-1550355291-bbee04a92027?auto=format&fit=crop&w=1200&q=80'),
  ('Volkswagen', 'Arteon', 2023, 135.00, 5, 'Petrol', 'https://images.unsplash.com/photo-1606664515524-ed2f786a0bd6?auto=format&fit=crop&w=1200&q=80'),
  ('Mercedes-Benz', 'E-Class', 2023, 165.00, 5, 'Hybrid', 'https://images.unsplash.com/photo-1552519507-da3b142c6e3d?auto=format&fit=crop&w=1200&q=80'),
  ('Ferrari', 'Roma', 2024, 390.00, 4, 'Petrol', 'https://images.unsplash.com/photo-1503376780353-7e6692767b70?auto=format&fit=crop&w=1200&q=80'),
  ('Kia', 'EV6', 2024, 150.00, 5, 'Electric', 'https://images.unsplash.com/photo-1617788138017-80ad40651399?auto=format&fit=crop&w=1200&q=80');
