--Alternative single, nested query:
SELECT r.robberid as robber_id,
r.nickname as nickname,
i.earnings as individual_earnings
FROM (SELECT * FROM 
(SELECT robberid,
SUM(share) as earnings 
FROM accomplices 
GROUP BY robberid) 
as robbery_earnings
WHERE earnings > 40000) as i
JOIN Robbers r
ON i.robberid = r.robberid
ORDER BY individual_earnings DESC;

-- This query yields the following results: 

-- robber_id |       nickname       | individual_earnings 
-- -----------+----------------------+---------------------
--         5 | Mimmy The Mau Mau    |               70000
--        15 | Boo Boo Hoff         |               61448
--        16 | King Solomon         |               59726
--        17 | Bugsy Siegel         |               52601
--         3 | Lucky Luchiano       |               42667
--        10 | Bonnie               |               40085

