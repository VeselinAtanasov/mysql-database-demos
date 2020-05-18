DELIMITER $$
CREATE FUNCTION `ufn_calculate_future_value`(
	total_sum DOUBLE,
    yearly_interest_rate DOUBLE,
    number_of_years INT) RETURNS double
BEGIN
	DECLARE result DOUBLE;
    SET result := total_sum * (POW( ( 1+yearly_interest_rate),number_of_years ) );
    
    RETURN result;
END
$$