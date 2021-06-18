#!/bin/bash
for i in {1..10}
do
   psql -c 'insert into towns2(code, article, name)select left(md5(i::text), 10), md5(random()::text),md5(random()::text) from generate_series(1, 20000000) s(i);'
done
