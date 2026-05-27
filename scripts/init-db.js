const fs = require("fs");
const path = require("path");
const mysql = require("mysql");

const sqlPath = path.join(__dirname, "..", "database.sql");
const sql = fs.readFileSync(sqlPath, "utf8");

const connection = mysql.createConnection({
  host: process.env.DB_HOST || "localhost",
  port: Number(process.env.DB_PORT || 3306),
  user: process.env.DB_USER || "root",
  password: process.env.DB_PASSWORD || "",
  multipleStatements: true,
});

connection.connect((err) => {
  if (err) {
    console.error("Database connection failed:", err.message);
    process.exit(1);
  }

  connection.query(sql, (queryErr) => {
    if (queryErr) {
      console.error("Database setup failed:", queryErr.message);
      connection.end();
      process.exit(1);
    }

    console.log("Database initialized successfully from database.sql");
    connection.end();
  });
});
