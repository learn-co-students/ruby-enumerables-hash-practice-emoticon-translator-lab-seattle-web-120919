# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  
  emoticons_hash = {}
  emoticons_hash["get_emoticon"] = {}
  emoticons_hash["get_meaning"] = {}
  
  emoticons.each do |meaning, emoticon|
    emoticons_hash["get_emoticon"][emoticon.first] = emoticon.last
    emoticons_hash["get_meaning"][emoticon.last] = meaning
  end
  
  emoticons_hash
end

def get_japanese_emoticon(file_path, emoticon)
  emoticons_hash = load_library(file_path)
  japanese_emoticon = emoticons_hash["get_emoticon"][emoticon]
  
  if !japanese_emoticon
    return "Sorry, that emoticon was not found"
  end
  
  japanese_emoticon
end

def get_english_meaning(file_path, emoticon)
  emoticons_hash = load_library(file_path)
  meaning = emoticons_hash["get_meaning"][emoticon]
  
  if !meaning
    return "Sorry, that emoticon was not found"
  end
  
  meaning
end