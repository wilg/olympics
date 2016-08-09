- view: medalists
  derived_table:
    sql: |
      select
        sy.sport as sport,
        sy.year as game_year,
        m.athlete as athlete,
        m.city as city,
        m.discipline as discipline,
        m.event as event,
        m.event_gender as event_gender,
        m.gender as gender,
        m.medal as medal,
        m.noc as country
      from ${year_sports.SQL_TABLE_NAME} as sy
      left join summer_olympics.medalists m
      on m.edition = sy.year and m.sport = sy.sport

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
    type: string
    sql: ${TABLE}.game_year
    
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
    sql: ${TABLE}.country

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
  
  - measure: event_count
    type: count_distinct
    sql: ${event}

  sets:
    medalists: [athlete, country, game_year, sport, event, discipline]
