-- Copyright 2009 Jordi Puigsegur (jordi.puigsegur@gmail.com)
--
--  This file is part of WFrog
--
--  WFrog is free software: you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation, either version 3 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with this program.  If not, see <http://www.gnu.org/licenses/>.


CREATE TABLE METEO
(
  TIMESTAMP_UTC Timestamp NOT NULL,
  TIMESTAMP_LOCAL Timestamp NOT NULL,
  TEMP Numeric(3,1),
  HUM Numeric(3,1),
  WIND Numeric(4,1),
  WIND_DIR Smallint,
  WIND_GUST Numeric(4,1),
  WIND_GUST_DIR Smallint,
  DEW_POINT Numeric(3,1),
  RAIN Numeric(4,1),
  RAIN_RATE Numeric(4,1),
  PRESSURE Numeric(5,1),
  UV_INDEX Smallint,
  CONSTRAINT PK_METEO PRIMARY KEY (TIMESTAMP_UTC)
);

UPDATE RDB$RELATION_FIELDS set RDB$DESCRIPTION = 'TEMPERATURE (C)'  where RDB$FIELD_NAME = 'TEMP' and RDB$RELATION_NAME = 'METEO';
UPDATE RDB$RELATION_FIELDS set RDB$DESCRIPTION = '% RELATIVE HUMIDITY'  where RDB$FIELD_NAME = 'HUM' and RDB$RELATION_NAME = 'METEO';
UPDATE RDB$RELATION_FIELDS set RDB$DESCRIPTION = 'WIND AVERAGE SPEED (m/s)'  where RDB$FIELD_NAME = 'WIND' and RDB$RELATION_NAME = 'METEO';
UPDATE RDB$RELATION_FIELDS set RDB$DESCRIPTION = 'WIND PREDOMINANT DIRECTION (0-359)'  where RDB$FIELD_NAME = 'WIND_DIR' and RDB$RELATION_NAME = 'METEO';
UPDATE RDB$RELATION_FIELDS set RDB$DESCRIPTION = 'WIND GUST SPEED (m/s)'  where RDB$FIELD_NAME = 'WIND_GUST' and RDB$RELATION_NAME = 'METEO';
UPDATE RDB$RELATION_FIELDS set RDB$DESCRIPTION = 'WIND GUST DIRECTION (0-359)'  where RDB$FIELD_NAME = 'WIND_GUST_DIR' and RDB$RELATION_NAME = 'METEO';
UPDATE RDB$RELATION_FIELDS set RDB$DESCRIPTION = 'DEWPOINT TEMPERATURE (C)'  where RDB$FIELD_NAME = 'DEW_POINT' and RDB$RELATION_NAME = 'METEO';
UPDATE RDB$RELATION_FIELDS set RDB$DESCRIPTION = 'RAIN FALL (mm)'  where RDB$FIELD_NAME = 'RAIN' and RDB$RELATION_NAME = 'METEO';
UPDATE RDB$RELATION_FIELDS set RDB$DESCRIPTION = 'RAIN RATE (mm/hr)'  where RDB$FIELD_NAME = 'RAIN_RATE' and RDB$RELATION_NAME = 'METEO';
UPDATE RDB$RELATION_FIELDS set RDB$DESCRIPTION = 'ATMOSFERIC PRESSURE (mb)'  where RDB$FIELD_NAME = 'PRESSURE' and RDB$RELATION_NAME = 'METEO';
UPDATE RDB$RELATION_FIELDS set RDB$DESCRIPTION = 'UV INDEX'  where RDB$FIELD_NAME = 'UV_INDEX' and RDB$RELATION_NAME = 'METEO';
CREATE DESCENDING INDEX IDX_METEO1 ON METEO (TIMESTAMP_LOCAL);
