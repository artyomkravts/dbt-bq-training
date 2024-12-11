{% macro get_date_parts(date_column) %}
    {{ date_column }} AS original_date,
    EXTRACT(YEAR FROM {{ date_column }}) AS year,
    EXTRACT(MONTH FROM {{ date_column }}) AS month,
    EXTRACT(DAY FROM {{ date_column }}) AS day
{% endmacro %}
