class Timer
  #write your code here
    def initialize
        @seconds = 0
    end

    def seconds
        @seconds
    end

    def seconds=(num)
        @seconds = num
        @seconds
    end

    def time_string
        #total = Time.at(@seconds).utc.strftime("%H:%M:%S")
        # Or you can do it this way
        seconds = @seconds % 60
        minutes = (@seconds/60)%60
        hours = (@seconds)/3600
# % is also Ruby's string operator and takes inputs from the array on the right and inserts them into the strin
        "%02d:%02d:%02d" % [hours,minutes,seconds]
    end
    
    def padded (num)
        if num < 10
            num = 0.to_s + num.to_s
        else
            num = num.to_s
        end
        num
    end
    
end

=begin
@test=Timer.new
@test.seconds = 4500
puts @test.time_string
=end