1. Who controls the ledger canister?

A ledger is a canister and canisters are controlled by principals with the controller role or other canisters

2. What is the subnet of the canister with the id: mwrha-maaaa-aaaab-qabqq-cai? How much nodes are running this subnet?



3. I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?

the expected voting power for 4 years is 14.97 ICPs

4. What is wrong with the following code?

actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
 
}
The main problem is that Nat.toText(m) cannot be executed, as it needs to import the Nat module before the actor declaration. The issue will solve by adding: import Nat "mo:base/Nat"; before the actor declaration. Also, the variables n and t can be removed as they are not used in the code

5. What is wrong with the following code?

actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
 
}

To solve this issue remove the var keyword from "[var Text]" and from "async [var Text]. 
6. What is wrong with the following code?

actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
 
}

The problem is that Array.append cannot be executed as the Array module should be imported to use the function append.