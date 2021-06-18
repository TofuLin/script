#!/bin/bash
for i in {1..10}
do
   psql -c 'CREATE TABLE Towns$i(id SERIAL UNIQUE NOT NULL,code VARCHAR(10) NOT NULL,article TEXT,name TEXT NOT NULL);'
done
