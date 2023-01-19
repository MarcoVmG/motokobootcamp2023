
actor{
    public type Book = {
        Title : Text;
        Pages : Nat;
    };

    public func create_book(title : Text, pages : Nat) : async Book{
        let new_book : Book ={
            Title = title;
            Pages = pages;
        };

        return new_book;
    }   
}