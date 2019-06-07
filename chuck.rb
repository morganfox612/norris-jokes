require 'chuck_norris'


class ChuckJokes
  attr_accessor :joke_categories
  def initialize(joke_categories)
    @joke_categories = joke_categories
    def help
      puts "Please enter ruby app.rb (id number) to get joke by id"
      puts "Please enter ruby app.rb (First name, Last name) to replace name in joke"
      puts "Please enter ruby app.rb (random) to get joke by random"

    end

    def get_joke_by_id(id)
      joke = ChuckNorris::JokeFinder.find_joke("#{id}")
      puts joke.joke
      puts joke.id


    end

    def replace_name(name)
      # name = name.split
      joke = ChuckNorris::JokeFinder.get_joke(first_name: "#{name[0]}", last_name: "#{name[1]}")
      puts joke.joke


    end

    def random
      joke = ChuckNorris::JokeFinder.get_joke
      puts joke.id
      puts joke.joke
      puts joke.categories

    end
  end
end

# joke = ChuckJokes.new("joke 1")
# joke.random
# joke = ChuckJokes.new("Morgan")
# joke.replace_name
# joke = ChuckJokes.new(497)
# joke.get_joke_by_id
