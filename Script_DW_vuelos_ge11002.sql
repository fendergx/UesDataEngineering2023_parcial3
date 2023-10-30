--/* clean tables */
--drop TABLE IF EXISTS factvuelo;
--drop TABLE IF EXISTS dimaerolinea;
--drop TABLE IF EXISTS dimfecha;

--dimension de aerolinea
CREATE TABLE dimaerolinea(
    	airlineKey int PRIMARY KEY,
        airlineCode Varchar (10), --codigo de aerolinea
    	Description Varchar (100)
)sortKey(airlineKey,airlineCode);

--dimension de fecha
CREATE TABLE dimfecha(
    fechakey int PRIMARY KEY distkey,
    fullDate Varchar(10),
    nombreDia Varchar (25),
	diaDeSemana int,
	numDiaEnMes int,
    mes int,
	nombreMes Varchar (25),
    numSemanaEnMes int,
    numSemanaEnAnio int,
    trimestre int,
    nombreTrimestre varchar(25),
    diaLaboral varchar(3), --lunes a viernes, 0 no, 1 sis
    anio int
)sortKey(fechakey, nombreMes, anio);

--fact table de vuelos
CREATE TABLE factvuelo(
    fechaKey int,
    airlineKey int,
    flightNumberOperatingAirline int,
    --origen
    originAirportID int, --id aeropuerto origen segun (DOT) Departamento de Transporte de los Estados Unidos
    originCityName varchar(100),
    originState varchar(10),
    originStateName varchar(100),
    --destino
    destAirportID int, --id aeropuerto origen segun (DOT) Departamento de Transporte de los Estados Unidos
    destCityName varchar(100),
    destState varchar(10),
    destStateName varchar(100),
    crsDepTime int,
    depTime int,
    delayed varchar(3), --retrasado
    depDelayMinutes int,
    arrDelayMinutes int,
    wheelsOff int,
    wheelsOn int,
    crsArrTime int,
    arrTime int,
    canceled int, --cancelado
    diverted int, --desviado
    crsElapsedTime int,
    actualElapsedTime int,
    airtime int, --tiempo en el aire
    carrierDelay int, --retraso del transportista
    weatherDelay varchar(10), --retraso de clima
    nasDelay varchar(10), --National Air System Delay
    securityDelay varchar(10), --retraso de seguridad
    lateAircraftDelay varchar(10), --Retraso tardío de la aeronave
    divAirportLandings int, --numero de aterrizajes en aeropuertos dif
    divReachedDest varchar(10), --vuelo desv llego a destino
    divActualElapsedTime varchar(10),
    divArrDelay varchar(10),
	FOREIGN KEY(airlineKey) REFERENCES dimaerolinea(airlineKey),
	FOREIGN KEY(fechaKey) REFERENCES dimfecha(fechaKey)
)sortKey(airlineKey, fechaKey);