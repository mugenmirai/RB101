sentence = "---what's my +*& line?"

def cleanup(string)
  string.gsub(/\W+/, ' ')
end

p cleanup sentence