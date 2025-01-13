USE DevLession;

CREATE TABLE IF NOT EXISTS Students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sid CHAR(10) NOT NULL UNIQUE,
    name VARCHAR(255) NOT NULL,
    major VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS Association;

TRUNCATE TABLE Students;

INSERT INTO Students (sid, name, major) VALUES
('2024772361', 'Katie', 'Mathematics'),
('2024758320', 'Tammy', 'Biology'),
('2024327572', 'Melvin', 'Mathematics'),
('2024549150', 'Marcus', 'Computer Science'),
('2024276957', 'Krin', 'Chemistry'),
('2024620145', 'Renee', 'Computer Science'),
('2024800124', 'Sofia', 'Physics'),
('2024493661', 'Rene', 'Chemistry'),
('2024389515', 'Jamie', 'Biology'),
('2024612637', 'Jonathan', 'Mathematics'),
('2024701042', 'Sebastian', 'Chemistry'),
('2024714091', 'Tristan', 'Physics'),
('2024850832', 'Justin', 'Biology'),
('2024886611', 'Sharlene', 'Physics'),
('2024745974', 'Kristin', 'Biology'),
('2024676584', 'Roberto', 'Physics'),
('2024606778', 'Sylvia', 'Mathematics'),
('2024301056', 'Jeanette', 'Physics'),
('2024945504', 'Katie', 'Computer Science'),
('2024291566', 'Darryl', 'Mathematics'),
('2024751068', 'Charlotte', 'Biology'),
('2024339117', 'Andrew', 'Mathematics'),
('2024316462', 'Ricky', 'Computer Science'),
('2024883227', 'Michele', 'Chemistry'),
('2024160216', 'Gail', 'Mathematics'),
('2024296381', 'Mike', 'Biology'),
('2024558746', 'Victoria', 'Physics'),
('2024989401', 'Hannah', 'Computer Science'),
('2024125032', 'Paul', 'Physics'),
('2024190919', 'Jacob', 'Mathematics'),
('2024873882', 'Michelle', 'Mathematics'),
('2024396647', 'Steve', 'Chemistry'),
('2024812512', 'Jennie', 'Physics'),
('2024382444', 'Chris', 'Chemistry'),
('2024190806', 'Kaylee', 'Chemistry'),
('2024763681', 'Ethel', 'Physics'),
('2024872930', 'Yolanda', 'Computer Science'),
('2024702544', 'Daniel', 'Biology'),
('2024929957', 'Arianna', 'Chemistry'),
('2024510525', 'Bonnie', 'Computer Science'),
('2024816683', 'Nellie', 'Computer Science'),
('2024500724', 'Tom', 'Biology'),
('2024739240', 'Darren', 'Biology'),
('2024982547', 'Keith', 'Chemistry'),
('2024531062', 'Lee', 'Biology'),
('2024210481', 'Vanessa', 'Chemistry'),
('2024939979', 'Juanita', 'Physics'),
('2024583920', 'Douglas', 'Biology'),
('2024545904', 'Veronica', 'Chemistry'),
('2024179912', 'Minnie', 'Mathematics');

CREATE TABLE IF NOT EXISTS Courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cid VARCHAR(8) NOT NULL UNIQUE,
    title VARCHAR(255) NOT NULL,
    credit INT NOT NULL,
    time VARCHAR(255)
);

TRUNCATE TABLE Courses;

INSERT INTO Courses (cid, title, credit, time) VALUES
('30240042', 'IAI', 2, '2025-spring'),
('30240163', 'SE', 3, '2025-spring'),
('30240184', 'DSA', 4, '2024-autumn'),
('30240593', 'ICS', 3, '2024-autumn'),
('40240432', 'FLA', 2, '2024-autumn');

CREATE TABLE IF NOT EXISTS Association (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade CHAR(2),
    CONSTRAINT fk_student_id FOREIGN KEY (student_id) REFERENCES Students(id),
    CONSTRAINT fk_course_id FOREIGN KEY (course_id) REFERENCES Courses(id)
);

INSERT INTO Association (student_id, course_id, grade) VALUES
(1, 2, 'A-'),
(2, 5, 'A-'),
(2, 3, 'A+'),
(3, 5, 'A+'),
(3, 4, 'A-'),
(3, 2, 'A+'),
(3, 1, 'A-'),
(4, 4, 'A-'),
(4, 5, 'A+'),
(4, 1, 'A-'),
(4, 3, 'A'),
(4, 2, 'A'),
(5, 5, 'A'),
(5, 3, 'A+'),
(5, 1, 'A+'),
(5, 4, 'A'),
(6, 2, 'A'),
(6, 4, 'A+'),
(7, 4, 'A+'),
(7, 3, 'A'),
(7, 5, 'A-'),
(7, 2, 'A'),
(7, 1, 'A-'),
(8, 3, 'A-'),
(8, 5, 'A'),
(8, 4, 'A-'),
(9, 1, 'A-'),
(9, 5, 'A-'),
(9, 4, 'A-'),
(9, 2, 'A-'),
(9, 3, 'A'),
(10, 4, 'A+'),
(11, 2, 'A'),
(11, 3, 'A+'),
(11, 5, 'A'),
(11, 1, 'A+'),
(11, 4, 'A+'),
(12, 3, 'A+'),
(12, 5, 'A-'),
(12, 1, 'A'),
(12, 2, 'A-'),
(13, 3, 'A+'),
(13, 1, 'A+'),
(13, 5, 'A+'),
(13, 2, 'A'),
(13, 4, 'A+'),
(14, 3, 'A-'),
(14, 5, 'A+'),
(15, 4, 'A-'),
(15, 1, 'A'),
(15, 5, 'A'),
(16, 4, 'A-'),
(16, 5, 'A-'),
(17, 4, 'A-'),
(17, 5, 'A-'),
(18, 3, 'A-'),
(18, 4, 'A-'),
(19, 2, 'A+'),
(19, 4, 'A'),
(19, 5, 'A'),
(19, 1, 'A'),
(19, 3, 'A+'),
(20, 2, 'A+'),
(20, 3, 'A'),
(20, 1, 'A-'),
(20, 4, 'A+'),
(21, 5, 'A'),
(21, 2, 'A-'),
(21, 1, 'A+'),
(22, 2, 'A+'),
(22, 5, 'A+'),
(22, 4, 'A'),
(22, 3, 'A'),
(22, 1, 'A'),
(23, 2, 'A-'),
(23, 4, 'A'),
(23, 1, 'A'),
(23, 5, 'A'),
(24, 2, 'A+'),
(24, 3, 'A'),
(24, 1, 'A'),
(25, 1, 'A-'),
(25, 3, 'A-'),
(25, 4, 'A'),
(25, 5, 'A-'),
(25, 2, 'A-'),
(26, 3, 'A'),
(27, 1, 'A-'),
(27, 2, 'A+'),
(27, 5, 'A+'),
(27, 3, 'A+'),
(27, 4, 'A-'),
(28, 3, 'A'),
(29, 5, 'A'),
(29, 1, 'A+'),
(29, 2, 'A'),
(30, 4, 'A'),
(31, 4, 'A'),
(31, 1, 'A-'),
(31, 3, 'A+'),
(31, 2, 'A-'),
(31, 5, 'A+'),
(32, 5, 'A-'),
(33, 2, 'A+'),
(33, 5, 'A'),
(33, 4, 'A-'),
(33, 3, 'A'),
(33, 1, 'A+'),
(34, 3, 'A-'),
(35, 1, 'A+'),
(35, 5, 'A-'),
(35, 3, 'A'),
(36, 5, 'A-'),
(37, 1, 'A+'),
(37, 3, 'A'),
(37, 5, 'A'),
(37, 2, 'A+'),
(37, 4, 'A-'),
(38, 4, 'A-'),
(38, 1, 'A-'),
(38, 5, 'A-'),
(39, 5, 'A'),
(39, 2, 'A+'),
(40, 2, 'A'),
(40, 3, 'A+'),
(41, 2, 'A'),
(41, 5, 'A'),
(41, 3, 'A+'),
(41, 1, 'A'),
(41, 4, 'A-'),
(42, 2, 'A+'),
(42, 1, 'A'),
(43, 3, 'A-'),
(43, 2, 'A+'),
(43, 5, 'A-'),
(44, 3, 'A+'),
(44, 4, 'A-'),
(44, 2, 'A+'),
(44, 5, 'A-'),
(45, 1, 'A'),
(45, 5, 'A-'),
(46, 2, 'A+'),
(46, 1, 'A-'),
(47, 2, 'A+'),
(47, 5, 'A-'),
(47, 1, 'A+'),
(47, 3, 'A-'),
(48, 2, 'A+'),
(49, 1, 'A'),
(50, 1, 'A+'),
(50, 4, 'A-');
