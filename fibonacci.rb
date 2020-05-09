# Iterative method for fibonacci sequence. Displays n number of digits in the fibonacci sequence. 

def fibs(n)
    array = []
    previous_num = 0
    next_num = 1
    current_num = 1
    (n).times do 
      array.push(current_num)
      current_num = previous_num + next_num 
      previous_num = next_num
      next_num = current_num
    end 
    p array
  end
  
#fibs(12) => [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]

#Recursive method for fibonacci sequence. Displays nth digit of fibonacci sequence.

def fib_rec(n)
    (n < 2)? (return n) : (fib_rec(n - 1) + fib_rec(n - 2))
end

#p fib_rec(12)