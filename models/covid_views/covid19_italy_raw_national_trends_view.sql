{{ config(    materialized='view'  ) }} -- способ материализации тут

with covid19_italy_raw_national_trends as (
    select
        date,
        country,
        hospitalized_patients_symptoms,
        hospitalized_patients_intensive_care,
        total_hospitalized_patients,
        home_confinement_cases,
        total_current_confirmed_cases,
        new_current_confirmed_cases,
        new_total_confirmed_cases,
        recovered,
        deaths,
        total_confirmed_cases,
        tests_performed,
        note
    from
        {{ source('covid19_italy', 'national_trends') }}  -- specify the source table
)

select * from covid19_italy_raw_national_trends

