require "./chuck"
joke = ChuckJokes.new("joke 1")

  if ARGV.length == 2
    joke.replace_name(ARGV)
  end

  if ARGV.length == 1
    if ARGV[0] == 'random'
      joke.random
      else
        joke.get_joke_by_id(ARGV[0])
      end
  end

  if ARGV.length == 0
    joke.help
  end
