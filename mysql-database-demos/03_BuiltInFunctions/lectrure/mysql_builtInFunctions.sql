1.SUBSTRING:
	- SUBSTRING(String, Position)
	- SUBSTRING(String, Position, Length)
	- SUBSTRING('The man', 1, 3) = "The"
	
2.REPLACE:
	- REPLACE(String, Pattern, Replacement)
	- REPLACE(`title`, 'blood', '*****')
	
3. TRIM, LTRIM, RTRIM:
	- TRIM('  Ves  ') = 'Ves'
	- LTRIM('  Ves  ') = 'Ves  '
	- RTRIM('  Ves  ') = '  Ves'
	
4. CHAR_LENGTH, LENGTH:
	- CHAR_LENGTH('Vesko') = 5  - count number of chars
	- LENGTH  - count number of used chars - LENGTH('Vesko') = 5 but LENGTH('Веско') = 10
	
5. LEFT, RIGHT:
	- LEFT('Vesko', 3) = Ves
	- RIGHT('Vesko', 3) = sko
	
6. LOWER, UPPER:
	- LOWER(String)
	- UPPER(String)
	
7. REVERSE:
	- REVERSE('Vesko') = 'okseV'
	
8. REPEAT:
	- REPEAT('***', 3)
	
9. LOCATE:
	- LOCATE(Pattern, String,[Position])

10. INSERT:
	- INSERT(String, Position, Length, Substring) - INSERT('Vesko',2,0,'TT') = VTTesko





	