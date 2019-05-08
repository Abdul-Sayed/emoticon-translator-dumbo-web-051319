# require modules here
require "yaml"

#############################################################
def load_library(library)
  file = YAML.load_file(library)

  eng_to_jap = {}
  jap_to_word = {}

  file.each { |meaning, emoticons|
    eng_to_jap[emoticons[0]] = emoticons[1]
    jap_to_word[emoticons[1]] = meaning
  }

  result = { "get_meaning" => jap_to_word, "get_emoticon" => eng_to_jap }

  return result
end

################################################################

def get_japanese_emoticon(library, emoji)
  emoticon_hash = load_library(library)
  eng_to_jap_hash = emoticon_hash["get_emoticon"]
  pp eng_to_jap_hash

  jap_emoji = eng_to_jap_hash[emoji]
  puts jap_emoji
  return jap_emoji
end

###############################################################

def get_english_meaning
  # code goes here
end