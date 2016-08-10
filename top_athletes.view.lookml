- view: top_athletes

  derived_table:
    sql: |
      select
        athlete,
        noc,
        medal_count
      from (
        select
          athlete,
          noc,
          count(1) medal_count,
          rank() over (partition by noc order by medal_count desc) r
        from summer_olympics.medalists
        group by athlete, noc
        order by r
      ) t1
      where r = 1
      order by medal_count desc

  fields:

  - dimension: athlete
  
  - dimension: country
    sql: ${TABLE}.noc
  
  - dimension: medal_count
    type: number