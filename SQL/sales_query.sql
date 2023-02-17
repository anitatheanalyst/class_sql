create table "sales_table"(
"SALES_ID" numeric,
"SALES_REP" text,
"EMAILS" varchar,
"BRANDS" text,
"PLANT_COST" numeric,
"UNIT_PRICE" numeric,
"QUANTITY" numeric,
"COST" numeric,
"PROFIT" numeric,
"COUNTRIES" text,
"REGION" text,
"MONTHS" text,
"YEARS" numeric
);


select *
from "sales_table"
limit 20;


select distinct("SALES_REP"), "EMAILS"
from "sales_table";

select distinct("EMAILS"), "SALES_REP"
from "sales_table";


-- select
-- from
-- where
-- group by
-- order by
-- limit

select "COUNTRIES", sum("PROFIT") as "total_profit"
from "sales_table"
where "YEARS" = 2019
group by "COUNTRIES"
order by "total_profit" 
limit 3;

select distinct("SALES_REP"), "EMAILS"
from "sales_table"
where "BRANDS" = 'trophy';


select "COUNTRIES", "YEARS", "BRANDS", sum("PROFIT") as "total_profit"
from "sales_table"
group by "COUNTRIES", "YEARS", "BRANDS"
order by "total_profit" desc
limit 5;

