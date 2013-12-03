# Solution for Challenge: Student Roster DB from Schema. Started 2013-08-21T00:27:55+00:00

require 'sqlite3'

# If you want to overwrite your database you will need 
# to delete it before running this file
$db = SQLite3::Database.new "students.db"

module StudentDB
  def self.setup
    $db.execute(
      <<-SQL
      CREATE TABLE students (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        first_name VARCHAR(64) NOT NULL,
        last_name VARCHAR(64) NOT NULL,

          -- add the additional attributes here!

        created_at DATETIME NOT NULL,
        updated_at DATETIME NOT NULL);
    SQL
    )
  end

  def self.seed
    # Add a few records to your database when you start
    $db.execute(
      <<-SQL
      INSERT INTO students 
      (first_name, last_name, created_at, updated_at)
      VALUES
      ('Brick','Thornton',DATETIME('now'), DATETIME('now'));

        -- Create two more students who are at least as cool as this one.
        SQL
        )
  end
end


class Student



  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name

  end

  def self.add(first_name, last_name)
    $db.execute(
      <<-SQL
      INSERT INTO students
      (first_name, last_name, created_at, updated_at)
      VALUES
          ('#{first_name}', '#{last_name}', DATETIME('now'), DATETIME('now'));
      SQL
          )
  end

  def self.delete(attribute, value)
    $db.execute("DELETE FROM students WHERE #{attribute}", "#{value}")
  end

  def self.all
    $db.execute(
      <<-SQL
      SELECT * FROM students;
      SQL
      )
  end

  def self.where(attribute, value)
    $db.execute("SELECT * FROM students WHERE #{attribute}", "#{value}")
  end
end

Student.add('christian', 'Joseph')
Student.add('Tanner', 'Welsh')
p Student.all
Student.delete('id = ?', 4)
p Student.all
p Student.where('first_name = ?', 'Nick')