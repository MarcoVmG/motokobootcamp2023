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
    };


//3. Write a function hours_to_minutes that takes a number of hours n and returns the number of minutes.
    var minutes : Nat = 0;

    public func hours_to_minutes(h : Nat) : async Nat {
        minutes := h * 60;
        return minutes;
    };
//4. Write two functions set_counter & get_counter.
// - set_counter sets the value of counter to n.
// - get_counter returns the current value of counter.
    var counter : Nat = 0;
    public func set_counter(n : Nat) : async (){
        counter := n;
    };

    public query func get_counter() : async Nat{
        return counter;
    };

//5. Write a function test_divide that takes two natural numbers n and m and returns a boolean indicating if n divides m.
    var isDiv : Bool = false;
  
    public func test_divide(n : Nat, m : Nat) : async Bool {
        if(m % n == 0){
            isDiv := true;
        }else {
            isDiv := false;
        };
        return isDiv;
        
    };

//6. Write a function is_even that takes a natural number n and returns a boolean indicating if n is even.
    var isEven : Bool = false;

    public func is_even(n : Nat) : async Bool{

        if(n % 2 == 0){
            isEven := true;
        }else {
            isEven := false;
        };

        return isEven
    };


}