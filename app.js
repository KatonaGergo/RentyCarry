const carGrid = document.getElementById("carGrid");
const featuredGrid = document.getElementById("featuredGrid");
const statusText = document.getElementById("status");

function carCardTemplate(car) {
  return `
    <article class="car-card">
      <img src="${car.image_url}" alt="${car.brand} ${car.model}" loading="lazy">
      <div class="car-info">
        <div class="top-row">
          <h3>${car.brand} ${car.model}</h3>
          <span class="price">$${Number(car.price_per_day).toFixed(0)}/day</span>
        </div>
        <p class="car-meta">${car.year} | ${car.fuel_type} | ${car.seats} seats</p>
        <div class="chip-row">
          <span class="chip">Instant Book</span>
          <span class="chip">Premium Care</span>
        </div>
      </div>
    </article>
  `;
}

function renderCars(cars) {
  if (!cars.length) {
    statusText.textContent = "No cars found in the database.";
    return;
  }

  const featuredCars = cars.slice(0, 3);
  featuredGrid.innerHTML = featuredCars.map(carCardTemplate).join("");
  carGrid.innerHTML = cars.map(carCardTemplate).join("");
}

async function loadCars() {
  statusText.textContent = "Loading luxury fleet...";
  try {
    const response = await fetch("/api/cars");
    if (!response.ok) {
      throw new Error(`Request failed (${response.status})`);
    }

    const cars = await response.json();
    renderCars(cars);
    statusText.textContent = "";
  } catch (error) {
    statusText.textContent = "Could not load fleet. Check server and database connection.";
    console.error(error);
  }
}

loadCars();
