def sum_to(n)
    return nil if n < 1
    return n if n == 1

    n + sum_to(n - 1)
end

# p sum_to(5) 
# p sum_to(1)
# p sum_to(9) 
# p sum_to(-8)

def add_numbers(num_array)
    return nil if num_array.empty?
    return num_array.first if num_array.length == 1

    num_array[-1] + add_numbers(num_array[0...num_array.length - 1])
end

# p add_numbers([1,2,3,4]) # => returns 10
# p add_numbers([3]) # => returns 3
# p add_numbers([-80,34,7]) # => returns -39
# p add_numbers([]) # => returns nil

def gamma_fnc(n)
    return nil if n < 1
    return 1 if n == 1

    (n - 1) * gamma_fnc(n - 1)
end

# p gamma_fnc(0)  # => returns nil
# p gamma_fnc(1)  # => returns 1
# p gamma_fnc(4)  # => returns 6
# p gamma_fnc(8)  # => returns 5040

def ice_cream_shop(flavors,favorite)
    return false if flavors.empty?
    return true if flavors.last == favorite

    ice_cream_shop(flavors[0...-1], favorite)
end

# p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
# p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
# p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
# p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
# p ice_cream_shop([], 'honey lavender')  # => returns false

def reverse(string)
    return "" if string.empty?
    reverse(string[1..-1]) + string[0]
end

p reverse("house") # => "esuoh"
p reverse("dog") # => "god"
p reverse("atom") # => "mota"
p reverse("q") # => "q"
p reverse("id") # => "di"
p reverse("") # => ""