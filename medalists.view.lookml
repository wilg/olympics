- view: medalists
  sql_table_name: summer_olympics.medalists
  fields:

  - dimension: athlete
    type: string
    sql: ${TABLE}.athlete

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: discipline
    type: string
    sql: ${TABLE}.discipline

  - dimension: edition
    type: number
    sql: ${TABLE}.edition

  - dimension: event
    type: string
    sql: ${TABLE}.event

  - dimension: event_gender
    type: string
    sql: ${TABLE}.event_gender

  - dimension: gender
    type: string
    sql: ${TABLE}.gender

  - dimension: medal
    type: string
    sql: ${TABLE}.medal

  - dimension: country
    type: string
    sql: ${TABLE}.noc

  - dimension: sport
    type: string
    sql: ${TABLE}.sport

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []

