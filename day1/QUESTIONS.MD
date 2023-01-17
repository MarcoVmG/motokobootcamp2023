1. How mush is the current capacity canister?
    The actual capacity of a canister is 4GB,  but there is also a work on on increasing in a future the capacity up to 300 GB with a new system API. But in Dicember 2022, a proposal was approved (Proposal: 92573 - IC Dashboard) that increase the canister capacity to 48 GiB per cansiter.

2. What is the issue with the following code sample?

actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}

The objective of the code is to reasign a value to the variable, but in motoko the variables "let" are inmutable. In case for fixing this error is needed to cahnge the keyword "let" with "var".            

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

The var message is a Text but is declared with an assignation of a now Text value (0), to indicate that is a text it should be between quotes ("").

4. False or True: we can remove the keyword async for return argument of a query since queries are faster to answer.

False. If there is a return value inside the function is necesary to have the async keyword on the function declaratio.