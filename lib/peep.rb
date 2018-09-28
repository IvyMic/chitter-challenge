require 'pg'
class Peep

  def self.all
    connection = self.connect_db
    all_peeps = connection.exec (
      "SELECT text, TO_CHAR(created_at, 'DD-MON-YYYY') 
       FROM peeps 
       ORDER BY created_at DESC;"
      )
      
    all_peeps.map do |row|
      {
         text: row['text'],
         created_at: row['to_char']
      }
    end  
  end

  def self.add(peep)
    connection = self.connect_db
    connection.exec("INSERT INTO peeps (text) VALUES ('#{peep}');")
  end


  private 
  def self.connect_db
    database = ENV['ENVIRONMENT'] == 'test' ? 'chitter_test' : 'chitter'
    connection = PG.connect(dbname: database)
  end
end