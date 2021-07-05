require "yaml"
require 'pp'
require 'pry'

def load_library(file_path) #can call whatever... just a placeholder. 
  emoticon = 
  YAML.load_file(file_path)
  
  result = {"get_meaning": {}, "get_emoticon": {}}
  emoticon.each do |meaning, emoticon|
  #binding.pry 
  
  result[:get_meaning][emoticon[1]] = meaning
  result[:get_emoticon][emoticon[0]] = emoticon[1]
  
end 
result 
end 

def get_japanese_emoticon(file_path = './lib/emoticons.yml', english_emoticon) #bringing english emoticon as inpout and #trying to output japanese one . #tests gave us the info for the #english emoticon and expected us to return the japanese emoticons
  library = load_library(file_path)

  if library[:get_emoticon].include?(english_emoticon)  #how does #english emoticon argument know exactly what to bring into the #parenthesis here?
  library[:get_emoticon][english_emoticon]  #at the key of #get_emoticon at the key of english_emotic
  
else 
   "Sorry, that emoticon was not found"
end
end

def get_english_meaning(file_path = './lib/emoticons.yml', japanese_emoticon)
  library = load_library = load_library(file_path)

  if library[:get_meaning].include?(japanese_emoticon) 
    library[:get_meaning][japanese_emoticon]
  
else
  "Sorry, that emoticon was not found"
  
end
end