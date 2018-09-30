
module SetupDB 
  def self.setup_test_database
    con = PG.connect(dbname: 'chitter_test')
    con.exec("TRUNCATE peeps;")
  end

  def self.add_peeps
    connection = PG.connect(dbname: 'chitter_test')
    # Add the test data
    connection.exec("INSERT INTO peeps (text, created_at) VALUES ('test', null);")  
    connection.exec("INSERT INTO peeps (text, created_at) VALUES ('test1', null);")  
    connection.exec("INSERT INTO peeps (text, created_at) VALUES ('test2', null);")  
  end

end