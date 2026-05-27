# RentyCarry

Minimal car renting platform using Node.js, Express, and MySQL.

## 1. Create and seed database (MySQL shell)

Run this command in your terminal:

```bash
mysql -u root -p < database.sql
```

If your MySQL root has no password:

```bash
mysql -u root < database.sql
```

## 2. Configure database connection (optional)

By default, `server.js` uses:

- `DB_HOST=localhost`
- `DB_USER=root`
- `DB_PASSWORD=`
- `DB_NAME=rentycarry`

You can override these as environment variables before starting the app.

## 3. Start the app

```bash
npm start
```

Open:

[http://localhost:3000](http://localhost:3000)
