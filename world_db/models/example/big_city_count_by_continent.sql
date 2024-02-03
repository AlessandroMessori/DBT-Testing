
-- Use the `ref` function to select from other models

select continent, count(*) as cityCount 
from {{ ref('city_country_denormalized') }}
where city_population >= 1000000
group by continent