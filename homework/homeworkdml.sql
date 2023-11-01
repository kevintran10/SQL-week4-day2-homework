INSERT INTO customer (
    customer_id,
    full_name,
    phone_num,
    e_mail,
    movie_title
) VALUES (
    '0000',
    'Kevin Tran',
    '111-111-1111',
    'abc@example.com',
    'John Wick 4'
);

SELECT *
FROM customer;

INSERT INTO ticket (
    ticket_num,
    movie_id,
    movie_title,    
    full_name
) VALUES (
    '1',
    '0',
    'John Wick 4',
    'Kevin Tran'
);

INSERT INTO concessions (
    food_id,
    drink_id,
    full_name,
    quantity
) VALUES (
    '0001',
    '0002',
    'Kevin Tran',
    '1'
);
