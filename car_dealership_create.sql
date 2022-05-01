CREATE TABLE used_car (
    used_car_id SERIAL PRIMARY KEY,
    year INTEGER,
    make VARCHAR(50),
    model VARCHAR(50),
    VIN VARCHAR(50),
    color VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE service_ticket (
    service_id SERIAL PRIMARY KEY,
    service_name VARCHAR(50),
    description TEXT,
    price DECIMAL(10,2)
);

CREATE TABLE service_staff (
    service_staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(13),
    email VARCHAR(100)
);

CREATE TABLE sales_staff (
    sales_staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(13),
    email VARCHAR(100)
);

CREATE TABLE new_car (
    new_car_id SERIAL PRIMARY KEY,
    year INTEGER,
    make VARCHAR(50),
    model VARCHAR(50),
    VIN VARCHAR(50),
    color VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(13)
);

CREATE TABLE service_invoice (
    customer_id INTEGER,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    service_staff_id INTEGER,
    FOREIGN KEY(service_staff_id) REFERENCES service_staff(service_staff_id) ON DELETE CASCADE,
    service_id INTEGER,
    FOREIGN KEY(service_id) REFERENCES service_ticket(service_id) ON DELETE CASCADE
);

CREATE TABLE sales_invoice (
    customer_id INTEGER,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    sales_staff_id INTEGER,
    FOREIGN KEY(sales_staff_id) REFERENCES sales_staff(sales_staff_id) ON DELETE CASCADE,
    new_car_id INTEGER,
    FOREIGN KEY(new_car_id) REFERENCES new_car(new_car_id) ON DELETE CASCADE,
    used_car_id INTEGER,
    FOREIGN KEY(used_car_id) REFERENCES used_car(used_car_id) ON DELETE CASCADE
);

CREATE TABLE part (
    part_id SERIAL PRIMARY KEY,
    part_name VARCHAR(50),
    part_description TEXT,
    part_price DECIMAL(10,2),
    service_id INTEGER,
    FOREIGN KEY(service_id) REFERENCES service_ticket(service_id) ON DELETE CASCADE
);

CREATE TABLE dealership (
    name VARCHAR(50),
    street VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(2),
    zip VARCHAR(5),
    phone VARCHAR(13),
    sales_staff_id INTEGER,
    FOREIGN KEY(sales_staff_id) REFERENCES sales_staff(sales_staff_id) ON DELETE CASCADE,
    service_staff_id INTEGER,
    FOREIGN KEY(service_staff_id) REFERENCES service_staff(service_staff_id) ON DELETE CASCADE
);

