#!/bin/sh

psql --username "$POSTGRES_USER" "$POSTGRES_DB" -a -f /sql/webitel.sql
psql --username "$POSTGRES_USER" "$POSTGRES_DB" -a -f /sql/tbl_version.sql

psql --username "$POSTGRES_USER" "$POSTGRES_DB" <<-EOSQL
insert into call_center.calendar_timezone_offsets (id, utc_offset, names)
select rank() over(order by utc_offset) id, utc_offset, array_agg(name) as names
from pg_timezone_names
where not name ilike '%pos%' and not exists(select 1 from call_center.calendar_timezone_offsets)
group by utc_offset
order by utc_offset;

insert into call_center.calendar_timezones (name, utc_offset, offset_id)
select n, utc_offset, id
from call_center.calendar_timezone_offsets,
     lateral unnest(names) n
where not exists(select 1 from call_center.calendar_timezones);

refresh materialized view call_center.calendar_intervals;
EOSQL
