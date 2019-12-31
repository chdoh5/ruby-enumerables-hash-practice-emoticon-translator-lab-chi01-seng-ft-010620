require "yaml"


def load_library(file_path)
  emoticons = YAML.load_file('./lib/emoticons.yml')
keys = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }

  emoticons.each do |meanings, pictures|
    pictures.each do |j_version, e_version|
    keys["get_meaning"][pictures[1]] = meanings
    keys["get_emoticon"][pictures[0]] = j_version
    end
  
    end
keys
  end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  library["get_emoticon"].each do |e, j|
    if e.include?(emoticon)
    puts j
    end
  end
  j
end

def get_english_meaning
  # code goes here
end