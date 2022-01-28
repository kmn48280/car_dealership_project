CREATE FUNCTION add_customer(
    first_name VARCHAR,
    last_name VARCHAR,
    "address" VARCHAR,
    phone VARCHAR
)

RETURNS void
AS 
$$
BEGIN
    INSERT INTO customer(customer_first_name, customer_last_name, customer_address, customer_phone)
    VALUES (first_name, last_name, "address", phone);
END;
$$
LANGUAGE plpgsql;

-- SELECT add_customer('Matthew', 'Sugihara', '98-7654 Haalohi Street, Mililani, HI, 96789', '8089874567')

--Double checked code using:
-- SELECT * 
-- FROM customer
-- WHERE customer_first_name = 'Matthew'
