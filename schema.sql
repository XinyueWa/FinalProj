
CREATE TABLE IF NOT EXISTS nyc_zipcodes (
  "ZIPCODE" int8 PRIMARY KEY,
  "geometry" geometry(POLYGON, 4326)
);

CREATE TABLE IF NOT EXISTS nyc_311 (
    "Unique Key" int8 PRIMARY KEY,
    "Created Date" timestamp(6),
    "Complaint Type" text,
    "Incident Zip" int8,
    "city" text,
    "geometry" geometry(POINT, 4326),
    FOREIGN KEY ("Incident Zip") REFERENCES nyc_zipcodes("ZIPCODE")
);

CREATE TABLE IF NOT EXISTS nyc_tree (
    "tree_id" int8 PRIMARY KEY,
    "zipcode" int8,
    "status" text,
    "health" text,
    "spc_latin" text,
    "spc_common" text,
    "zip_city" text,
    "geometry" geometry(POINT, 4326),
    FOREIGN KEY ("zipcode") REFERENCES nyc_zipcodes("ZIPCODE")
);

CREATE TABLE IF NOT EXISTS nyc_zillow (
  "index" int8 PRIMARY KEY,
  "RegionID" int8,
  "RegionName" int8,
  "date" DATE,
  "price" float8,
  FOREIGN KEY ("RegionName") REFERENCES nyc_zipcodes("ZIPCODE")
);
