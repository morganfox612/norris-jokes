JOKES = []
require 'chuck_norris'

class ChuckJokes
  attr_accessor :joke_categories
  def initialize(joke_categories)
    @joke_categories = joke_categories
    JOKES << []
    def help

    end

    def get_joke_by_id(id)

    end

    def replace_name(name)

    end

    def random

    end
  end
end

categories = ChuckJokes.new(chuck_::JokeFinder.joke_categories)
puts JOKES
