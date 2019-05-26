# require modules here
require 'yaml'

def load_library(path)
  # code goes here
  library = {}
  get = ['get_emoticon', 'get_meaning']

  for i in 0...get.length
    library[get[i]] = {}

    YAML.load_file(path).each do |key, value|
      library[get[i]][key] = value[i]
    end
  end

  library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
