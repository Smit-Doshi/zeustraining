DESC USER;
-- ADDING DATA TO USER TABLE
SELECT * FROM USER; 
INSERT INTO USER
	(firstname, lastname, email, password, mobile, profile_picture, resume, portfolio_url, reffered_by, job_updates, prefered_jobRole)
    VALUES
    ('smit', 'Doshi', 'smit@gmail.com', 'smit123', 145897452, '/image/profile', '/resume/smit', 'https://www.resume.com', 'ronak', 1, 'Software FrontEnd'),
    ('XYZ', 'Doshi', 'smit123@gmail.com', 'xyz@456', 145897452, '/image/profile', '/resume/smit', 'https://www.resume.com', 'ronak', 1, 'Software FrontEnd'),
    ('jay', 'choksi', 'jay@gmail.com', 'ghjf456', 545897894, '/image/profile', '/resume/smit', 'https://www.resume.com', 'ronak', 1, 'Software FrontEnd'),
    ('Ronak', 'XYZ', 'ronak123@gmail.com', 'drtf2546', 458897452, '/image/profile', '/resume/smit', 'https://www.ronak_resume.com', 'smit', 0, 'Software FrontEnd Backend'),
    ('ABC', 'XYZ', 'xyz@gmail.com', 'abcxyz456', 1879497452, '/image/profile', '/resume/smit', 'https://www.resume.com', 'jay', 0, 'Software FrontEnd');

-- RETRIVING DATA FROM USER TABLE
SELECT * FROM USER;

SELECT * FROM USER
	WHERE USER_ID = 3;

-- ADDING DATA TO EDUCATION-QUALIFICATION TABLE

DESC user_education_qualification;

SELECT * FROM user_education_qualification;
INSERT INTO user_education_qualification
	(percentage, passingYear, qualification, stream, college, other_college, collegeLocation, user_userID)
    VALUES
    (78, 2014, 'Bachelor in Technology (B.Tech)', 'Information Technology', 'Pune Institute of Technology (PIT)', '', 'Pune', 1),
    (85, 2018, 'Master in Technology (M.Tech)', 'Information Technology', 'Rajkot Engineering College', '', 'Rajkot', 2),
    (68, 2020, 'Master in Technology (M.Tech)', 'Computer Science', 'VVP Engineering College', '', 'Rajkot', 3),
    (90, 2012, 'Master in Technology (M.Tech)', 'Computer Science', 'Nirma College', '', 'Ahmedabad', 4),
    (74, 2018, 'Bachelor in Technology (B.Tech)', 'Information Technology', 'Bhavnagar Engineering College', '', 'Bhavnagar', 5);

-- COMBINING BOTH USER AND EDUCATION TABLE

SELECT u.firstname, u.lastname, u.email,
	e.percentage, e.qualification, e.stream, e.college
    FROM user AS u INNER JOIN user_education_qualification AS e
    ON u.user_id = e.user_userID;

-- ADDING DATA TO PROFESSIONAL-QUALIFICATION TABLE 
DESC user_professional_qualification;

INSERT INTO user_professional_qualification
		(applicationType, technologiesFamiliar, othersTechnology, yearsExperience, 
        currentCTC, expectedCTC, isInNoticePeriod, noticePeriodEnd, noticePeriodDuration, 
        haveAppliedTestBefore, roleAppliedFor, user_userID)
		VALUES
        ('0', 'Angular-JS Node-JS', '', 5, 500000, 600000, '0', '2020-01-20', 2, '0', '', 1),
        ('1', 'Angular-JS', '', 5, 800000, 600000, '1', '2018-01-20', 2, '1', 'Software Developer', 2),
        ('1', 'Angular-JS React', '', 5, 500000, 600000, '0', '2015-04-18', 3, '0', '', 3),
        ('0', 'Angular-JS Python', '', 5, 600000, 500000, '1', '2015-08-12', 0, '1', 'FrontEnd', 4),
        ('1', 'Angular-JS C++', '', 5, 300000, 600000, '0', '2018-01-25', 1, '0', '', 5);

SELECT * FROM user_professional_qualification;

DESC walk_in_drive;

-- ADDING DATA IN JOD-DETAIL TABLE

INSERT INTO walk_in_drive
	(name, start_date, end_date, location, time_preference, job_preference, user_UserID)
    VALUES
    ('Walk In for Designer Job Role', '2014-01-15', '2014-02-15', 'Mumbai', '9:00 AM to 11:00 AM', 'Instructional-Designer Software-Engineer', 1),
    ('Walk In for Developer Job Role', '2014-01-15', '2014-02-15', 'Pune', '7:30 AM to 12:00 AM', 'Software-Engineer', 2),
    ('Walk In for Designer Job Role', '2018-01-15', '2018-03-20', 'Mumbai', '8:00 AM to 10:00 AM', 'UI-Designer Software-Engineer', 1),
    ('Walk In for Developer Job Role', '2020-01-01', '2014-01-30', 'Banglore', '10:00 AM to 12:00 AM', 'Full Stack Software-Engineer', 3);

SELECT * FROM walk_in_drive;

-- ADDING DATA INTO JOB-ROLES TABLE
DESC jobroles;

INSERT INTO jobroles
	(role_name, role_description, role_requirement, role_compensation, job_JobID)
    VALUES
    ('Instructional Designer', 'Candidates are requested to log in half an hour prior to the exam start time as they would need to capture their image using a web camera', 'The latest version of Google Chrome Browser only', 550000, 1),
    ('Software Engineer', 'Candidates are requested to log in half an hour prior to the exam start time as they would need to capture their image using a web camera', 'The latest version of Google Chrome Browser only', 650000, 2),
    ('FrontEnd Developer', 'Candidates are requested to log in half an hour prior to the exam start time as they would need to capture their image using a web camera', 'The latest version of Google Chrome Browser only', 850000, 1);

SELECT * FROM jobroles;

-- JOINING JOB-DETAIL AND JOB-ROLES TABLE
DESC jobroles;

-- JOINING JOB-DETAIL, JOB-ROLES AND USER TABLE
 
SELECT user.firstname, user.lastname, job.name, job.start_date, job.end_date, job.location,
	role.role_name, role.role_description, role.role_requirement, role.role_compensation
    FROM walk_in_drive AS job
    INNER JOIN jobroles AS role
    ON job.job_id = role.job_JobID
    INNER JOIN user 
    ON user.user_id = job.job_id
    WHERE user.user_id = 1;
    