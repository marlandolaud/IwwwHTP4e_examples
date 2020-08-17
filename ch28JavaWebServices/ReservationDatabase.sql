DROP TABLE SEATS;

CREATE TABLE SEATS
(
	NUMBER INTEGER NOT NULL,
	LOCATION VARCHAR (10) NOT NULL,
	CLASS VARCHAR (10) NOT NULL,
	TAKEN SMALLINT NOT NULL
);

INSERT INTO SEATS (NUMBER,LOCATION,CLASS,TAKEN) VALUES 
	( 1, 'Aisle', 'Economy', 0 ),
	( 2, 'Aisle', 'Economy', 0 ),
	( 3, 'Aisle', 'First', 0 ),
	( 4, 'Middle', 'Economy', 0 ),
	( 5, 'Middle', 'Economy', 0 ),
	( 6, 'Middle', 'First', 0 ),
	( 7, 'Window', 'Economy', 0 ),
	( 8, 'Window', 'Economy', 0 ),
	( 9, 'Window', 'First', 0 ),
	( 10, 'Window', 'First', 0 );