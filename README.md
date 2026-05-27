# RentyCarry

Minimal car renting platform using Node.js, Express, and MySQL.

## 1. Start MySQL (XAMPP)

Open `C:\xampp\xampp-control.exe` and start `MySQL`.

## 2. Create and seed database

Use this short command (recommended):

```bash
npm run db:init
```

It executes `database.sql` directly from Node.js, so you do not need to type the long MySQL executable path.
This seeds a larger luxury fleet with multiple cars.

Alternative (manual MySQL shell command):

```bash
mysql -u root -p < database.sql
```

If your MySQL root has no password:

```bash
mysql -u root < database.sql
```

## 3. Configure database connection (optional)

By default, `server.js` uses:

- `DB_HOST=localhost`
- `DB_PORT=3306`
- `DB_USER=root`
- `DB_PASSWORD=`
- `DB_NAME=rentycarry`

You can override these as environment variables before starting the app.

## 4. Start the app

```bash
npm start
```

Open:

[http://localhost:3000](http://localhost:3000)
