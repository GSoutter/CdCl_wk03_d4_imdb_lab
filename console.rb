require_relative( 'models/star' )
require_relative( 'models/movie' )
require_relative( 'models/casting' )

require('pry-byebug')

Casting.delete_all()
Movie.delete_all()
Star.delete_all()


star1 = Star.new({'first_name' => 'Chris',
                  'last_name' => 'Hemsworth'})
star1.save


movie1 = Movie.new({'title'=> 'Thor', 'genre'=> 'action'})
movie1.save()

movie2= Movie.new({'title'=> 'Ragnarok', 'genre'=> 'action'})
movie2.save()

casting1 = Casting.new({'id_stars' => star1.id, 'id_movies' => movie1.id, 'fee' => 4.50})
casting2 = Casting.new({'id_stars' => star1.id, 'id_movies' => movie2.id, 'fee' => 7.50})
casting1.save()
casting2.save()





binding.pry
nil
