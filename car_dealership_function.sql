-- Add part to inventory
CREATE OR REPLACE FUNCTION add_part(
    part_name VARCHAR, 
    part_description TEXT,
    part_price DECIMAL(10,2)
)
RETURNS void
AS
$$
BEGIN
    INSERT INTO part(part_name, part_description, part_price)
    VALUES(part_name, part_description, part_price);
END;
$$
LANGUAGE plpgsql;

SELECT add_part('headlight bulb','Standard, LED headlight bulb.', 4.99);