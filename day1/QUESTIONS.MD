1. How mush is the current capacity canister?
    The capacity of a canister is 4GB,  but there is also work on increasing the capacity up to 300 GB with a new system API in the future. But in December 2022, a proposal was approved (Proposal: 92573 - IC Dashboard) that increased the canister capacity to 48 GiB per canister.

2. What is the issue with the following code sample?

actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}

The objective of the code is to reassign a value to the variable, but in Motoko, the variables "let" are immutable. So in case fixing this error is needed, change the keyword "let" to "var".           

3. What is the issue wiht the following code sample?

actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}

The var message is a Text but is declared with an assignation of a now Text value (0) to indicate that it is a text; it should be between quotes ("").

Also, another error is that the function change_message is declared as a query; this made the function unable to reassign the value of the "counter". Again, remove the keyword "query" and leave it as a public function to fix this.

4. False or True: we can remove the keyword async for return argument of a query since queries are faster to answer.

False. If there is a return value inside the function is necessary to have the async keyword on the function declaration.
