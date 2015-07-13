CONNECTION = SQLite3::Database.new("jsonproject.db")

CONNECTION.execute("CREATE TABLE IF NOT EXISTS assignments (id INTEGER PRIMARY KEY, description TEXT, github text);")
CONNECTION.execute("CREATE TABLE IF NOT EXISTS classmates (id INTEGER PRIMARY KEY, name TEXT);")
CONNECTION.execute("CREATE TABLE IF NOT EXISTS resources (id INTEGER PRIMARY KEY, link TEXT, assignments_id INTEGER, FOREIGN KEY(assignments_id) REFERENCES assignments(id) ;")
CONNECTION.execute("CREATE TABLE IF NOT EXISTS contributions (assignments_id INTEGER, classmates_id INTEGER, FOREIGN KEY(assignments_id) REFERENCES assignments(id), FOREIGN KEY(classmates_id) REFERENCES classmates(id) );")

CONNECTION.results_as_hash = true