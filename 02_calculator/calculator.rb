#write your code here

def add (arg1, arg2)
    solution = arg1+arg2
end

def subtract (arg1,arg2)
   solution = arg1 - arg2 
end

def sum (arg)
    sums=0
    if arg.length > 0
        arg.each do |item|
            sums += item
        end
    end
    sums
end

#The splat operator '*' allows for multiple arguments (>2) to be taken
def multiplies (*args)
    multi=1
    args.each do |item|
        multi *=item
    end
    multi
end

def power (base,pow)
    sol = base**pow
end

def factorial (arg)
    total=arg
#Have to do greater than 1 because once it gets to 2, it will times by 1.
    while arg > 1 do
        total *= (arg-1)
        arg -= 1
    end
    
    total
end