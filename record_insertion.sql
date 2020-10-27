
/* PUBLISHER TABLE */

INSERT INTO library.PUBLISHER(Name, Address, Phone) VALUES ('Fairy Publishers','3rd steet,Gandhinagar',9905673245);
INSERT INTO library.PUBLISHER(Name, Address, Phone) VALUES ('Penguin Publishers','1130,9th block, Jaynagar',9334769284);
INSERT INTO library.PUBLISHER(Name, Address, Phone) VALUES ('DK Publishing House','5th stage, Banashankari',9943281749);
INSERT INTO library.PUBLISHER(Name, Address, Phone) VALUES ('Classic Publishers','2nd block, JP Nagar',8753917463);
INSERT INTO library.PUBLISHER(Name, Address, Phone) VALUES ('Zebra Publishers','7th stage, Indranagar',8447291024);

/* BOOK TABLE */

INSERT INTO library.BOOK(Book_id, Title, Publisher_name) VALUES (1,'Cinderella','Fairy Publishers');
INSERT INTO library.BOOK(Book_id, Title, Publisher_name) VALUES (2,'War and Peace','Classic Publishers');
INSERT INTO library.BOOK(Book_id, Title, Publisher_name) VALUES (3,'Harry Potter','Penguin Publishers');
INSERT INTO library.BOOK(Book_id, Title, Publisher_name) VALUES (4,'Malgudi Days','DK Publishing House');
INSERT INTO library.BOOK(Book_id, Title, Publisher_name) VALUES (5,'The Casual Vacancy','Zebra Publishers');
INSERT INTO library.BOOK(Book_id, Title, Publisher_name) VALUES (6,'Lethal White','Fairy Publishers');
INSERT INTO library.BOOK(Book_id, Title, Publisher_name) VALUES (7,'Oliver Twist','Classic Publishers');


/*   BOOK_AUTHORS TABLE */

INSERT INTO library.BOOK_AUTHORS(Book_id,Author_name) VALUES (1,'Daisy Fisher');
INSERT INTO library.BOOK_AUTHORS(Book_id,Author_name) VALUES (2,'Leo Tolstoy');
INSERT INTO library.BOOK_AUTHORS(Book_id,Author_name) VALUES (3,'JK Rowling');
INSERT INTO library.BOOK_AUTHORS(Book_id,Author_name) VALUES (4,'RK Narayan');
INSERT INTO library.BOOK_AUTHORS(Book_id,Author_name) VALUES (5,'JK Rowling');
INSERT INTO library.BOOK_AUTHORS(Book_id,Author_name) VALUES (6,'JK Rowling');
INSERT INTO library.BOOK_AUTHORS(Book_id,Author_name) VALUES (7,'Charles Dickens');


/*  BORROWER TABLE      */

INSERT INTO library.BORROWER(Card_no,Name,Address,Phone) VALUES (10,'Raj','23,3rd stage,HSR Layout',9546835453);
INSERT INTO library.BORROWER(Card_no,Name,Address,Phone) VALUES (20,'Ajay','45,8th block,Nandini Layout',7564946273);
INSERT INTO library.BORROWER(Card_no,Name,Address,Phone) VALUES (30,'Sneha','2nd block, Banashankari',8355768365);
INSERT INTO library.BORROWER(Card_no,Name,Address,Phone) VALUES (40,'Bheem','5th stage, RR Nagar',9233657381);
INSERT INTO library.BORROWER(Card_no,Name,Address,Phone) VALUES (50,'Deepa','4th stage,KR Puram',8453845402);
INSERT INTO library.BORROWER(Card_no,Name,Address,Phone) VALUES (60,'Indu','7th block, Kalyan Nagar',9945382731);


/*  LIBRARY_BRANCH TABLE    */
INSERT INTO library.LIBRARY_BRANCH(Branch_id,Branch_name,Address) VALUES ('C100','Central','6th stage,Yeshwantpur');
INSERT INTO library.LIBRARY_BRANCH(Branch_id,Branch_name,Address) VALUES ('M200','Malleshwaram','96,Sampige Road');
INSERT INTO library.LIBRARY_BRANCH(Branch_id,Branch_name,Address) VALUES ('V300','Vijayanagar','7th block,1st road,Vijayanagar');

/*   BOOK_COPIES TABLE       */


INSERT INTO library.BOOK_COPIES(Book_id,Branch_id,No_of_copies) VALUES (1,'C100',7);
INSERT INTO library.BOOK_COPIES(Book_id,Branch_id,No_of_copies) VALUES (2,'C100',9);
INSERT INTO library.BOOK_COPIES(Book_id,Branch_id,No_of_copies) VALUES (3,'C100',6);
INSERT INTO library.BOOK_COPIES(Book_id,Branch_id,No_of_copies) VALUES (4,'C100',8);
INSERT INTO library.BOOK_COPIES(Book_id,Branch_id,No_of_copies) VALUES (5,'C100',10);
INSERT INTO library.BOOK_COPIES(Book_id,Branch_id,No_of_copies) VALUES (6,'C100',9);
INSERT INTO library.BOOK_COPIES(Book_id,Branch_id,No_of_copies) VALUES (7,'C100',11);
INSERT INTO library.BOOK_COPIES(Book_id,Branch_id,No_of_copies) VALUES (1,'M200',16);
INSERT INTO library.BOOK_COPIES(Book_id,Branch_id,No_of_copies) VALUES (2,'M200',5);
INSERT INTO library.BOOK_COPIES(Book_id,Branch_id,No_of_copies) VALUES (3,'M200',7);
INSERT INTO library.BOOK_COPIES(Book_id,Branch_id,No_of_copies) VALUES (4,'M200',11);
INSERT INTO library.BOOK_COPIES(Book_id,Branch_id,No_of_copies) VALUES (5,'M200',6);
INSERT INTO library.BOOK_COPIES(Book_id,Branch_id,No_of_copies) VALUES (6,'M200',7);
INSERT INTO library.BOOK_COPIES(Book_id,Branch_id,No_of_copies) VALUES (7,'M200',6);
INSERT INTO library.BOOK_COPIES(Book_id,Branch_id,No_of_copies) VALUES (1,'V300',6);
INSERT INTO library.BOOK_COPIES(Book_id,Branch_id,No_of_copies) VALUES (2,'V300',8);
INSERT INTO library.BOOK_COPIES(Book_id,Branch_id,No_of_copies) VALUES (3,'V300',11);
INSERT INTO library.BOOK_COPIES(Book_id,Branch_id,No_of_copies) VALUES (4,'V300',6);
INSERT INTO library.BOOK_COPIES(Book_id,Branch_id,No_of_copies) VALUES (5,'V300',12);
INSERT INTO library.BOOK_COPIES(Book_id,Branch_id,No_of_copies) VALUES (6,'V300',9);
INSERT INTO library.BOOK_COPIES(Book_id,Branch_id,No_of_copies) VALUES (7,'V300',6);


/*   BOOK_LOANS  TABLE */


INSERT INTO library.BOOK_LOANS(Book_id,Branch_id,Card_no,Date_out,Due_date) VALUES (1,'V300',10,'2020-04-18','2020-04-28');
INSERT INTO library.BOOK_LOANS(Book_id,Branch_id,Card_no,Date_out,Due_date) VALUES (3,'V300',10,'2020-04-16','2020-04-26');
INSERT INTO library.BOOK_LOANS(Book_id,Branch_id,Card_no,Date_out,Due_date) VALUES (6,'C100',10,'2020-04-17','2020-04-27');
INSERT INTO library.BOOK_LOANS(Book_id,Branch_id,Card_no,Date_out,Due_date) VALUES (2,'M200',10,'2020-04-19','2020-04-29');
INSERT INTO library.BOOK_LOANS(Book_id,Branch_id,Card_no,Date_out,Due_date) VALUES (4,'V300',10,'2020-04-20','2020-04-30');
INSERT INTO library.BOOK_LOANS(Book_id,Branch_id,Card_no,Date_out,Due_date) VALUES (5,'C100',10,'2020-04-21','2020-05-01');

INSERT INTO library.BOOK_LOANS(Book_id,Branch_id,Card_no,Date_out,Due_date) VALUES (2,'V300',30,'2020-04-18','2020-04-28');
INSERT INTO library.BOOK_LOANS(Book_id,Branch_id,Card_no,Date_out,Due_date) VALUES (3,'M200',30,'2020-04-16','2020-04-26');
INSERT INTO library.BOOK_LOANS(Book_id,Branch_id,Card_no,Date_out,Due_date) VALUES (1,'C100',30,'2020-04-17','2020-04-27');
INSERT INTO library.BOOK_LOANS(Book_id,Branch_id,Card_no,Date_out,Due_date) VALUES (5,'V300',30,'2020-04-22','2020-05-02');
INSERT INTO library.BOOK_LOANS(Book_id,Branch_id,Card_no,Date_out,Due_date) VALUES (4,'M200',30,'2020-04-20','2020-04-30');
INSERT INTO library.BOOK_LOANS(Book_id,Branch_id,Card_no,Date_out,Due_date) VALUES (6,'V300',30,'2020-04-19','2020-04-29');
INSERT INTO library.BOOK_LOANS(Book_id,Branch_id,Card_no,Date_out,Due_date) VALUES (7,'C100',30,'2020-04-23','2020-05-03');

INSERT INTO library.BOOK_LOANS(Book_id,Branch_id,Card_no,Date_out,Due_date) VALUES (4,'V300',20,'2020-04-16','2020-04-26');
INSERT INTO library.BOOK_LOANS(Book_id,Branch_id,Card_no,Date_out,Due_date) VALUES (3,'C100',20,'2020-04-18','2020-04-28');

INSERT INTO library.BOOK_LOANS(Book_id,Branch_id,Card_no,Date_out,Due_date) VALUES (6,'V300',50,'2020-04-16','2020-04-26');

























