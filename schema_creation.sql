

CREATE SCHEMA library;


CREATE TABLE library.PUBLISHER (
Name Varchar(200) PRIMARY KEY,
Address Varchar(400),
Phone Decimal(10)
);

CREATE TABLE library.BOOK (
Book_id Int PRIMARY KEY,
Title Varchar(200),
Publisher_name Varchar(200),
FOREIGN KEY (Publisher_name) REFERENCES library.PUBLISHER(Name)
ON DELETE SET NULL ON UPDATE CASCADE
);


CREATE TABLE library.BOOK_AUTHORS (
Book_id Int NOT NULL,
Author_name Varchar(200) NOT NULL,
PRIMARY KEY (Book_id, Author_name),
FOREIGN KEY (Book_id) REFERENCES library.BOOK(Book_id)
ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE library.LIBRARY_BRANCH (
Branch_id Char(4) PRIMARY KEY,
Branch_name Varchar(200) NOT NULL,
Address Varchar(400)
);

CREATE TABLE library.BOOK_COPIES (
Book_id Int NOT NULL,
Branch_id Char(4) NOT NULL,
No_of_copies Int DEFAULT 1,
PRIMARY KEY (Book_id, Branch_id),
FOREIGN KEY (Book_id) REFERENCES library.BOOK(Book_id)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (Branch_id) REFERENCES library.LIBRARY_BRANCH(Branch_id)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE library.BORROWER (
Card_no Int PRIMARY KEY,
Name Varchar(200) NOT NULL,
Address Varchar(400),
Phone Decimal(10)
);


CREATE TABLE library.BOOK_LOANS (
Book_id Int NOT NULL,
Branch_id Char(4) NOT NULL,
Card_no Int NOT NULL,
Date_out Date,
Due_date Date,
PRIMARY KEY (Book_id, Branch_id, Card_no),
FOREIGN KEY (Book_id) REFERENCES library.BOOK(Book_id)
ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (Branch_id) REFERENCES library.LIBRARY_BRANCH(Branch_id)
ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (Card_no) REFERENCES library.BORROWER(Card_no)
ON DELETE RESTRICT ON UPDATE CASCADE
);







