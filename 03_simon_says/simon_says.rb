#write your code here
def echo(arg)
    arg
end

def shout(arg)
    arg.upcase
end

def repeat(*arg)
    if arg[1] != nil
#Was interpretting arg[1] not as an array so had to add spaces and remove last space
        arg = ((arg[0]+' ')*arg[1]).chomp(' ')
    else
# That was not the case here
        arg = (arg*2).join(' ')
    end
    arg
end

def start_of_word (arg,num)
   arg[0...num] 
end

#Split the string into an array based on spaces and then take the first element
def first_word (str)
   str.split(' ')[0] 
end

def titleize (str)
    lttl_wrds = ["and","the","is","a","an","to","as","over"]
#split the strings into arrays based on spaces
    str = str.split(' ')
#easier to capitalize first word separately then deal with it in the map function
    str[0] = str[0].capitalize
#Take each element in array and capitlize it (map! modifies existing array)
    str = str.map! {|x| 
        if lttl_wrds.include?(x)  
            x
        else
            x.capitalize
        end}.join(' ')
    str


end