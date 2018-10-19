#arg = gets.chomp
=begin
class Book
# write your code here
    def title(arg)
        no_cap = ["the","a","an","and","in","of"]
        @books = arg.split(' ')
        #puts @book.inspect
        @books.map!{|x| 
            if @books.index(x)==0 or !no_cap.include?(x)
               x=x.capitalize
            else
                x
            end}
            @books = @books.join(' ')
        #puts @book
        @books
    end
#Cant put the puts here because it's outside the method def
end
#books = Book.new
#books.title(arg)
=end

class Book
attr_reader :title
    
    def title (arg)
        @arg = arg.split(' ')
        no_cap = ["the","a","an","and","in","of"]
        @arg.map!{|x| 
            if @arg.index(x)==0 or !no_cap.include?(x)
               x=x.capitalize
            else
                x
            end}
            @arg = @arg.join(' ')
    end
end

#@books = Book.new
#@books.title = "this is a test"
#@books.title