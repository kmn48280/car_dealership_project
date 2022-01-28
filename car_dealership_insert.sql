INSERT INTO sales_associate(sales_associate_first_name, sales_associate_last_name, sales_associate_phone) VALUES
('Kevin','Beier', '6547856789'),
('Alex', 'Tymczyszyn', '1234567899'),
('Caleb', 'Reeves', '7865679876'),
('Kristina', 'Donaldson','3454569876'),
('Kristen', 'Nakamoto','8083423347');

INSERT INTO mechanic(mechanic_first_name, mechanic_last_name) VALUES
('Jayden', 'Szakmary'),
('Lucas', 'Lang'),
('Chelsey','Martinez'),
('Eryn', 'Long'),
('David','Power');

INSERT INTO customer(customer_first_name, customer_last_name, customer_address, customer_phone) VALUES
('Christopher', 'Trutchley', '98-2387 Coding Temple Way, Aiea, HI, 96701', '8089874567'),
('Frances', 'Kentris', '76-3457 Con-Alt-Elite Place, Honolulu, HI, 96826', '8089872345'),
('Shazaib', 'Nasrullah', '67-0987 Python-Elite, Waianae, HI, 96875', '8085647654'),
('Tilahun', 'Sema', '76-1234 Whiteboard Lane, Manoa, HI, 96782', '8085674321'),
('Wade', 'Glahn', '45-9877 Coding Genius Circle, Honolulu, HI, 96826', '8089875678');

INSERT INTO "service"("service_name", service_desc, service_cost) VALUES
('OIL CHANGE', '2L FULL SYNTHETIC OIL', 150.00),
('TIRE ROTATION', '4 WHEEL ROATION AND ADJUSTMENT', 50.00),
('BRAKE FLUID','REFILLED BRAKE FLUID', 300.00),
('FREON REFILL', '1L OF FREON USED TO REFILL SUPPLY', 200.00),
('MAINTENANCE LIGHT','PERFORM MAINTENANCE ON VEHICLE', 1000.00);

INSERT INTO car(car_model, car_make, car_year, customer_id, sales_associate_id) VALUES
('Tacoma', 'Ford', 2000, 1,1),
('Model X', 'Tesla', 2019, 2,2),
('Civic', 'Honda', 2012, 3,3),
('CR-V', 'Honda', 2009, 4,4),
('4Runner', 'Toyota', 2005, 5,5);

INSERT INTO invoice(invoice_desc, invoice_amount, invoice_date, sales_associate_id, customer_id) VALUES
('The customer has come in today to receive some maintenance on their vehicle.  This invoice includes: all service and maintenance fees.', 300.00, '01.27.2022', 1,1),
('The cusomter has purchased a used Tesla Model X including self-drive capabilities.  All paperwork has been signed by both the sales associate and customer.', 90000.00, '01.27.2022', 2,2),
('The customer has come in today for routine maintenance.', 150.00, '01.27.2022', 3,3),
('The customer has purchased a new Honda CR-V', 15000.00, '01.27.2022', 4,4),
('The customer has come in today due to an emergency light on dashboard. Rental car provided to customer.', 1300.00, '01.27.2022', 5,5);

INSERT INTO service_mechanic(mechanic_id, service_id) VALUES
(1,3),
(2,1),
(3,5),
(4,2),
(5,5);

INSERT INTO customer_service(service_ticket, service_id, customer_id) VALUES
('1L of brake fluid was used to refill the depleted resevoir.', 3, 1), 
('A full check of the vehicle was done to ensure quality of product.', 1, 2),
('2L of SYNTHETIC OIL was used to change customers oil.', 1, 3),
('All 4 wheels of vehicle were rotated prior to release.', 2, 4),
('The starter of vehicle is inoperable, new starter was ordered. The part will arrive in 2 weeks. Customer aware.', 5, 5);


