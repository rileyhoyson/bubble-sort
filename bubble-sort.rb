def bubble_sort(array)
    array.length.times do
        array.each_with_index do |number, index|
            next_number = array[index + 1]
            if next_number.nil?
                next
            elsif number > next_number
                array.insert(index, next_number)
                array.delete_at(index + 2)
            end
        end
    end   
    p array
end

bubble_sort([9, 3, 8, 2, 7, 19, 11, 12, 8, 25, 30, 40])