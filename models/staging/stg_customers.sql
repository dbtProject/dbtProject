select id as user_id, first_name, last_name,date
from {{ source("jaffle_shop", "customers") }}
