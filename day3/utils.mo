import Array "mo:base/Array";

actor{
    var max_num : Int = 0;
    var counter : Int = 0;
    public func second_maximum(arr : [Int]) : async Int{

          for(item in arr.vals()) {
          
              if(item > max_num and counter <= 2 ){
                max_num := item;
                counter += 1;
              }else{
                max_num := max_num;
              };
            
          };
        
        counter := 0;
        return max_num;
       
    };

    var array_odd : [Nat] = [];

    public func remove_even(arr : [Nat]) : async [Nat]{

        for(number in arr.vals()) {
            if(number % 2 == 0){
                array_odd := Array.append(array_odd,[number]);
            };
        };

        return array_odd;
    };

    
}