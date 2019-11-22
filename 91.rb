input = gets.chomp.to_i

def mfunction(arg1)
    return arg1-10 if arg1 > 100

    mfunction(mfunction(arg1+11))
end

puts mfunction(input)