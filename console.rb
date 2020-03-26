require_relative( 'models/star' )
require_relative( 'models/movie' )
require_relative( 'models/casting' )

require('pry-byebug')

star1 = Star.new({'first_name' => 'Chris',
                  'last_name' => 'Hemsworth'})
star1.save


movie1 = Movie.new({'title'=> 'Thor', 'genre'=> 'action'})
movie1.save()

casting1 = Casting.new({'id_stars' => star1.id, 'id_movies' => movie1.id, 'fee' => 4.50})
casting1.save()
binding.pry
nil
