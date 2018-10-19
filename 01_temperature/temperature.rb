#write your code here
def ftoc temp
    celsius = (temp-32)*5/9
    celsius
end

def ctof temp
#Had to change one of the numbers to float to get the math output to float
    temp = temp.to_f
   farenheight = (temp * 9/5) + 32
end