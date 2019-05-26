# require modules here
require 'yaml'

def load_library(path)
  # code goes here
  library = {}
  get = ['get_emoticon', 'get_meaning']

  for i in 0...get.length
    library[get[i]] = {}

    YAML.load_file(path).each do |key, value|
      library[get[i]][value[i]] = key
    end
  end

  library
end

def get_japanese_emoticon
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

def get_english_meaning
  # code goes here
end
