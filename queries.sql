

/*      1)  List all the books in the library sorting them by author and title. */

SELECT Title,Author_name FROM library.BOOK JOIN library.BOOK_AUTHORS ON library.BOOK.Book_id = library.BOOK_AUTHORS.Book_id ORDER BY Author_name;

SELECT Title,Author_name FROM library.BOOK JOIN library.BOOK_AUTHORS ON library.BOOK.Book_id = library.BOOK_AUTHORS.Book_id ORDER BY Title;


/*      2)  List all the books in the library by publisher and title.  */

SELECT Title,Publisher_name FROM library.BOOK;


/*      3)  For each branch print the number of copies of each book. Sort by branch id, publisher then book title.    */

SELECT Branch_id, Branch_name, Book_id, Title, Publisher_name, No_Of_Copies FROM (library.LIBRARY_BRANCH NATURAL JOIN library.BOOK NATURAL JOIN library.BOOK_COPIES) GROUP BY Branch_id,Book_id,No_of_copies ORDER BY Branch_id; 

SELECT Branch_id, Branch_name, Book_id, Title, Publisher_name, No_Of_Copies FROM (library.LIBRARY_BRANCH NATURAL JOIN library.BOOK NATURAL JOIN library.BOOK_COPIES) GROUP BY Branch_id,Book_id,No_of_copies ORDER BY Publisher_name;

SELECT Branch_id, Branch_name, Book_id, Title, Publisher_name, No_Of_Copies FROM (library.LIBRARY_BRANCH NATURAL JOIN library.BOOK NATURAL JOIN library.BOOK_COPIES) GROUP BY Branch_id,Book_id,No_of_copies ORDER BY Title;


/*      4)  How many copies of the book titled Harry Potter are owned by the library branch whose name is ‘Vijayanagar’?     */

SELECT No_of_copies AS Vijayanagar_Harry_Potter_Copies FROM ((library.BOOK NATURAL JOIN library.BOOK_COPIES) NATURAL JOIN library.LIBRARY_BRANCH) WHERE Title='Harry Potter' AND Branch_name='Vijayanagar';


/*      5)  How many copies of the book titled War and Peace are owned by each library branch?   */


SELECT Branch_name, No_of_copies AS No_of_copies_War_and_Peace FROM ((library.BOOK NATURAL JOIN library.BOOK_COPIES) NATURAL JOIN library.LIBRARY_BRANCH) WHERE Title='War and Peace';


/*      6)  For each book authored (or co-authored) by J. K. Rowling, retrieve the title and the number of copies owned by the library branch whose name is Central.    */


SELECT Title, No_of_copies AS JK_Rowling_Central FROM ((( library.BOOK_AUTHORS NATURAL JOIN library.BOOK) NATURAL JOIN library.BOOK_COPIES) NATURAL JOIN library.LIBRARY_BRANCH)  WHERE Author_name='JK Rowling' AND Branch_name='Central';


/*      7)  For each library branch, retrieve the branch name and the total number of books loaned out from that branch. Sort it in descending order of total number of books and branch name.    */

SELECT Branch_name,COUNT(*) AS Books_Loaned_Out FROM (library.BOOK_LOANS NATURAL JOIN library.LIBRARY_BRANCH) GROUP BY Branch_name ORDER BY COUNT(*) DESC;

SELECT Branch_name,COUNT(*) AS Books_Loaned_Out FROM (library.BOOK_LOANS NATURAL JOIN library.LIBRARY_BRANCH) GROUP BY Branch_name ORDER BY Branch_name DESC;


/*      8)  Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out. Sort the output.     */

SELECT B.Name, B.Address, COUNT(*) AS Books_Checked_Out FROM library.BORROWER B, library.BOOK_LOANS L WHERE B.Card_no = L.Card_no GROUP BY B.Card_no HAVING COUNT(*)>5 ORDER BY books_checked_out;


/*      9)   For each book that is loaned out from the Vijayanagar branch and whose Due_date is today, retrieve the book title, the borrower’s name, and the borrower’s address.   */

SELECT B.Title, BR.Name, BR.Address FROM library.BOOK B, library.BORROWER BR, library.BOOK_LOANS BL, library.LIBRARY_BRANCH LB WHERE LB.Branch_name = 'Vijayanagar' AND LB.Branch_id = BL.Branch_id AND BL.Due_date = 'today' AND BL.Card_no = BR.Card_no AND BL.Book_id = B.Book_id;


/*      10)  Retrieve the names of all borrowers who do not have any books checked out.    */

SELECT Name FROM library.BORROWER B WHERE NOT EXISTS (SELECT * FROM library.BOOK_LOANS L WHERE B.Card_no = L.Card_no);
