# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  yaml_hash = YAML.load_file(file_path)
  get_emoticon = {}
  get_meaning = {}
  yaml_hash.each do |word, emoticon_array|
    get_emoticon[emoticon_array[0]] = emoticon_array[1]
    get_meaning[emoticon_array[1]] = word
   end 
  hash = {"get_emoticon": get_emoticon, "get_meaning": get_meaning}
  hash
end

def get_japanese_emoticon(file_path, emoticon)
  hash = load_library(file_path)
  check_answer(hash[:get_emoticon][emoticon])
  
end

def get_english_meaning(file_path, emoticon)
  hash = load_library(file_path)
  check_answer(answer = hash[:get_meaning][emoticon])
  
end

def check_answer(answer)
  if answer.nil?
    "Sorry, that emoticon was not found"
  else
      answer
  end
end