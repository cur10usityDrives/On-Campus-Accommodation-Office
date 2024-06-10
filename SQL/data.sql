-- INSERT INTO QUERIES -- 

INSERT INTO NextOfKin (NextOfKinID, Name, BannerNumber, Relationship) VALUES
  (1, 'John Doe', 88888, 'Parent'),
  (2, 'Jane Smith', 99999, 'Sibling'),
  (3, 'Bob Johnson', 10101, 'Guardian'),
  (4, 'Alice Turner', 11111, 'Parent'),
  (5, 'Charlie Harris', 22222, 'Sibling'),
  (6, 'Eva Clark', 33333, 'Guardian'),
  (7, 'David White', 44444, 'Parent'),
  (8, 'Sophia Davis', 55555, 'Sibling'),
  (9, 'Oscar Green', 66666, 'Guardian'),
  (10, 'Emma Turner', 77777, 'Parent');
  
  
  INSERT INTO Advisor (AdviserID, Position, RoomNumber, FullName, Department, Email, PhoneNumber) VALUES
  (101, 'Senior Advisor', 'A101', 'Dr. Smith', 'Mathematics', 'dr.smith@example.com', '555-1234'),
  (102, 'Junior Advisor', 'B202', 'Prof. Johnson', 'Physics', 'prof.johnson@example.com', '555-5678'),
  (103, 'Counselor', 'C303', 'Ms. Davis', 'Psychology', 'ms.davis@example.com', '555-9876'),
  (104, 'Advising Coordinator', 'D404', 'Mr. Turner', 'Chemistry', 'mr.turner@example.com', '555-1111'),
  (105, 'Academic Advisor', 'E505', 'Dr. Harris', 'Computer Science', 'dr.harris@example.com', '555-2222'),
  (106, 'Career Counselor', 'F606', 'Ms. Clark', 'Engineering', 'ms.clark@example.com', '555-3333'),
  (107, 'Student Advisor', 'G707', 'Prof. White', 'Biology', 'prof.white@example.com', '555-4444'),
  (108, 'Research Advisor', 'H808', 'Dr. Green', 'Mathematics', 'dr.green@example.com', '555-5555'),
  (109, 'Psychology Counselor', 'I909', 'Ms. Turner', 'Psychology', 'ms.turner@example.com', '555-6666'),
  (110, 'Health Sciences Advisor', 'J1010', 'Dr. Davis', 'Health Sciences', 'dr.davis@example.com', '555-7777');
  
  
  
INSERT INTO ResidenceStaff (StaffID, FullName, DOB, Position, Email, Gender, Address) VALUES
  (201, 'Alice Johnson', '1990-05-15', 'Manager', 'alice@example.com', 'Female', '123 Main St'),
  (202, 'Bob Williams', '1985-08-22', 'Supervisor', 'bob@example.com', 'Male', '456 Oak St'),
  (203, 'Eva Davis', '1992-11-10', 'Resident Assistant', 'eva@example.com', 'Female', '789 Pine St'),
  (204, 'Charlie Turner', '1988-03-05', 'Residence Coordinator', 'charlie@example.com', 'Male', '101 Cedar St'),
  (205, 'Sophia Harris', '1995-09-18', 'Residence Manager', 'sophia@example.com', 'Female', '202 Birch St'),
  (206, 'Oscar Clark', '1998-12-20', 'Resident Assistant', 'oscar@example.com', 'Male', '303 Maple St'),
  (207, 'Emma White', '1993-04-15', 'Residence Supervisor', 'emma@example.com', 'Female', '404 Oak St'),
  (208, 'Henry Green', '1996-07-30', 'Residence Coordinator', 'henry@example.com', 'Male', '505 Pine St'),
  (209, 'Grace Turner', '1991-10-12', 'Residence Manager', 'grace@example.com', 'Female', '606 Elm St'),
  (210, 'Oliver Harris', '1987-02-25', 'Resident Assistant', 'oliver@example.com', 'Male', '707 Cedar St');
  
  
  
  INSERT INTO ResidenceHall (HallName, NoOfrooms, Telephone, Address, StaffID) VALUES
  ('Hall A', 50, '555-1111', '10 Elm St', 201),
  ('Hall B', 40, '555-2222', '20 Maple St', 202),
  ('Hall C', 30, '555-3333', '30 Oak St', 203),
  ('Hall D', 35, '555-4444', '40 Pine St', 204),
  ('Hall E', 45, '555-5555', '50 Cedar St', 205),
  ('Hall F', 38, '555-6666', '60 Birch St', 206),
  ('Hall G', 28, '555-7777', '70 Maple St', 207),
  ('Hall H', 42, '555-8888', '80 Oak St', 208),
  ('Hall I', 31, '555-9999', '90 Pine St', 209),
  ('Hall J', 48, '555-1010', '100 Elm St', 210);
  


INSERT INTO StudentFlats (FlatNumber, NoOfrooms, Address, StaffID) VALUES
  (1, 10, '40 Cedar St', 201),
  (2, 12, '50 Birch St', 202),
  (3, 8, '60 Pine St', 203),
  (4, 15, '70 Elm St', 204),
  (5, 9, '80 Maple St', 205),
  (6, 11, '90 Oak St', 206),
  (7, 7, '100 Pine St', 207),
  (8, 14, '110 Cedar St', 208),
  (9, 10, '120 Birch St', 209),
  (10, 13, '130 Maple St', 210);  
  
    
INSERT INTO Room (RoomNumber, RentRate, PlaceNumber, HallName) VALUES
  ('A101', 500.00, 1, 'Hall A'),
  ('B202', 600.00, 2, 'Hall B'),
  ('C303', 550.00, 3, 'Hall C'),
  ('D404', 520.00, 4, 'Hall D'),
  ('E505', 620.00, 5, 'Hall E'),
  ('F606', 580.00, 6, 'Hall F'),
  ('G707', 530.00, 7, 'Hall G'),
  ('H808', 610.00, 8, 'Hall H'),
  ('I909', 560.00, 9, 'Hall I'),
  ('J1010', 540.00, 10, 'Hall J');
  
  
  
INSERT INTO Inspection (InspectionID, InspectionDate, SatisfactoryCondition, AdditionalComments, LeaseNumber, HallName, StaffID) VALUES
  (1, '2023-01-15', 1, 'No issues found.', 1, 'Hall A', 201),
  (2, '2023-02-20', 0, 'Minor repairs needed.', 2, 'Hall B', 202),
  (3, '2023-03-25', 1, 'Excellent condition.', 3, 'Hall C', 203),
  (4, '2023-04-10', 1, 'Routine inspection.', 4, 'Hall D', 204),
  (5, '2023-05-05', 0, 'Maintenance required.', 5, 'Hall E', 205),
  (6, '2023-06-20', 1, 'No issues found.', 6, 'Hall F', 206),
  (7, '2023-07-15', 1, 'Excellent condition.', 7, 'Hall G', 207),
  (8, '2023-08-01', 0, 'Minor repairs needed.', 8, 'Hall H', 208),
  (9, '2023-09-10', 1, 'Routine inspection.', 9, 'Hall I', 209),
  (10, '2023-10-05', 1, 'No issues found.', 10, 'Hall J', 210);  




INSERT INTO Student (BannerNumber, Name, DOB, Email, Gender, Minor, Major, SpecialNeeds, AdditionalComments, Category, Nationality, PhoneNumber, HomeAddress, RoomNumber, AdviserID) VALUES
  (11111, 'Liam Turner', '2000-07-12', 'liam@example.com', 'Male', 'Physics', 'Math', NULL, 'Enjoys stargazing', 'Undergraduate', 'USA', '555-8888', '101 Cedar St', 'A101', 104),
  (22222, 'Ava Harris', '1999-04-25', 'ava@example.com', 'Female', 'Computer Science', 'Cybersecurities', NULL, 'Loves coding', 'Undergraduate', 'Canada', '555-9999', '202 Birch St', 'D404', 105),
  (33333, 'Mason Clark', '2001-01-08', 'mason@example.com', 'Male', 'Mathematics', 'Physics', NULL, 'Aspiring mathematician', 'Undergraduate', 'UK', '555-1010', '303 Maple St', 'C303', 106),
  (44444, 'Sophia White', '1998-08-20', 'sophia@example.com', 'Female', 'Biology', 'Chemistry', NULL, 'Passionate about ecology', 'Undergraduate', 'USA', '555-1111', '404 Oak St', 'B202', 107),
  (55555, 'Oscar Green', '1997-03-05', 'oscar@example.com', 'Male', 'Psychology', 'Arts', 'Special accommodation for anxiety', 'Anxiety', 'Graduate', 'Canada', '555-2222', '505 Pine St', 'J1010', 108),
  (66666, 'Emma Turner', '2002-10-18', 'emma@example.com', 'Female', 'Networking', 'Math', NULL, 'Interested in robotics', 'Undergraduate', 'USA', '555-3333', '606 Elm St', 'I909', 109),
  (77777, 'Henry Harris', '1996-05-30', 'henry@example.com', 'Male', 'Chemistry', 'Biology', NULL, 'Chemistry enthusiast', 'Undergraduate', 'UK', '555-4444', '707 Cedar St', 'H808', 110),
  (88888, 'Grace Clark', '1994-12-15', 'grace@example.com', 'Female', 'Physics', 'Biotech', 'Special accommodation for hearing impairment', 'Hearing Impairment', 'Graduate', 'USA', '555-5555', '808 Pine St', 'E505', 101),
  (99999, 'Oliver Turner', '1993-09-28', 'oliver@example.com', 'Male', 'Computer Science', 'Quantum Computing', NULL, 'Tech enthusiast', 'Graduate', 'Canada', '555-6666', '909 Elm St', 'G707', 102),
  (101010, 'Sophie Harris', '1995-02-10', 'sophie@example.com', 'Female', 'Mathematics', 'Machine Learning', NULL, 'Mathematics lover', 'Graduate', 'UK', '555-7777', '1010 Birch St', 'F606', 103);



INSERT INTO Lease (LeaseNumber, PlaceNumber, StartDate, LeaseRenewal, BannerNumber, RoomNumber, EndDate, Address) VALUES
  (1, 4, '2023-01-01', 1, 11111, 'A101', '2023-12-31', '101 Cedar St'),
  (2, 5, '2023-02-01', 0, 22222, 'D404', '2023-12-31', '202 Birch St'),
  (3, 6, '2023-03-01', 1, 33333, 'C303', '2023-12-31', '303 Maple St'),
  (4, 7, '2023-04-01', 0, 44444, 'B202', '2023-12-31', '404 Oak St'),
  (5, 8, '2023-05-01', 1, 55555, 'J1010', '2023-12-31', '505 Pine St'),
  (6, 9, '2023-06-01', 0, 66666, 'I909', '2023-12-31', '606 Elm St'),
  (7, 10, '2023-07-01', 1, 77777, 'H808', '2023-12-31', '707 Cedar St'),
  (8, 1, '2023-08-01', 0, 88888, 'E505', '2023-12-31', '808 Pine St'),
  (9, 2, '2023-09-01', 1, 99999, 'G707', '2023-12-31', '909 Elm St'),
  (10, 3, '2023-10-01', 0, 101010, 'F606', '2023-12-31', '1010 Birch St');



INSERT INTO Invoice (InvoiceNumber, Semester, PaymentDue, RoomNumber, DatePaid, MethodOfPayment, BannerNumber, PlaceNumber, DateFirstReminder, DateSecondReminder, Address, LeaseNumber) VALUES
  (1, 'Spring 2023', 500.00, 'A101', '2023-01-15', 'Credit Card', 11111, 4, '2023-02-01', '2023-02-15', '101 Cedar St', 1),
  (2, 'Spring 2023', 600.00, 'D404', NULL, NULL, 22222, 5, '2023-03-01', '2023-03-15', '202 Birch St', 2),
  (3, 'Spring 2023', 550.00, 'C303', NULL, NULL, 33333, 6, '2023-04-01', '2023-04-15', '303 Maple St', 3),
  (4, 'Spring 2023', 520.00, 'B202', '2023-05-01', 'Bank Transfer', 44444, 7, '2023-06-01', '2023-06-15', '404 Oak St', 4),
  (5, 'Spring 2023', 620.00, 'J1010', '2023-07-01', 'Credit Card', 55555, 8, '2023-08-01', '2023-08-15', '505 Pine St', 5),
  (6, 'Spring 2023', 580.00, 'I909', NULL, NULL, 66666, 9, '2023-09-01', '2023-09-15', '606 Elm St', 6),
  (7, 'Spring 2023', 530.00, 'H808', '2023-10-01', 'Cheque', 77777, 10, '2023-11-01', '2023-11-15', '707 Cedar St', 7),
  (8, 'Spring 2023', 610.00, 'E505', NULL, NULL, 88888, 1, '2023-12-01', '2023-12-15', '808 Pine St', 8),
  (9, 'Spring 2023', 560.00, 'G707', NULL, NULL, 99999, 2, '2024-01-01', '2024-01-15', '909 Elm St', 9),
  (10, 'Spring 2023', 540.00, 'F606', NULL, NULL, 101010, 3, '2024-02-01', '2024-02-15', '1010 Birch St', 10);



INSERT INTO Course (CourseNumber, CourseTitle, CourseInstructor, InstructorEmail, InstructorRoomNumber, InstructorPhoneNumber, BannerNumber) VALUES
  (1004, 'Organic Chemistry', 'Prof. Turner', 'prof.turner@example.com', 105, '555-7777', 11111),
  (1005, 'Linear Algebra', 'Dr. Harris', 'dr.harris@example.com', 206, '555-8888', 22222),
  (1006, 'Software Engineering', 'Prof. Clark', 'prof.clark@example.com', 307, '555-9999', 33333),
  (1007, 'Ecology and Environment', 'Dr. White', 'dr.white@example.com', 408, '555-1010', 44444),
  (1008, 'Cognitive Psychology', 'Prof. Green', 'prof.green@example.com', 509, '555-1111', 55555),
  (1009, 'Robotics', 'Dr. Turner', 'dr.turner@example.com', 110, '555-2222', 66666),
  (1010, 'Organic Chemistry Lab', 'Prof. Harris', 'prof.harris@example.com', 211, '555-3333', 77777),
  (1011, 'Computer Networks', 'Dr. Clark', 'dr.clark@example.com', 312, '555-4444', 88888),
  (1012, 'Advanced Robotics', 'Prof. White', 'prof.white@example.com', 413, '555-5555', 99999),
  (1013, 'Human Physiology', 'Dr. Green', 'dr.green@example.com', 514, '555-6666', 101010);


INSERT INTO Enrollment (CourseNumber, BannerNumber) VALUES 
	(1004, 11111),
    (1004, 22222),
    (1004, 33333),
    (1004, 44444),
    (1004, 55555),
    (1006, 11111),
    (1006, 22222),
    (1006, 33333),
    (1006, 66666),
    (1006, 77777),
    (1008, 99999),
    (1008, 101010),
    (1008, 88888),
    (1008, 55555),
    (1008, 11111),
    (1013, 22222),
    (1013, 33333),
    (1013, 44444),
    (1013, 99999);
