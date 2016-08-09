- view: years

  derived_table:
    sql: |
      SELECT
        edition AS year
      FROM summer_olympics.medalists
      GROUP BY year

  fields:
    - dimension: year
      type: string
      primary_key: true

- view: sports

  derived_table:
    sql: |
      SELECT
        sport
      FROM summer_olympics.medalists
      GROUP BY sport

  fields:
    - dimension: sport
      type: string
      primary_key: true

- view: year_sports

  derived_table:
    sql: |
      SELECT
        y.year as year,
        s.sport as sport
      FROM ${years.SQL_TABLE_NAME} AS y
      CROSS JOIN ${sports.SQL_TABLE_NAME} AS s

  fields:
    - dimension: year
      type: string

    - dimension: sport
      type: string
