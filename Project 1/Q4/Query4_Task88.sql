-- Alternative single nested query:
SELECT s.description as description,
r.robberid as robberid,
r.nickname as nickname
FROM (select s.description as description,
h.robberid as robber_id
FROM hasskills h 
JOIN skills s 
ON h.skillid = s.skillid
ORDER BY s.description) as s 
JOIN Robbers r
ON r.robberid = s.robber_id;



--     description      | robberid |       nickname       
--  ----------------------+----------+----------------------
--   Cooking              |       18 | Vito Genovese       
--   Driving              |       23 | Lepke Buchalter     
--   Driving              |        7 | Dutch Schulz        
--   Driving              |       17 | Bugsy Siegel        
--   Driving              |        5 | Mimmy The Mau Mau   
--   Driving              |        3 | Lucky Luchiano      
--   Driving              |       20 | Longy Zwillman      
--   Eating               |        6 | Tony Genovese       
--   Eating               |       18 | Vito Genovese       
--   Explosives           |       24 | Sonny Genovese      
--   Explosives           |        2 | Bugsy Malone        
--   Guarding             |        4 | Anastazia           
--   Guarding             |       17 | Bugsy Siegel        
--   Guarding             |       23 | Lepke Buchalter     
--   Gun-Shooting         |       21 | Waxey Gordon        
--   Gun-Shooting         |        9 | Calamity Jane       
--   Lock-Picking         |        3 | Lucky Luchiano      
--   Lock-Picking         |        7 | Dutch Schulz        
--   Lock-Picking         |       24 | Sonny Genovese      
--   Lock-Picking         |        8 | Clyde               
--   Lock-Picking         |       22 | Greasy Guzik        
--   Money Counting       |       13 | Mickey Cohen        
--   Money Counting       |       19 | Mike Genovese       
--   Money Counting       |       14 | Kid Cann            
--   Planning             |       16 | King Solomon        
--   Planning             |        8 | Clyde               
--   Planning             |        5 | Mimmy The Mau Mau   
--   Planning             |       15 | Boo Boo Hoff        
--   Preaching            |       22 | Greasy Guzik        
--   Preaching            |       10 | Bonnie              
--   Safe-Cracking        |       12 | Moe Dalitz          
--   Safe-Cracking        |       24 | Sonny Genovese      
--   Safe-Cracking        |       11 | Meyer Lansky        
--   Scouting             |       18 | Vito Genovese       
--   Scouting             |        8 | Clyde         
