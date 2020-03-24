insert into customers (id, customer_id, customer_name, phone_number, address, city, state_province, country, zip_code)
values ('0', '10001', 'Pablo Picasso', '+34 636 17 63 82', 'Paseo de la Chopera 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('1', '20001', 'Abraham Lincoln', '+1 305 907 7086', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('2', '30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

insert into stores
values ('0' 'Madrid'),
('1', 'Barcelona'),
('2', 'Berlin'),
('3', 'Paris'),
('4', 'Miami'),
('5', 'Mexico City'),
('6', 'Amsterdam'),
('7', 'São Paulo');

insert into salespersons (salespersons_id, staff_id, salespersons_name, stores_store_id)
values ('0', '00001', 'Petey Cruiser', '0'),
('1', '00002', 'Anna Sthesia', '1'),
('2', '00003', 'Paul Molive', '2'),
('3', '00004', 'Gail Forcewind', '3'),
('4', '00005', 'Paige Turner', '4'),
('5', '00006', 'Bob Frapples', '5'),
('6', '00007', 'Walter Melon', '6'),
('7', '00008', 'Shonda Leer', 'São Paulo');

insert into manufacturers
values ('0', 'Volkswagen'),
('1', 'Peugeot'),
('2', 'Ford'),
('3', 'Toyota'),
('4', 'Volvo');

insert into models
values ('0', 'Tiguan', '0'),
('1', 'Rifter', '1'),
('2', 'Fusion', '2'),
('3', 'RAV4', '3'),
('4', 'V60', '4'),
('5', 'V60 Cross Country', '4');

insert into cars
values ('0', '3K096I98581DHSNUP', 'Blue', '2019', '0'),
('1', 'ZM8G7BEUQZ97IH46V', 'Red', '2019', '1'),
('2', 'RKXVNNIHLVVZOUB4M', 'White', '2018', '2'),
('3', 'HKNDGS7CU31E9Z7JW', 'Silver', '2018', '3'),
('4', 'DAM41UDN3CHU2WVF6', 'Gray', '2019', '4'),
('5', 'DAM41UDN3CHU2WVF7', 'Gray', '2019', '5');

insert into invoices
values ('0', '852399038', '22-08-2018',	'0', '3', '1'),
('1', '731166526', '31-12-2018', '3', '5', '0'),
('2', '271135104', '22-01-2019', '2', '7', '2');