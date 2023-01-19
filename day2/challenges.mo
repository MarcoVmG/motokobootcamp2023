actor{
//1. Write a function average_array that takes an array of integers and returns the average value of the elements in the array.
    var sum : Int = 0;
    var average : Int = 0;
    public func average_array(numbers : [Int]) : async Int {
        for(num in numbers.vals()) {
            sum := sum + num;
        };
        average := sum / numbers.size();
        sum := 0;
        
        return average;
    };


//2. Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.


//3. Write a function factorial that takes a natural number n and returns the factorial of n.

    var result : Nat = 1;
    var count : Nat = 1;
    public func factorial_number (n : Nat) : async Nat {
        while (count <= n){
            result := result * count;
            count += 1;
        };

        return result;
    };

//4. Write a function number_of_words that takes a sentence and returns the number of words in the sentence.

//5. Write a function find_duplicates that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.


//6. Write a function convert_to_binary that takes a natural number n and returns a string representing the binary representation of n.


}