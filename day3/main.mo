import Book "book";
import List "mo:base/List";


actor{
    let book_test : Book = {};
    let book_list = List.nil<Book>();

    public func add_book (book : Book) : async(){
        book_list.push(book, book_list);
    };
    
    public query func() : async [Book]{
        return List.toArray(book_list);
    };

}
