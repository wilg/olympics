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
    type: number
    value_format_name: id
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
    drill_fields: [medal]

  - dimension: country
    type: string
    sql: ${TABLE}.country

  - dimension: country_name
    type: string
    map_layer: countries
    drill_fields: medalists
    sql: |
      CASE WHEN ${country} = 'AFG' THEN 'Afghanistan'
          WHEN ${country} = 'AHO' THEN 'Netherlands Antilles'
          WHEN ${country} = 'ALG' THEN 'Algeria'
          WHEN ${country} = 'ANZ' THEN 'Australasia'
          WHEN ${country} = 'ARG' THEN 'Argentina'
          WHEN ${country} = 'ARM' THEN 'Armenia'
          WHEN ${country} = 'AUS' THEN 'Australia'
          WHEN ${country} = 'AUT' THEN 'Austria'
          WHEN ${country} = 'AZE' THEN 'Azerbaijan'
          WHEN ${country} = 'BAH' THEN 'Bahamas'
          WHEN ${country} = 'BAR' THEN 'Barbados'
          WHEN ${country} = 'BDI' THEN 'Burundi'
          WHEN ${country} = 'BEL' THEN 'Belgium'
          WHEN ${country} = 'BER' THEN 'Bermuda'
          WHEN ${country} = 'BLR' THEN 'Belarus'
          WHEN ${country} = 'BOH' THEN 'Bohemia'
          WHEN ${country} = 'BRA' THEN 'Brazil'
          WHEN ${country} = 'BUL' THEN 'Bulgaria'
          WHEN ${country} = 'BWI' THEN 'British West Indies'
          WHEN ${country} = 'CAN' THEN 'Canada'
          WHEN ${country} = 'CHI' THEN 'Chile'
          WHEN ${country} = 'CHN' THEN 'China'
          WHEN ${country} = 'CIV' THEN 'Ivory Coast'
          WHEN ${country} = 'CMR' THEN 'Cameroon'
          WHEN ${country} = 'COL' THEN 'Colombia'
          WHEN ${country} = 'CRC' THEN 'Costa Rica'
          WHEN ${country} = 'CRO' THEN 'Croatia'
          WHEN ${country} = 'CUB' THEN 'Cuba'
          WHEN ${country} = 'CZE' THEN 'Czech Republic'
          WHEN ${country} = 'DEN' THEN 'Denmark'
          WHEN ${country} = 'DJI' THEN 'Djibouti'
          WHEN ${country} = 'DOM' THEN 'Dominican Republic'
          WHEN ${country} = 'ECU' THEN 'Ecuador'
          WHEN ${country} = 'EGY' THEN 'Egypt'
          WHEN ${country} = 'ERI' THEN 'Eritrea'
          WHEN ${country} = 'ESP' THEN 'Spain'
          WHEN ${country} = 'EST' THEN 'Estonia'
          WHEN ${country} = 'ETH' THEN 'Ethiopia'
          WHEN ${country} = 'EUA' THEN 'Germany'
          WHEN ${country} = 'EUN' THEN 'Unified Team former USSR'
          WHEN ${country} = 'FIN' THEN 'Finland'
          WHEN ${country} = 'FRA' THEN 'France'
          WHEN ${country} = 'FRG' THEN 'West Germany'
          WHEN ${country} = 'GBR' THEN 'Great Britain'
          WHEN ${country} = 'GDR' THEN 'East Germany'
          WHEN ${country} = 'GEO' THEN 'Georgia'
          WHEN ${country} = 'GER' THEN 'Germany'
          WHEN ${country} = 'GHA' THEN 'Ghana'
          WHEN ${country} = 'GRE' THEN 'Greece'
          WHEN ${country} = 'GUY' THEN 'Guyana'
          WHEN ${country} = 'HAI' THEN 'Haiti'
          WHEN ${country} = 'HKG' THEN 'Hong Kong'
          WHEN ${country} = 'HUN' THEN 'Hungary'
          WHEN ${country} = 'INA' THEN 'Indonesia'
          WHEN ${country} = 'IND' THEN 'India'
          WHEN ${country} = 'IOP' THEN 'Independent Olympic Participants'
          WHEN ${country} = 'IRI' THEN 'Iran'
          WHEN ${country} = 'IRL' THEN 'Ireland'
          WHEN ${country} = 'IRQ' THEN 'Iraq'
          WHEN ${country} = 'ISL' THEN 'Iceland'
          WHEN ${country} = 'ISR' THEN 'Israel'
          WHEN ${country} = 'ISV' THEN 'Virgin Islands'
          WHEN ${country} = 'ITA' THEN 'Italy'
          WHEN ${country} = 'JAM' THEN 'Jamaica'
          WHEN ${country} = 'JPN' THEN 'Japan'
          WHEN ${country} = 'KAZ' THEN 'Kazakhstan'
          WHEN ${country} = 'KEN' THEN 'Kenya'
          WHEN ${country} = 'KGZ' THEN 'Kyrgyzstan'
          WHEN ${country} = 'KOR' THEN 'South Korea'
          WHEN ${country} = 'KSA' THEN 'Saudi Arabia'
          WHEN ${country} = 'KUW' THEN 'Kuwait'
          WHEN ${country} = 'LAT' THEN 'Latvia'
          WHEN ${country} = 'LIB' THEN 'Lebanon'
          WHEN ${country} = 'LTU' THEN 'Lithuania'
          WHEN ${country} = 'LUX' THEN 'Luxembourg'
          WHEN ${country} = 'MAR' THEN 'Morocco'
          WHEN ${country} = 'MAS' THEN 'Malaysia'
          WHEN ${country} = 'MDA' THEN 'Moldova'
          WHEN ${country} = 'MEX' THEN 'Mexico'
          WHEN ${country} = 'MGL' THEN 'Mongolia'
          WHEN ${country} = 'MKD' THEN 'Macedonia'
          WHEN ${country} = 'MOZ' THEN 'Mozambique'
          WHEN ${country} = 'MRI' THEN 'Mauritius'
          WHEN ${country} = 'NAM' THEN 'Namibia'
          WHEN ${country} = 'NED' THEN 'Netherlands'
          WHEN ${country} = 'NGR' THEN 'Nigeria'
          WHEN ${country} = 'NIG' THEN 'Niger'
          WHEN ${country} = 'NOR' THEN 'Norway'
          WHEN ${country} = 'NZL' THEN 'New Zealand'
          WHEN ${country} = 'PAK' THEN 'Pakistan'
          WHEN ${country} = 'PAN' THEN 'Panama'
          WHEN ${country} = 'PAR' THEN 'Paraguay'
          WHEN ${country} = 'PER' THEN 'Peru'
          WHEN ${country} = 'PHI' THEN 'Philippines'
          WHEN ${country} = 'POL' THEN 'Poland'
          WHEN ${country} = 'POR' THEN 'Portugal'
          WHEN ${country} = 'PRK' THEN 'North Korea'
          WHEN ${country} = 'PUR' THEN 'Puerto Rico'
          WHEN ${country} = 'QAT' THEN 'Qatar'
          WHEN ${country} = 'ROU' THEN 'Romania'
          WHEN ${country} = 'RSA' THEN 'South Africa'
          WHEN ${country} = 'RU1' THEN 'Russian Empire'
          WHEN ${country} = 'RUS' THEN 'Russia'
          WHEN ${country} = 'SCG' THEN 'Serbia and Montenegro'
          WHEN ${country} = 'SEN' THEN 'Senegal'
          WHEN ${country} = 'SIN' THEN 'Singapore'
          WHEN ${country} = 'SLO' THEN 'Slovenia'
          WHEN ${country} = 'SRB' THEN 'Serbia'
          WHEN ${country} = 'SRI' THEN 'Sri Lanka'
          WHEN ${country} = 'SUD' THEN 'Sudan'
          WHEN ${country} = 'SUI' THEN 'Switzerland'
          WHEN ${country} = 'SUR' THEN 'Suriname'
          WHEN ${country} = 'SVK' THEN 'Slovakia'
          WHEN ${country} = 'SWE' THEN 'Sweden'
          WHEN ${country} = 'SYR' THEN 'Syria'
          WHEN ${country} = 'TAN' THEN 'Tanzania'
          WHEN ${country} = 'TCH' THEN 'Czech Republic'
          WHEN ${country} = 'TGA' THEN 'Tonga'
          WHEN ${country} = 'THA' THEN 'Thailand'
          WHEN ${country} = 'TJK' THEN 'Tajikistan'
          WHEN ${country} = 'TOG' THEN 'Togo'
          WHEN ${country} = 'TPE' THEN 'Chinese Taipei'
          WHEN ${country} = 'TRI' THEN 'Trinidad and Tobago'
          WHEN ${country} = 'TUN' THEN 'Tunisia'
          WHEN ${country} = 'TUR' THEN 'Turkey'
          WHEN ${country} = 'UAE' THEN 'United Arab Emirates'
          WHEN ${country} = 'UGA' THEN 'Uganda'
          WHEN ${country} = 'UKR' THEN 'Ukraine'
          WHEN ${country} = 'URS' THEN 'Soviet Union'
          WHEN ${country} = 'URU' THEN 'Uruguay'
          WHEN ${country} = 'USA' THEN 'United States of America'
          WHEN ${country} = 'UZB' THEN 'Uzbekistan'
          WHEN ${country} = 'VEN' THEN 'Venezuela'
          WHEN ${country} = 'VIE' THEN 'Vietnam'
          WHEN ${country} = 'YUG' THEN 'Yugoslavia'
          WHEN ${country} = 'ZAM' THEN 'Zambia'
          WHEN ${country} = 'ZIM' THEN 'Zimbabwe'
          WHEN ${country} = 'ZZX' THEN 'Mixed teams'
          ELSE ${country}
      END
      
      
  - dimension: is_home_city
    type: yesno
    sql: |
      (${country} = 'NED' AND ${city} = 'Amsterdam' AND ${game_year} = 1928) OR 
      (${country} = 'BEL' AND ${city} = 'Antwerp' AND ${game_year} = 1920) OR
      (${country} = 'GRE' AND ${city} = 'Athens' AND ${game_year} = 1896) OR
      (${country} = 'GRE' AND ${city} = 'Athens' AND ${game_year} = 2004) OR
      (${country} = 'USA' AND ${city} = 'Atlanta' AND ${game_year} = 1996) OR
      (${country} = 'ESP' AND ${city} = 'Barcelona' AND ${game_year} = 1992) OR
      (${country} = 'CHN' AND ${city} = 'Beijing' AND ${game_year} = 2008) OR
      (${country} = 'GER' AND ${city} = 'Berlin' AND ${game_year} = 1936) OR
      (${country} = 'FIN' AND ${city} = 'Helsinki' AND ${game_year} = 1952) OR
      (${country} = 'GBR' AND ${city} = 'London' AND ${game_year} = 1908) OR
      (${country} = 'GBR' AND ${city} = 'London' AND ${game_year} = 1948) OR
      (${country} = 'USA' AND ${city} = 'Los Angeles' AND ${game_year} = 1932) OR
      (${country} = 'USA' AND ${city} = 'Los Angeles' AND ${game_year} = 1984) OR
      (${country} = 'AUS' AND ${city} = 'Melbourne' AND ${game_year} = 1956) OR
      (${country} = 'SWE' AND ${city} = 'Stockholm' AND ${game_year} = 1956) OR
      (${country} = 'SWE' AND ${city} = 'Stockholm' AND ${game_year} = 1912) OR
      (${country} = 'MEX' AND ${city} = 'Mexico' AND ${game_year} = 1968) OR
      (${country} = 'CAN' AND ${city} = 'Montreal' AND ${game_year} = 1976) OR
      (${country} = 'URS' AND ${city} = 'Moscow' AND ${game_year} = 1980) OR
      (${country} = 'FRG' AND ${city} = 'Munich' AND ${game_year} = 1972) OR
      (${country} = 'FRA' AND ${city} = 'Paris' AND ${game_year} = 1900) OR
      (${country} = 'FRA' AND ${city} = 'Paris' AND ${game_year} = 1924) OR
      (${country} = 'ITA' AND ${city} = 'Rome' AND ${game_year} = 1960) OR
      (${country} = 'KOR' AND ${city} = 'Seoul' AND ${game_year} = 1988) OR
      (${country} = 'USA' AND ${city} = 'St Louis' AND ${game_year} = 1904) OR
      (${country} = 'AUS' AND ${city} = 'Sydney' AND ${game_year} = 2000) OR
      (${country} = 'JPN' AND ${city} = 'Tokyo' AND ${game_year} = 1964)

  - dimension: sport
    type: string
    sql: ${TABLE}.sport
    drill_fields: medalists

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

  - measure: point_count
    type: number
    sql: 3 * ${gold_count} + 2 * ${silver_count} + ${bronze_count}

  - measure: bronze_count
    type: count
    filters:
      medal: 'Bronze'
    drill_fields: medalists
  
  - measure: event_count
    type: count_distinct
    sql: ${event}

  - measure: men_count
    type: count
    filter:
      gender: 'Men'
  
  - measure: women_count
    type: count
    filter:
      gender: 'Women'

  - measure: game_year_count
    type: count_distinct
    sql: ${game_year}
    
  sets:
    medalists: [athlete, gender, city, country, game_year, sport, event, discipline]
