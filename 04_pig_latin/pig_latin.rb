#write your code here
   #arg = gets.chomp
=begin
def translate(arg)
  vowels = ["a","e","i","o","u"]
  arg = arg.split(' ')
    puts arg.inspect
  arg.each do |x|
    if vowels.include?(x[0])
      arg = arg.map{|x| x+"ay"}
    else
#string will take off first letter until it gets a vowel and put it on the end
      until vowels.include?(x[0])
        arg = arg.map{|x| x=x[1...x.length]+x[0]}
          puts arg
      end
      x = x+"ay"
    end
  end 
arg = arg.join(' ')
    puts arg
end



def translate(arg)
  vowels = ["a","e","i","o","u"]
  @test = arg.split(' ')
    puts @test.inspect
  @test.each do |x|
      puts x
      until vowels.include?(x[0])
              x=x[1...x.length]+x[0]
          puts x
      end
      y = x+"ay"
      @test = @test.map! {|x| x=y}.join(' ')
  end
 puts @test
end
test = translate(arg)
=end

def translate(arg)
  vowels = ["a","e","i","o","u"]
  @test = arg.split(' ')
    puts @test.inspect
#map acts as its own each.do. YOU DO NOT NEED AN EACH DO AND A MAP!!!!
    @test = @test.map! {|x| 
      until vowels.include?(x[0])
          if x[0].downcase == "q"
#if q case is met removes first 2 chars from string and adds them auto to end of string
              x=x[2...x.length]+x[0..1]
          else
              x=x[1...x.length]+x[0]
          end
      end
#Joins the array back into a string separated by a space
      x = x+"ay"}.join(' ')
 #puts @test
end
#test = translate(arg)