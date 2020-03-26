require_relative('../db/sql_runner.rb')


class Movie

    attr_accessor :title, :genre
    attr_reader :id


    def initialize(options)
      @title = options['title']
      @genre = options['genre']
      @id = options['id'].to_i if options['id']
    end

    def save()
      sql = "INSERT INTO movies
      (
      title,
      genre
      )
      VALUES(
      $1,
      $2
      )
      RETURNING id"
      values = [@title, @genre]
      @id = SqlRunner.run(sql, values)[0]['id'].to_i
    end



end
