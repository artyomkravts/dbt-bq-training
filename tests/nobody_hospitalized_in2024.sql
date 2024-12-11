-- Test to check that nobody is hospitalized of covid in 2025

select count(*) as total_hospitalized_patients_in2024
from {{ref('covid19_italy_totalHospitalized_byDate')}}
where year = 2025
having count(*) > 0
