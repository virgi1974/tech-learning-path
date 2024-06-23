# CURRYING

Currying is a technique in which a function is transformed into a sequence of functions, each with a single argument

```ruby
multiply_function = -> (number) do
   -> (another_number) do
       number * another_number
   end
end

doubler = multiply_function.(2)
tripler = multiply_function.(3)

puts doubler.(4)
puts tripler.(4)
```

other

```ruby
add_function = -> (x) do
   -> (y) do
       x + y
   end
end

adder_5 = add_function.(5)
adder_10 = add_function.(10)

puts adder_5.(3)  # Outputs 8
puts adder_10.(3) # Outputs 13

```

add_function is a curried function that takes one parameter x.
It returns another function that takes another parameter y.
The inner function adds x to y.
adder_5 is created by calling add_function with 5, so it returns a function that adds 5 to any given number.
adder_10 is created by calling add_function with 10, so it returns a function that adds 10 to any given number.
puts adder_5.(3) outputs the result of adding 5 to 3, which is 8.
puts adder_10.(3) outputs the result of adding 10 to 3, which is 13.
This demonstrates how currying allows you to create specialized functions from a more general one.
