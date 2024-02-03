
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

select 
	c.id, 
	c.name as city_name, 
	c.country_code, 
	c.population as city_population, 
	c2.name as country_name, 
	c2.continent, 
	c2.region,
	c2.surface_area,
	c2.indep_year,
	c2.population as_country_population,
	c2.life_expectancy,
	c2.capital 
from city c 
join country c2 
on c.country_code = c2.code 

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
