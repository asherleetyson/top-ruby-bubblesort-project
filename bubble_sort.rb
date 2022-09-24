def bubble_sort(initial_array)
    #Return the original array if it has 0-1 elements (because there's no need to sort it then)
    initial_array_length = initial_array.size
    return initial_array if initial_array_length <= 1
    
    #Creating a loop that'll iterate through the array and compare each element to the next one
    loop do
        #create a variable that will be checked so we don't get into an infinite loop 
        swapped = false
        #basically just saying, if the array has 5 numbers, loop through it 4 times. If Left > Right, swap their position
        (initial_array_length - 1).times do |i|
            if initial_array[i] > initial_array[i+1]
                initial_array[i], initial_array[i+1] = initial_array[i+1], initial_array[i]
                swapped = true
            end
        end
        #exit the loop once we're no longer swapping any numbers (meaning they're sorted from lowest to highest)
        break if not swapped
    end 

    initial_array
end 

unsorted_array = [5,4,8,4,7,2,9,6,5,4,1,2]

print bubble_sort(unsorted_array)

#Googled "bubble sorting items in an array and ruby"
#Worked from this explanation - https://www.honeybadger.io/blog/ruby-bubble-sort/