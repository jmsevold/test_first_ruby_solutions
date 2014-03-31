class Book
  def title
    @title
  end
  
  def title=(title)
    @title = titleize(title) 
  end
  
  
  def titleize (title)
    title.capitalize!
    little_words = ['a','in','and','an','the','over','of','to']
    str_array = title.split
    str_array.each do |word|
      if !(little_words.include?(word))
          word.capitalize!
      end
    end
    str_array.join(" ")
  end
end
