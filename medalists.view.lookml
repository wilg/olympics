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

  - dimension: game_year
    type: datetime
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

  - measure: medal_count
    type: count
    drill_fields: medalists

  - measure: gold_count
    type: count
    filters:
      medal: 'Gold'
    drill_fields: medalists

  - measure: silver_count
    type: count
    filters:
      medal: 'Silver'
    drill_fields: medalists

  - measure: bronze_count
    type: count
    filters:
      medal: 'Bronze'
    drill_fields: medalists

  sets:
    medalists: [athlete, country, game_year, sport, event, discipline]
