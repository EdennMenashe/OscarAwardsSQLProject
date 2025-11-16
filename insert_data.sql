---------------------------------------------------------
-- INSERT INTO MembershipCategory
---------------------------------------------------------
INSERT INTO [MembershipCategory] (category, number, Cost)
VALUES 
('Vip', '1', 356.2),
('Regular', '2', 110.5);


---------------------------------------------------------
-- INSERT INTO Membership
---------------------------------------------------------
INSERT INTO [Membership] (MembershipID, number, FirstName, LastName, Address, JoinDate, Email)
VALUES
('102030405', '1', 'Itay', 'Cohen', 'Ramat Gan', '10.10.14', 'Itay@hotmail.com'),
('205567846', '1', 'Moshe', 'Levi', 'Netanya', '01.02.11', 'Moshe@gmail.com'),
('375041254', '1', 'Eden', 'Yakobi', 'Afula', '15.02.12', 'Eden@hotmail.com'),
('315745874', '1', 'Liat', 'Shom', 'Beit Shean', '08.03.10', 'Liat@gmail.com'),
('282314567', '1', 'Noa', 'Salev', 'Tel Aviv Jaffa', '07.04.09', 'Noa@gmail.com'),
('115721761', '1', 'Yuri', 'Lev', 'Haifa', '08.05.16', 'Yuri@hotmail.com'),
('204057620', '1', 'Shahar', 'Cohen', 'Jerusalem', '01.02.13', 'Shahar@gmail.com'),
('345076986', '1', 'Shani', 'Alon', 'Rishon Lezion', '28.12.17', 'Shani@gmail.com'),
('284684584', '2', 'Ron', 'Shamir', 'Ness Ziona', '18.01.16', 'Ron@hotmail.com'),
('204568578', '1', 'Rona', 'Hen', 'Or Yehuda', '08.02.12', 'Rona@hotmail.com'),
('112654588', '1', 'Lior', 'Menashe', 'Kfar Saba', '03.12.11', 'Lior@gmail.com'),
('248684588', '2', 'Romi', 'Haviv', 'Sderot', '15.03.11', 'Roni@gmail.com'),
('224785478', '2', 'Omer', 'Katz', 'Or Yehuda', '06.02.11', 'Omer@hotmail.com'),
('314524876', '2', 'Danit', 'Green', 'Yehud', '03.18.12', 'Danit@gmail.com'),
('348765495', '1', 'Hadar', 'David', 'Qiryat Gat', '22.06.18', 'Don@gmail.com'),
('437858456', '1', 'Sapir', 'David', 'Beer Sheva', '06.07.13', 'Sapir@hotmail.com'),
('314786488', '1', 'Moran', 'Hazan', 'Bat Yam', '03.11.08', 'Moran@hotmail.com'),
('312475874', '1', 'John', 'Shitrit', 'Holon', '03.03.09', 'Tal@gmail.com'),
('345786499', '1', 'Shir', 'Levy', 'Kiryat Yam', '05.02.21', 'Shir@gmail.com'),
('214579955', '1', 'Oren', 'Amar', 'Herzliya', '04.09.18', 'Oren@gmail.com');


---------------------------------------------------------
-- INSERT INTO CompetitionJudge
---------------------------------------------------------
INSERT INTO [CompetitionJudge] (MembershipID, Grade, WorkPlaceID, JudgeDate, MovieID)
VALUES
('102030405', '5', '6', '01.01.23', '8'),
('115265488', '3', '6', '01.01.23', '8'),
('115721761', '1', '7', '01.01.23', '8'),
('205567846', '4', '5', '01.01.23', '9'),
('214578945', '3', '5', '01.01.23', '9'),
('214579955', '3', '6', '01.01.23', '9'),
('224785478', '5', '5', '01.01.23', '10'),
('254789165', '5', '6', '01.01.23', '10'),
('284684584', '4', '7', '01.01.23', '10'),
('314786488', '2', '7', '01.01.23', '11'),
('315745874', '1', '7', '01.01.23', '11'),
('547845675', '5', '5', '01.01.23', '11');


---------------------------------------------------------
-- INSERT INTO WorkPlace
---------------------------------------------------------
INSERT INTO [WorkPlace] (WorkPlaceID, WorkPlaceName, WorkPlaceAddress)
VALUES
('5', 'Google', 'Tel Aviv'),
('6', 'Amazone', 'Ramat Gan'),
('7', 'Ace', 'Afula');


---------------------------------------------------------
-- INSERT INTO Producer
---------------------------------------------------------
INSERT INTO [Producer] (ProducerID, WorkPlaceID, FirstName, LastName, Address)
VALUES
('548714578', '5', 'Avi', 'Levi', 'Ramat Gan'),
('587124784', '6', 'Ron', 'Cohen', 'Bat Yam'),
('578112475', '7', 'Yael', 'David', 'Ashdod'),
('578426522', '7', 'Tomer', 'Sivan', 'Holon');


---------------------------------------------------------
-- INSERT INTO OscarJudges
---------------------------------------------------------
INSERT INTO [OscarJudges] (MembershipID, OscarID)
VALUES
('102030405', '15'),
('115265488', '15'),
('115721761', '15'),
('205567846', '15'),
('214578945', '15'),
('214579955', '15'),
('224785478', '15'),
('254789165', '15'),
('284684584', '15'),
('314786488', '15'),
('315745874', '15'),
('547845675', '15');


---------------------------------------------------------
-- INSERT INTO Oscar
---------------------------------------------------------
INSERT INTO [Oscar] (OscarID, DateOfOscar)
VALUES ('15', '01.01.23');


---------------------------------------------------------
-- INSERT INTO Customer
---------------------------------------------------------
INSERT INTO [Customer] (MovieID, OscarID)
VALUES
('8', '15'),
('9', '15'),
('10', '15'),
('11', '15');


---------------------------------------------------------
-- INSERT INTO Movie
---------------------------------------------------------
INSERT INTO [Movie] (MovieID, MovieName, DateOfMovie, ProducerID)
VALUES
('8', 'Noa', '01.01.19', '548714578'),
('9', 'Eden', '02.02.19', '578112475'),
('10', 'Liat', '03.03.19', '578426522'),
('11', 'Friends', '04.04.19', '587124784');
