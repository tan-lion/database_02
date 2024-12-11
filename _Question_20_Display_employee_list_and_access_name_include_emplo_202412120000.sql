INSERT INTO `#Question 20:Display employee list and access name, include employees without access
SELECT
	e.employee_name, d.department_name ,
	(
	SELECT
		ar.access_level
	FROM
		access_rights ar
	WHERE
		ar.employee_id = e.employee_id
		AND ar.access_level = 'Admin'
)
FROM
	employees e
JOIN departments d ON e.department_id =d.department_id ` (employee_name,department_name,`(
	SELECT
		ar.access_level
	FROM
		access_rights ar
	WHERE
		ar.employee_id = e.employee_id
		AND ar.access_level = 'Admin'
)`) VALUES
	 ('John Doe','IT','Admin'),
	 ('Jane Smith','Sales',NULL),
	 ('Bob Johnson','IT',NULL),
	 ('Alice Williams','HR','Admin'),
	 ('Charlie Brown','Sales',NULL);
