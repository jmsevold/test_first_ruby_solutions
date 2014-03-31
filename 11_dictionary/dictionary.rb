class Dictionary
  attr_reader :entries
  
  def initialize
    @entries = {}
  end
  
  def keywords
    @entries.keys.sort
  end
  
  def add(entry)
    if entry.class == Hash
      @entries.merge!(entry)
    else
      @entries[entry] = nil
    end
  end
  
  def include?(key)
    @entries.has_key?(key)
  end
  
  def find(entry)
    if @entries.has_key?(entry)
      @entries.select { |key,value| key == entry }
    elsif is_prefix?(entry, @entries)
       @entries.select { |keys,values| keys.include?(entry) }
    else
      {}
    end
  end
  
  def printable
    result = ""
    ordered_hash = {}
    keywords.each do |sorted_entry|
      @entries.each do |key,value|
        if sorted_entry == key
          ordered_hash[sorted_entry] = value
        end
      end
    end
    ordered_hash.each do |key,value|
      result += "[#{key}] \"#{value}\"\n"
    end
    result.chomp
  end
end



def is_prefix?(entry,dictionary)
  dictionary.each do |keys,values|
    return true if keys.include?(entry)
  end
  false
end
  
#the issue here, is that printable should display the keys in alphabetical order
#we can call keys.sort to get an array of ordered keys.
#then create an empty hash
#do a nested loop
  #if a item in the array matches a key in the hash,
    #empty_hash[array_item] = the value of that key
#return the new hash