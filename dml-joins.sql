SELECT * FROM USER_NEW inner join role on user_new.role_id = role.id order by user_new.name,role.name asc;

SELECT * FROM USER_NEW RIGHT JOIN ROLE ON user_new.role_id = role.id order by role.name asc;

SELECT * FROM USER_NEW LEFT JOIN ROLE ON user_new.role_id = role.id;

SELECT user_new.phonenumber, user_new.emailid, profile.batch, department.name, profile.designation, experience.company_name 
FROM user_new INNER JOIN profile
ON user_new.role_id = profile.id
INNER JOIN degree 
ON profile.degree_id = degree.id
INNER JOIN department
ON degree.department_id = department.id
INNER JOIN experience 
ON profile.id = experience.profile_id
WHERE user_new.emailid LIKE 'yash%'; 

Select user_new.name , role.name FROM 
user_new INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
INNER JOIN profile_skills ON
profile.id = profile_skills.skill_id
where role.name LIKE 'guide';

select user_new.name, role.name, experience.company_name 
from User_new INNER JOIN role ON
user_new.role_id = role.id INNER JOIN profile ON
user_new.id = profile.id INNER JOIN experience ON 
experience.profile_id = profile.id
WHERE role.name LIKE 'guide'
ORDER BY user_new.name, experience.company_name;

SELECT user_new.name, experience.company_name, role.name
FROM user_new INNER JOIN role ON
user_new.role_id = role.id INNER JOIN profile ON
user_new.id = profile.id INNER JOIN experience ON 
experience.profile_id = profile.id
WHERE role.name LIKE 'guide'
ORDER BY user_new.name, experience.company_name;

SELECT user_new.emailid FROM 
user_new INNER JOIN role ON 
user_new.role_id = role.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
INNER JOIN experience ON
experience.profile_id = profile.id
WHERE role.name LIKE 'Alumni' AND experience.currentvalue=1
ORDER BY user_new.name;

SELECT user_new.name, experience.company_name FROM user_new
INNER JOIN role ON  
user_new.role_id = role.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
INNER JOIN experience ON
experience.profile_id = profile.id
WHERE role.name LIKE 'Alumni' AND experience.currentvalue=1 AND profile.batch='For'
ORDER BY user_new.name;

Select user_new.name, user_new.emailid, user_new.phonenumber, profile.address FROM
user_new FULL JOIN role ON
user_new.role_id = role.id
FULL JOIN profile ON 
user_new.profile_id = profile.id
WHERE role.name LIKE 'Alumni' AND user_new.profile_id IS NOT NULL
ORDER BY user_new.name;

Select user_new.name, user_new.emailid, user_new.phonenumber, profile.address FROM
user_new INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
WHERE role.name LIKE 'Alumni' AND profile.batch='En'
ORDER BY user_new.name;

Select user_new.name, user_new.emailid, user_new.phonenumber, profile.address FROM
user_new INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
INNER JOIN degree ON
profile.degree_id = degree.id
WHERE role.name LIKE 'Alumni' AND degree.name='ECE'
ORDER BY user_new.name;

Select user_new.name, user_new.emailid, user_new.phonenumber, profile.address FROM
user_new INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
INNER JOIN degree ON
profile.degree_id = degree.id
INNER JOIN department ON
degree.department_id = department.id
WHERE role.name LIKE 'Alumni' AND department.name='IT'
ORDER BY user_new.name;

Select user_new.name AS USERNAME, user_new.emailid AS USER_EMAIL, user_new.phonenumber, profile.address AS PROFILE_ADDRESS FROM
user_new FULL JOIN role ON
user_new.role_id = role.id
FULL JOIN profile ON 
user_new.profile_id = profile.id
FULL JOIN higher_degree ON
profile.id = higher_degree.id
WHERE role.name LIKE 'Alumni' AND higher_degree.degree_name IS NOT NULL
ORDER BY user_new.name, higher_degree.university_name;

Select user_new.name  AS USERNAME , higher_degree.university_name AS HD FROM
user_new FULL JOIN role ON
user_new.role_id = role.id
FULL JOIN profile ON 
user_new.profile_id = profile.id
FULL JOIN higher_degree ON
profile.id = higher_degree.id
WHERE role.name LIKE 'Alumni' AND higher_degree.degree_name IS NOT NULL
ORDER BY user_new.name, higher_degree.university_name;

Select user_new.name  AS USERNAME, user_new.emailid, user_new.phonenumber, profile.address FROM
user_new FULL JOIN role ON
user_new.role_id = role.id
FULL JOIN profile ON 
user_new.profile_id = profile.id
FULL JOIN degree ON
profile.degree_id = degree.id
FULL JOIN department ON
department.id = degree.department_id
FULL JOIN higher_degree ON
degree.id = higher_degree.id
WHERE role.name LIKE 'designer' AND higher_degree.degree_name = 'BE'
ORDER BY user_new.name;

SELECT user_new.name, profile.batch FROM user_new
INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
WHERE role.name = 'Alumni' AND profile.gender = 'Female'
ORDER BY user_new.name;

SELECT user_new.name, profile.batch, degree.name FROM user_new7
INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
INNER JOIN degree ON
profile.degree_id = degree.id
WHERE role.name = 'Alumni' AND profile.gender = 'Female'
ORDER BY user_new.name;

SELECT user_new.name, profile.batch, degree.name, department.name FROM user_new
INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
INNER JOIN degree ON
profile.degree_id = degree.id
INNER JOIN department ON
degree.department_id = department.id
WHERE role.name = 'Alumni' AND profile.gender = 'Female'
ORDER BY user_new.name;

SELECT degree.name AS DEGREE_NAME, department.name AS DEPT_NAME from degree
INNER JOIN department ON
degree.department_id = department.id
ORDER BY degree.name;

SELECT user_new.name, profile.designation FROM user_new
INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
WHERE role.name = 'Alumni' AND profile.gender = 'Male'
ORDER BY user_new.name

select user_new.name, profile.designation FROM user_new
INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
INNER JOIN experience ON
experience.profile_id = profile.id
WHERE role.name = 'Alumni' AND experience.currentvalue=1 AND experience.company_name = 'CTS'
ORDER BY user_new.name;

SELECT user_new.name, querytable.content FROM user_new
INNER JOIN querytable ON
user_new.id = querytable.user_id
ORDER BY user_new.name;

SELECT user_new.name, querytable.content FROM user_new
FULL JOIN querytable ON
user_new.id = querytable.user_id
WHERE querytable.parent_id IS NOT NULL
ORDER BY user_new.name;

SELECT user_new.name, post.content FROM user_new
INNER JOIN post ON
user_new.id = post.user_id
ORDER BY user_new.name;

SELECT user_new.name, post.content FROM user_new
INNER JOIN post ON
user_new.id = post.user_id
INNER JOIN post_type ON
post.type_id = post_type.id
WHERE post_type.name = 'business'
ORDER BY user_new.name, post.dateof;

select user_new.name, post.dateof, post.content FROM user_new
INNER JOIN post ON
user_new.id = post.user_id
WHERE post.dateof LIKE '______20'
ORDER BY user_new.name , post.dateof, post.content;

Select user_new.name  AS USERNAME, department.name FROM
user_new INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
INNER JOIN degree ON
profile.degree_id = degree.id
INNER JOIN department ON
department.id = degree.department_id
INNER JOIN profile_skills ON
profile.id = profile_skills.skill_id
INNER JOIN skill ON
skill.id = profile_skills.skill_id
WHERE skill.name = 'learn'
ORDER BY user_new.name;

SELECT user_new.name, event.name FROM user_new
INNER JOIN event ON
user_new.id = event.organiser_id
INNER JOIN role ON
user_new.role_id = role.id
WHERE role.name = 'guide'
ORDER BY user_new.name, event.dateof, event.name DESC;

SELECT user_new.name, event.name FROM user_new7
INNER JOIN event ON
user_new.id = event.organiser_id
INNER JOIN role ON
user_new.role_id = role.id
WHERE role.name = 'guide'
ORDER BY user_new.name, event.dateof;