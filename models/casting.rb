class Casting


    attr_accessor :id_stars, :id_movies, :fee
    attr_reader :id


    def initialize(options)
      @id_stars = options['id_stars'].to_i
      @id_movies = options['id_movies'].to_i
      @fee = options['fee']
      @id = options['id'].to_i if options['id']
    end

    def save()
      sql = "INSERT INTO castings
      (
      id_stars,
      id_movies,
      fee
      )
      VALUES(
      $1,
      $2,
      $3
      )
      RETURNING id"
      values = [@id_stars, @id_movies, @fee]
      @id = SqlRunner.run(sql, values)[0]['id'].to_i
    end


end
