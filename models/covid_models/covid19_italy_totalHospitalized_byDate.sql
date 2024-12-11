{{ config(    materialized='table'  ) }}

with covid19_italy_totalHospitalized_byDate as (
    select
        date,
        country,
        total_hospitalized_patients
    from
        {{ ref('covid19_italy_raw_national_trends') }}  -- Use ref() to reference the raw table
)

select * from covid19_italy_totalHospitalized_byDate
