/* Andrew Meyers
   Twitch SQL Project
   Codecademy
*/


/* Question 1 */
 
SELECT * FROM stream LIMIT 20;

 /* Free Answer */


/* Question 2 */ 

SELECT * FROM chat LIMIT 20; 

/* Gets first 20 rows from chat */


/* Question 3 */ 

DELETE FROM chat 
WHERE time = 'time'; 

/* Removes first row from chat */


/* Question 4 */ 

SELECT DISTINCT game 
FROM stream 
WHERE game IS NOT NULL;

/* Gets all Distinct Games from stream table, some games are NULL */


/* Question 5 */ 

SELECT DISTINCT channel 
FROM stream;

/* Gets all Distinct Channels from stream table */


/* Question 6 */ 

SELECT game AS games, COUNT(*) AS viewers 
FROM stream 
GROUP BY game 
ORDER BY viewers DESC; 

/* 15 viewers view a Null game */


/* Question 7 */ 

SELECT country AS Location, COUNT(*) AS Number_of_League_Players 
FROM stream 
WHERE game = 'League of Legends' 
GROUP BY country 
ORDER BY Number_of_League_Players DESC; 

/* 49 League Players come from a NULL Location */


/* Question 8 */ 

SELECT player AS Players, COUNT(*) AS Streamers 
FROM stream 
GROUP BY Players 
ORDER BY Streamers DESC; 

/* Most Streamers watch games on site */


/* Question 9 */ 

SELECT game,
CASE 
  WHEN game='League of Legends' OR game='Dota 2' OR game='Heroes of the Storm' then 'MOBA'
  WHEN game='Counter-Strike: Global Offensive' THEN 'FPS'
  ELSE 'Others'
END
'Genre'
FROM stream WHERE game IS NOT NULL
GROUP BY game 
ORDER by genre;

/* games with NULL value receive genre as 'Others' */


/* Question 10 */ 

SELECT chat.device_id 
FROM chat 
INNER JOIN stream ON stream.device_id=chat.device_id;

/* INNER JOIN used on both device_id columns */


/* Bonus */ 

/* Finding Top 3 Most Popular Streamers (Channels) in stream table */

SELECT channel AS Channel, COUNT(*) AS Viewers
FROM stream 
GROUP BY Channel
ORDER BY Viewers DESC LIMIT 3;