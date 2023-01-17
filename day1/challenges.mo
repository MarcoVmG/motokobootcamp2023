import Nat "mo:base/Nat";
actor{


//1. Write a function multiply that takes two natural numbers and returns the product.
    var result : Nat = 0;

    public func multiply(n : Nat, m : Nat) : async Nat{
        result := n * m;
        return result;
    };

//2. Write a function volume that takes a natural number n and returns the volume of a cube with side length n.
    var vol : Nat = 0;

    public func volume( n : Nat) : async Nat{
        vol := n * n * n;
        return vol;
    }


//3. Write a function hours_to_minutes that takes a number of hours n and returns the number of minutes.

//4. Write two functions set_counter & get_counter.
// - set_counter sets the value of counter to n.
// - get_counter returns the current value of counter.

//5. Write a function test_divide that takes two natural numbers n and m and returns a boolean indicating if n divides m.

//6. Write a function is_even that takes a natural number n and returns a boolean indicating if n is even.



}