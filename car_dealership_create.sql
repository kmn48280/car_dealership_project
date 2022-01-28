CREATE TABLE sales_associate(
    sales_associate_id SERIAL PRIMARY KEY,
    sales_associate_first_name VARCHAR(50),
    sales_associate_last_name VARCHAR(50),
    sales_associate_phone VARCHAR (13)
);

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    mechanic_first_name VARCHAR(50),
    mechanic_last_name VARCHAR(50)
);

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    customer_first_name VARCHAR(50),
    customer_last_name VARCHAR(50),
    customer_address VARCHAR(100),
    customer_phone VARCHAR(13)
);

-- DROP TABLE IF EXISTS "service" CASCADE
CREATE TABLE "service"(
    service_id SERIAL PRIMARY KEY,
    "service_name" VARCHAR(100),
    service_desc TEXT,
    service_cost DECIMAL(7,2)
);

CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    car_model VARCHAR(50),
    car_make VARCHAR(50),
    car_year VARCHAR(50),
    customer_id INTEGER NOT NULL,
    sales_associate_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (sales_associate_id) REFERENCES sales_associate(sales_associate_id)
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    invoice_desc TEXT,
    invoice_amount DECIMAL(8,2),
    invoice_date DATE,
    sales_associate_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (sales_associate_id) REFERENCES sales_associate(sales_associate_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE service_mechanic(
    mechanic_id INTEGER NOT NULL,
    service_id INTEGER NOT NULL,
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
    FOREIGN KEY (service_id) REFERENCES "service"(service_id)
);

CREATE TABLE customer_service(
    service_ticket TEXT,
    service_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (service_id) REFERENCES "service"(service_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);



