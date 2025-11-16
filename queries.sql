/*===========================================================
  Query 1:
  Find the year in which the highest number of Oscar awards 
  were given. Groups by YEAR(DateOfOscar) and counts awards.
===========================================================*/
SELECT YEAR(O.DateOfOscar) AS OscarYear,
       COUNT(*) AS NumOfOscarWins
FROM Oscar AS O
GROUP BY YEAR(O.DateOfOscar)
ORDER BY COUNT(*) DESC;



/*===========================================================
  Query 2:
  Retrieve VIP members (Number = '1') who joined the academy 
  within the last 10 years, based on JoinDate.
===========================================================*/
SELECT FirstName, LastName, JoinDate
FROM Membership
WHERE JoinDate >= DATEADD(YEAR, -10, GETDATE())
  AND Number = '1';



/*===========================================================
  Query 3:
  Find the year with the highest number of Oscar events.
  Groups by DateOfOscar and counts OscarID occurrences.
===========================================================*/
SELECT YEAR(O.DateOfOscar) AS OscarYear,
       COUNT(O.OscarID) AS NumberOfOscars
FROM Oscar AS O
GROUP BY DateOfOscar
ORDER BY NumberOfOscars DESC;



/*===========================================================
  Query 4:
  Count how many Oscars each producer has won. The join is
  from Producer → Movie → Oscar (using MovieID = OscarID).
  Groups producers and orders by number of Oscars.
===========================================================*/
SELECT P.ProducerID,
       P.FirstName AS [Producer First Name],
       P.LastName  AS [Producer Last Name],
       COUNT(O.OscarID) AS [Number of Oscars]
FROM Producer AS P
LEFT JOIN Movie AS M ON P.ProducerID = M.ProducerID
LEFT JOIN Oscar AS O ON M.MovieID = O.OscarID
GROUP BY P.ProducerID, P.FirstName, P.LastName
ORDER BY [Number of Oscars] DESC;



/*===========================================================
  Query 5:
  Find all movies that were submitted by producers who also
  served as judges in the same year. Ensures the producer ID 
  matches the judge MembershipID and compares years.
===========================================================*/
SELECT DISTINCT M.MovieName
FROM Movie AS M
INNER JOIN Producer AS P ON M.ProducerID = P.ProducerID
INNER JOIN CompetitionJudge AS CJ ON P.ProducerID = CJ.MembershipID
WHERE CJ.MembershipID IS NOT NULL
  AND YEAR(M.DateOfMovie) = YEAR(CJ.JudgeDate);
