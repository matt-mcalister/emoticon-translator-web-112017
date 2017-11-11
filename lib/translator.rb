# require modules here

def load_library(file)
  # code goes here
  require "yaml"
  
  lib = YAML.load_file(file)

  result = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  lib.each do |universal, array|
    result[get_meaning][array[1]] = universal
    result[get_emoticon][array[0]] = array[1]
  end
end

def get_japanese_emoticon(file,symbol)
  # code goes here
  lib = load_library(file)
  result = nil
  lib.each do |universal, array|
    if symbol == array[0]
      result = array[1]
    end
  end
  result
end

def get_english_meaning(file,symbol)
  # code goes here
  lib = load_library(file)
  result = nil
  lib.each do |universal, array|
    if symbol == array[1]
      result = array[0]
    end
  end
  result
end
