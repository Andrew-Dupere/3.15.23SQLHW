CREATE TABLE Customer (
	customer_id SERIAL PRIMARY KEY,
	customer_name varchar(50) NOT NULL	
);

CREATE TABLE Movie (
	movie_id SERIAL PRIMARY KEY,
	playing_time timestamp,
	movie_title varchar(50) NOT NULL
);

CREATE TABLE Theatre(
	theatre_name varchar(50) PRIMARY KEY,
	movie_id integer NOT NULL,
	FOREIGN KEY (movie_id) REFERENCES Movie(movie_id)
);


CREATE TABLE Ticket (
	ticket_number SERIAL PRIMARY KEY, 
	price numeric(2,2) NOT NULL,
	movie_id integer NOT NULL,
	FOREIGN KEY (movie_id) REFERENCES Movie(movie_id),
	customer_id integer NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
