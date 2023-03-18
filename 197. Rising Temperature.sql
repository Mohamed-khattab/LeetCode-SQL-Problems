SELECT id FROM
    (SELECT id, temperature, LAG(temperature) OVER (ORDER BY recordDate) AS prev_temp ,
            recordDate as recordDate,
            LAG(recordDate)  OVER (ORDER BY recordDate) AS PREV_DATE
            FROM Weather) AS t
    WHERE temperature > prev_temp AND  DATEDIFF(day , PREV_DATE, recordDate ) =1
