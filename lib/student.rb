class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
attr_accessor :name,:age
attr_reader :id
def initialize(name,grade,id=nil)
  @name = name
  @grade = grade
end

def self.create_table
  sql = <<-SQL CREATE TABLE students(
    id PRIMARY KEY INTEGER,
    name TEXT,
    grade INTEGER
  )
  SQL
 DB[:conn].execute(sql)

end

end
