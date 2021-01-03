# require modules here
require 'yaml'
require 'pry'

def load_library(path) #takes an argument
  new_hash = {} #takes in a new hash
  YAML.load_file(path).each do |key, value| #this is a translated data structure. Next we need to iterate through it and start to modify our new_hash so we have something to return at the end. We'll use the .each method to iterate through the data structure. If we call .each on the data structure when given the emoticons argument returns. Each when it iterates over a hash, gives you a key and value. We'll end our 'do'. 
  new_hash[key] = {} #We created an inner hash here ( {} ) with each key name. This has a key for the name of each emoticon where each key points to an inner hash. We now need the keys inside each inner hash with two symbols :english and :japanese.
  new_hash[key][:english] = value[0] #The next two lines, we are assigning attributes to the nested hash. We'll assign these to their values with their respective index numbers.
  new_hash[key][:japanese] = value[1]
end
  new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(path, emoticons) #takes in two arguments: the YAML file path and the emoticons
  load_library(path).each do |key, value| #calls our method load_library and gives it the argument of the file path. We want this to return the English meaning of the Japanese emoticons. We'll use our .each method to iterate through a key and a value. We'll end our 'do' so we don't forget.
  if value[:japanese] == emoticons #The next 3 lines, we want to return the English meaning of the Japanese emoticons. We'll end our 'if' so we don't forget.
    emoticons = key
end
  binding.pry
end
end