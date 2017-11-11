# require modules here

def load_library
  # code goes here
  require "yaml"

  lib = YAML.load_file('emoticons.yml')
  lib
end

def get_japanese_emoticon(symbol)
  # code goes here
  lib = load_library
  result = nil
  lib.each do |universal, array|
    if symbol == array[0]
      result = array[1]
    end
  end
  result
end

def get_english_meaning
  # code goes here
  lib = load_library
  result = nil
  lib.each do |universal, array|
    if symbol == array[1]
      result = array[0]
    end
  end
  result
end
