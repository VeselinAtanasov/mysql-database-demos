#1
CALL usp_get_employees_salary_above_35000();

#2
CALL usp_get_employees_salary_above(3500);

#3
CALL usp_get_towns_starting_with('b');

#4
call soft_uni.usp_get_employees_from_town('Sofia');

#5
SELECT ufn_get_salary_level(50000);