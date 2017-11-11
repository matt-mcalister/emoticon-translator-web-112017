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
    result["get_meaning"][array[1]] = universal
    result["get_emoticon"][array[0]] = array[1]
  end
  result
end

def get_japanese_emoticon(file,symbol)
  # code goes here
  lib = load_library(file)
  result = nil

  lib["get_emoticon"].each do |english,japanese|
    if symbol == English
      result = japanese
    end
  end
  result
end

def get_english_meaning(file,symbol)
  # code goes here
  lib = load_library(file)
  result = nil
  lib["get_meaning"].each do |japanese,meaning|
    if symbol == japanese
      result = meaning
    end
  end
  
  result
end
