# require modules here
require 'yaml'

def load_library(path)
  # code goes here
  library = {}
  get = ['get_emoticon', 'get_meaning']

  library[get[0]] = {}
  library[get[1]] = {}

  YAML.load_file(path).each do |key, value|
    library[get[0]][value[0]] = value[1]
    library[get[1]][value[1]] = key
  end

  library
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  if load_library(path)["get_emoticon"][emoticon]
    return load_library(path)["get_emoticon"][emoticon]
  else
    return 'Sorry, that emoticon was not found'
  end
end

def get_english_meaning
  # code goes here
end
