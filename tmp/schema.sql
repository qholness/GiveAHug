drop table if exists hug_data;
drop table if exists cities;
drop table if exists foods;
drop table if exists hug_locs;
drop table if exists country;
drop table if exists users;

create table users (
  id integer primary key autoincrement,
  user_id text not null,
  pass varchar not null
);
create table hug_data (
  id integer primary key autoincrement,
  first_name text not null,
  age integer not null,
  gender text,
  race text,
  city text,
  country text,
  favorite_food text,
  hug_location text,
  relation_to_hug_receiver text
);
create table cities AS 
	select distinct hugs.city
	from hug_data as hugs 
	order by city desc
;
create table foods AS 
  select distinct hugs.favorite_food
  from hug_data as hugs 
  order by favorite_food desc
;
create table hug_locs AS 
  select distinct hugs.hug_location
  from hug_data as hugs 
  order by hug_location desc
;
create table country AS 
  select distinct hugs.country
  from hug_data as hugs 
  order by country desc
;
.quit