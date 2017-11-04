class Dictionary

  def initialize
    @d = {}
  end
  def entries
    @d
  end
  def add(entry)
    if entry.class == Hash
    return  @d[entry.keys.first] = entry.values.first
  elsif  entry.class == String
    return  @d[entry] = nil
    end
  end
  def keywords
    @d.keys.sort
  end
  def include?(word)
    if @d.keys.first == word
      true
    else
      false
    end
  end
  def find(word)
    @d.select {|k, v| k.start_with?(word)}
  end
end
