const express = require('express');
const sqlite3 = require('sqlite3').verbose();
const ejs = require('ejs');
const methodOverride = require('method-override');

const app = express();
const port = 3000;

// Connect to SQLite database
const db = new sqlite3.Database('./database.db', (err) => {
  if (err) {
    console.error('Database connection error:', err.message);
  } else {
    console.log('Connected to the SQLite database.');
    // Create a 'tasks' table if it doesn't exist
    db.run('CREATE TABLE IF NOT EXISTS tasks (id INTEGER PRIMARY KEY AUTOINCREMENT, description TEXT)');
  }
});

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(methodOverride('_method')); // enable method override

// Set EJS as the view engine
app.set('view engine', 'ejs');

// CRUD operations

// Render the task list
app.get('/tasks', (req, res) => {
  db.all('SELECT * FROM tasks', (err, rows) => {
    if (err) {
      return res.status(500).json({ error: 'Error fetching tasks' });
    }

    res.render('tasks', { tasks: rows });
  });
});

// Create a new task
app.post('/tasks', (req, res) => {
  const { description } = req.body;

  db.run('INSERT INTO tasks (description) VALUES (?)', [description], function (err) {
    if (err) {
      return res.status(500).json({ error: 'Error creating task' });
    }

    res.redirect('/tasks');
  });
});

// Update a task
app.put('/tasks/:id', (req, res) => {
  const { id } = req.params;
  const { description } = req.body;

  db.run('UPDATE tasks SET description = ? WHERE id = ?', [description, id], function (err) {
    if (err) {
      return res.status(500).json({ error: 'Error updating task' });
    }

    if (this.changes === 0) {
      return res.status(404).json({ error: 'Task not found' });
    }

    res.redirect('/tasks');
  });
});

// Delete a task
app.delete('/tasks/:id', (req, res) => {
  const { id } = req.params;

  db.run('DELETE FROM tasks WHERE id = ?', [id], function (err) {
    if (err) {
      return res.status(500).json({ error: 'Error deleting task' });
    }

    if (this.changes === 0) {
      return res.status(404).json({ error: 'Task not found' });
    }

    res.redirect('/tasks');
  });
});

// Render the new task form
app.get('/tasks/new', (req, res) => {
  res.render('new-task');
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
