INSERT INTO used_car (
    year,
    make,
    model,
    VIN,
    color,
    price
) VALUES(
    2018,
    'Chevrolet',
    'Silverado',
    'JBH1234567ASK',
    'red',
    29599.00
), (
    2017,
    'Chevrolet',
    'Volt',
    'JBH12983476AK',
    'blue',
    18990.00
), (
    2021,
    'Dodge',
    'Ram',
    'NPL098765433DF',
    'white',
    47598.00
), (
    1988,
    'Toyota',
    'Corolla HB',
    'OLD345675456AF',
    'grey',
    1679.00
), (
    1996,
    'Toyota',
    'Paseo',
    'FUN2389734987DR',
    'red',
    3568.00
);

INSERT INTO service_ticket (
    service_name,
    description,
    price
) VALUES(
    'oil change',
    'Change oil filter, oil, and refresh engine fluids',
    45.98
), (
    'tire rotation',
    'Rotate and balance all four tires',
    65.98
), (
    'engine clean',
    'Full service engine clean up and fluid check',
    99.98
), (
    'check engine light review',
    'Diagnostic to determine why your check engine light is on',
    149.98
), (
    'horn check',
    'Just a little beep to make sure it works',
    5.98
);

INSERT INTO service_staff (
    first_name,
    last_name,
    phone,
    email
) VALUES(
    'Joe',
    'Mechanic',
    '1234567896',
    'joe@yourmechanic.com'
), (
    'Mario',
    'Plumber',
    '7894561478',
    'mario@mariobrosplumbing.com'
), (
    'Luigi',
    'Plumber',
    '4568523697',
    'luigi@mariobrosplumbing.com'
), (
    'Donald',
    'Duck',
    '7536984125',
    'donald@disney.com'
), (
    'Mickey',
    'Mouse',
    '3562541258',
    'mickey@disney.com'
);

INSERT INTO sales_staff (
    first_name,
    last_name,
    phone,
    email
) VALUES(
    'Andy',
    'Bernard',
    '8547856123',
    'andy@dundermifflin.com'
), (
    'Michael',
    'Scott',
    '6581254785',
    'michael@dundermifflin.com'
), (
    'Dwight',
    'Schrute',
    '2225486398',
    'dwight@dundermifflin.com'
), (
    'Jim',
    'Halpert',
    '6354781235',
    'jim@dundermifflin.com'
), (
    'Stanley',
    'Hudson',
    '6698547412',
    'stanley@dundermifflen.com'
);

INSERT INTO new_car (
    year,
    make,
    model,
    VIN,
    color,
    price
) VALUES(
    2022,
    'Chevrolet',
    'Silverado 2500 HD',
    'POW75864154TH',
    'black',
    48998.98
), (
    2022,
    'Chevrolet',
    'Traverse',
    'CHE3752873476YU',
    'silver',
    32998.98
), (
    2022,
    'Toyota',
    'Highlander',
    'TOYU8972384764',
    'white',
    52968.98
), (
    2022,
    'Tesla',
    'Model 3',
    'DREA90098346660',
    'red',
    79988.98
), (
    2022,
    'Tesla',
    'Cyber Truck',
    'TRU654968463857',
    'blue',
    89998.98
);

INSERT INTO customer (
    first_name,
    last_name,
    email,
    phone
) VALUES(
    'Kelly',
    'Kapoor',
    'kelly@dundermifflin.com',
    '7774441111'
), (
    'Kevin',
    'Malone',
    'kevin@dundermifflin.com',
    '1112223333'
), (
    'Nellie',
    'Bertram',
    'nellie@dundermifflin.com',
    '5845845845'
), (
    'Pam',
    'Beesly-Halpert',
    'pam@dundermifflin.com',
    '9632147896'
), (
    'Erin',
    'Hannon',
    'erin@dundermifflin.com',
    '7891236547'
);

INSERT INTO service_invoice (
    customer_id,
    service_staff_id,
    service_id
) VALUES(
    1,
    2,
    1
), (
    2,
    3,
    2
), (
    3,
    1,
    3
), (
    4,
    5,
    4
), (
    5,
    4,
    5
);

INSERT INTO sales_invoice (
    customer_id,
    sales_staff_id,
    new_car_id,
    used_car_id
) VALUES(
    1, 2, NULL, 4
), (
    2, 3, 4, NULL
), (
    3, 4, NULL, 1
), (
    4, 5, 1, NULL
), (
    5, 1, NULL, 3
);

INSERT INTO part (
    part_name,
    part_description,
    part_price
) VALUES(
    'oil filter',
    'It filters oil in your car...very important!',
    9.99
), (
    'alternator',
    'Turns mechanical energy into electrical energy.',
    249.99
), (
    'brake pads',
    'Help stop your car.',
    59.99
), (
    'catalytic converter',
    'Utilizes a chamber to change any harmful compouds from the emission of your vehicle into safer gas molecules.',
    155.99
), (
    'muffler',
    'Reduces noise produced by the vehicle exhaust.',
    95.99
);

INSERT INTO dealership (   
    name, 
    street,
    city,
    state,
    zip,
    phone
) 
VALUES(
    'Dunder Dealership',
    '1725 Slough Avenue',
    'Scranton',
    'PA',
    '18503',
    '5703433400'
);
