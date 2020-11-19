CREATE TABLE Customer(
    Customer_id INT PRIMARY KEY NOT NULL,
    Customer_Name VARCHAR(162) NOT NULL,
    Birthday INT NOT NULL,
    Gender VARCHAR(6) NOT NULL,
    Phone_number VARCHAR(11) NOT NULL,
    E_mail VARCHAR(45),
    FOREIGN KEY (Reservation_id) REFERENCES Reservation(Reservation_id) 
    ON UPDATE CASCADE 
)ENGINE=INNODB;

CREATE TABLE Reservation(
    Reservation_id INT PRIMARY KEY NOT NULL,
    Room_id VARCHAR(45) NOT NULL,
    Check_in_Date INT NOT NULL,
    Check_Out_Date INT NOT NULL,
    Customer_id INT NOT NULL,
    FOREIGN KEY (Room_info_id) REFERENCES Room_Info(Room_info_id)
    ON UPDATE CASCADE
)ENGINE=INNODB;

CREATE TABLE Employee(
    Employee_id VARCHAR(20) PRIMARY KEY NOT NULL,
    Employee_Name VARCHAR(162) NOT NULL,
    Gender VARCHAR(6) NOT NULL,
    Account_Number VARCHAR(45) NOT NULL,
    Salary INT NOT NULL,
    On_work TINYINT(2) NOT NULL,
    FOREIGN KEY(Employee_info_id) REFERENCES Employee_info(Employee_info_id)
    ON UPDATE CASCADE
)ENGINE=INNODB;

CREATE TABLE Parking( 
	Car_num VARCHAR(20) PRIMARY KEY NOT NULL,
	Room_id VARCHAR(45) NOT NULL,
	Parking_location VARCHAR(45) NOT NULL,
	FOREIGN KEY(Reservation_id) REFERENCES Reservation(Reservation_id)
    ON UPDATE CASCADE
)ENGINE=INNODB;

CREATE TABLE Product(
    Product_Id INT NOT NULL,
    Product_Name VARCHAR(45) NOT NULL,
    Remain INT NOT NULL,
    Price INT NOT NULL
)ENGINE=INNODB;

CREATE TABLE Room_Info(
		Room_info_id INT PRIMARY KEY NOT NULL,
		Room_Type VARCHAR(45) NOT NULL,
		Class VARCHAR(45) NOT NULL,
		Capacity INT NOT NULL,
		Fee INT NOT NULL
)ENGINE=INNODB;

CREATE TABLE Room(
	Room_id VARCHAR(45) PRIMARY KEY NOT NULL,
	Room_floor INT NOT NULL,
	Room_number INT NOT NULL,
	FOREIGN KEY(Room_info_id) REFERENCES Room_Info(Room_info_id)
    ON UPDATE CASCADE
)ENGINE=INNODB;

CREATE TABLE Servey(
    Servey_ID INT PRIMARY KEY NOT NULL,
    Servey VARCHAR(45) NOT NULL,
    FOREIGN KEY(Reservation_id) REFERENCES Reservation(Reservation_id)
    ON UPDATE CASCADE
)ENGINE=INNODB;

CREATE TABLE Employee_Info(
    Employee_Info_Id INT NOT NULL,
    Department VARCHAR(45) NOT NULL,
    Grade VARCHAR(20) NOT NULL,
    Room_Floor VARCHAR(45) NOT NULL
)ENGINE=INNODB;

CREATE TABLE TASK (
  Task_id INT NOT NULL,
  Task VARCHAR(45) NOT NULL,
  Extra_Fee INT DEFAULT 0
)ENGINE=INNODB;

CREATE TABLE PRODUCT_USE(
  Task_Id INT NOT NULL,
  Product_Id INT NOT NULL
)ENGINE=INNODB;

CREATE TABLE Task_alloc(
  Employee_Id VARCHAR(20) NOT NULL,
  Task_Id INT NOT NULL
)ENGINE=INNODB;

CREATE TABLE Floor_alloc(
  Employee_Id VARCHAR(20) NOT NULL,
  Room_floor INT NOT NULL
)ENGINE=INNODB;
