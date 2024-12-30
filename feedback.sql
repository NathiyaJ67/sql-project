CREATE SCHEMA feedback;
use feedback;
----------------------------------------------------------------------------------------------------------------------------------------
CREATE table CUSTOMER (
Customer_id int Primary Key,
Name varchar(100),
Email varchar(100),
PhoneNumber int,
RegistrationDate date );

SELECT*FROM CUSTOMER;

INSERT INTO CUSTOMER VALUES
(01, "Uma Patel", "uma.patel@example.com", 987653012, "2023-01-07"),
(02, "Victor Hill", "victor.hill@example.com", 998771122, "2023-02-16"),
(03, "Wendy Young", "wendy.young@example.com", 913549876, "2023-03-28"),
(04, "Xander Cruz", "xander.cruz@example.com", 865432123, "2023-04-10"),
(05, "Yara Khan", "yara.khan@example.com", 945679123, "2023-05-04"),
(06, "Zane Lopez", "zane.lopez@example.com", 932185643, "2023-06-21"),
(07, "Andrew Carter", "andrew.carter@example.com", 919886543, "2023-07-17"),
(08, "Betty Green", "betty.green@example.com", 986541234, "2023-08-23"),
(09, "Carl Fisher", "carl.fisher@example.com", 945123478, "2023-09-09"),
(10, "Doris Allen", "doris.allen@example.com", 913265489, "2023-10-15"),
(11, "Elena Baker", "elena.baker@example.com", 984513765, "2023-01-26"),
(12, "Frank Reed", "frank.reed@example.com", 917876542, "2023-02-14"),
(13, "Gloria Miles", "gloria.miles@example.com", 912386541, "2023-03-02"),
(14, "Henry Parker", "henry.parker@example.com", 987654235, "2023-04-19"),
(15, "Isla Collins", "isla.collins@example.com", 919876421, "2023-05-11"),
(16, "Jack Cooper", "jack.cooper@example.com", 987641201, "2023-06-28"),
(17, "Kara Murphy", "kara.murphy@example.com", 932186542, "2023-07-21"),
(18, "Liam Hughes", "liam.hughes@example.com", 954329876, "2023-08-07"),
(19, "Mia Bennett", "mia.bennett@example.com", 984512398, "2023-09-01"),
(20, "Noah Russell", "noah.russell@example.com", 965432187, "2023-10-22");

-------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE CATEGORY (
Category_id VARCHAR(100) PRIMARY KEY,
Category_Name VARCHAR(100));

SELECT*FROM CATEGORY

INSERT INTO CATEGORY VALUES
	("C01", "Product Quality"),
    ("C02", "Customer Service"),
    ("C03", "Pricing"),
    ("C04", "Delivery"),
    ("C05", "Usability"),
    ("C06", "Warranty"),
    ("C07", "Refund Process"),
    ("C08", "Technical Support"),
    ("C09", "Features"),
    ("C10", "Performance"),
    ("C11", "Appearance"),
    ("C12", "Packaging"),
    ("C13", "Availability"),
    ("C14", "Order Accuracy"),
    ("C15", "Payment Process"),
    ("C16", "Promotions"),
    ("C17", "After-Sales Support"),
    ("C18", "Installation"),
    ("C19", "Battery Life"),
    ("C20", "Connectivity");
    
    ----------------------------------------------------------------------------------------------------------------------------------------
    
    CREATE TABLE ADMIN (
    Admin_id VARCHAR(100) PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Password int );
    
    INSERT into ADMIN VALUES 
    ("A001", "John", "john.doe@example.com", 1234),
    ("A002", "Jane", "jane.smith@example.com", 5678),
    ("A003", "Rober", "robert.brown@example.com", 9101),
    ("A004", "Davis", "emily.davis@example.com", 1121),
    ("A005", "Michael", "michael.wilson@example.com", 3141),
    ("A006", "Johnson", "sarah.johnson@example.com", 5161),
    ("A007", "Chris Brown", "chris.lee@example.com", 7181),
    ("A008", "Amanda Clark", "amanda.clark@example.com", 9202),
    ("A009", "David wilson", "david.hall@example.com", 2232),
    ("A010", "Meera", "emma.wright@example.com", 4252),
    ("A011", "daniel", "daniel.lopez@example.com", 6272),
    ("A012", "Olivia Turner", "olivia.turner@example.com", 8292),
    ("A013", "James", "james.scott@example.com", 1313),
    ("A014", "Harris", "sophia.harris@example.com", 5353),
    ("A015", "Benjamin Adams", "benjamin.adams@example.com", 7373),
    ("A016", "Grace", "grace.martinez@example.com", 9393),
    ("A017", "William", "william.anderson@example.com", 1414),
    ("A018", "Ella White", "ella.white@example.com", 3434),
    ("A019", "Joseph", "joseph.thompson@example.com", 5454),
    ("A020", "Thompson", "chloe.ramirez@example.com", 7474);
    
SELECT*FROM ADMIN

-------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Feedback (
    Feedback_ID INT  PRIMARY KEY,
    Customer_id INT,
    Category_id VARCHAR(100),
    Feedback_Text VARCHAR(100) NOT NULL,
    Rating INT ,
    Submission_Date DATE NOT NULL,
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Category_id) REFERENCES Category(Category_id)
);

INSERT INTO FEEDBACK VALUES
    (1,11,"C01", "Great product quality!", 5, "2024-01-01"),
    (2,02,"C02", "Customer service was very helpful.", 4, "2024-01-02"),
    (3,13,"C03", "Pricing could be better.", 3, "2024-01-03"),
    (4,17,"C04", "Delivery was fast and smooth.", 5, "2024-01-04"),
    (5,20,"C05", "The usability is excellent.", 5, "2024-01-05"),
    (6,03,"C06", "Product has good durability.", 4, "2024-01-06"),
    (7,15,"C07", "Pricing is slightly high.", 3, "2024-01-07"),
    (8,12,"C08", "Delivery process took too long.", 2, "2024-01-08"),
    (9,08,"C09", "Customer support was responsive.", 4, "2024-01-09"),
    (10,16,"C10", "Excellent build quality!", 5, "2024-01-10"),
    (11,14,"C11", "Easy to use and reliable.", 5, "2024-01-11"),
    (12,03,"C12", "Affordable and decent quality.", 4, "2024-01-12"),
    (13,19,"C13", "Very polite customer service.", 5, "2024-01-13"),
    (14,20,"C14", "Package was delayed but in good condition.", 3, "2024-01-14"),
    (15,13,"C15", "Great user experience.", 5, "2024-01-15"),
    (16,09,"C16", "Top-notch product quality!", 5, "2024-01-16"),
    (17,10,"C17", "Helpful and professional support.", 4, "2024-01-17"),
    (18,04,"C18", "Pricing is reasonable.", 4, "2024-01-18"),
    (19,12,"C19", "Quick delivery service.", 5, "2024-01-19"),
    (20,17,"C20", "Highly intuitive interface.", 5, "2024-01-20");
  
  SELECT*FROM FEEDBACK