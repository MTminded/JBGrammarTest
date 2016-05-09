# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.5.42)
# Database: infinity
# Generation Time: 2016-05-07 00:08:19 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ci_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ci_sessions`;

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`)
VALUES
	('63302c561c8e5b7c3c02cf1c24a72bc983603234','::1',1450527431,X'5F5F63695F6C6173745F726567656E65726174657C693A313435303532373433313B'),
	('ce891839cbdfb0900f18062baaf513ebd760c16c','::1',1450527153,X'5F5F63695F6C6173745F726567656E65726174657C693A313435303532363933393B');

/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table grammarTests
# ------------------------------------------------------------

DROP TABLE IF EXISTS `grammarTests`;

CREATE TABLE `grammarTests` (
  `No` varchar(256) DEFAULT NULL,
  `tests` varchar(256) DEFAULT NULL,
  `choice_A` varchar(256) DEFAULT NULL,
  `choice_B` varchar(256) DEFAULT NULL,
  `choice_C` varchar(256) DEFAULT NULL,
  `choice_D` varchar(256) DEFAULT NULL,
  `choice_E` varchar(256) DEFAULT NULL,
  `study_unit` varchar(256) DEFAULT NULL,
  `category` varchar(256) DEFAULT NULL,
  `answers` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `grammarTests` WRITE;
/*!40000 ALTER TABLE `grammarTests` DISABLE KEYS */;

INSERT INTO `grammarTests` (`No`, `tests`, `choice_A`, `choice_B`, `choice_C`, `choice_D`, `choice_E`, `study_unit`, `category`, `answers`)
VALUES
	('1.1','At first I didn’t like my job, but ………… to enjoy it now.','I’m beginning','I begin','','','','1,3','present and past','A'),
	('1.2','I don’t understand this sentence, What …………?','does mean this word','does this word mean','means this word','','','2,49','present and past','B'),
	('1.3','Robert ………… away two or three times a year.','is going usually','is usually going ','usually goes','goes usually','','2,3,11','present and past','C'),
	('1.4','How ………… now? Better than before?','you are feeling','do you feel','are you feeling','','','4','present and past','B,C'),
	('1.5','It was a boring weekend. ………… anything.','I didn’t','I don’t do','I didn’t do','','','5','present and past','C'),
	('1.6','Matt ………… while we were having dinner.','phoned','was phoning','has phoned','','','6,14','present and past','A'),
	('2.1','James is on holiday. He ………… to Italy.','is gone','has gone','has been','','','7','present perfect and past','B'),
	('2.2','Everything is going well. We ………… any problems so far.','didn’t have ','don’t have ','haven’t had','','','8','present perfect and past','C'),
	('2.3','Sarah has lost her passport again. It’s the second time this ………….','has happened ','happens','pahhened','is happening','','8','present perfect and past','A'),
	('2.4','You’re out of breath. …………?','Are you running ','Hare you run','Have you been running','','','9','present perfect and past','C'),
	('2.5','Where’s the book I gave you? What ………… with it?','have you done','have you been doing','are you doing','','','10','present perfect and past','A'),
	('2.6','………… each other for a long time?’ ‘Yes, since we were at school.’','Do you know','Have you known','Have you been knowing','','','11,10','present perfect and past','B'),
	('2.7','Sally has been working here ………….','for six months','since six months','six months ago','','','12','present perfect and past','A'),
	('2.8','It’s two years ………… Joe.','that I don’t see',' that I haven’t seen ','since i didn’t see','since I last saw','','12','present perfect and past','D'),
	('2.9','It ………… raining for a while, but now it’s raining again.','stopped','has stopped','was stopped','','','13','present perfect and past','A'),
	('2.10','My mother ………… in Italy.','grew up','has grown up','had grown up','','','13','present perfect and past','A'),
	('2.11',' ………… a lot of sweets when you were a child?','Have you eaten','Had you eaten','Did you ear','','','14','present perfect and past','C'),
	('2.12','Jack ………… in New York for ten years. Now he lives in Los Angeles.','lived','has lived','has been living','','','14,11','present perfect and past','A'),
	('2.13','The man sitting next to me on the plane was very nervous. He ………… before.','hasn’t flown','didn’t fly','hadn’t flown','wasn’t flying','','15','present perfect and past','C'),
	('2.14','Katherine was sitting in an armchair resting. She was tired because ………… very hard.','she was working','she’s been working','she’d been working','','','16','present perfect and past','C'),
	('2.15','………… a car when you were living in Paris?','Had you','Were you having','Have you had','Did you have','','17,14','present perfect and past','D'),
	('2.16','I ………… tennis a lot, but I don’t play very much now.','was playing','was used to play ','used to play','','','18','present perfect and past','C'),
	('3.1','I’m tired. ………… to bed now. Good night.','I go','I’m going','','','','19','future','B'),
	('3.2','………… tomorrow, so we can go out somewhere.','I\'m not working','I don\'t work','I won’t work','','','19.21','future','A'),
	('3.3','That bag looks heavy. ………… you with it.','I\'m helping','I help','I’ll help','','','21','future','C'),
	('3.4','I think the weather ………… be nice later.','will','shall','is going to','','','23,22','future','A,C'),
	('3.5','Anna is on hospital.’ ‘Yes, I know. ………… her this evening.’','I visit',' I’m going to visit','I’ll visit','','','23,20','future','B'),
	('3.6','We’re late. The film ………… by the time we get to the cinema.','will already start','will be already started','will already have started','','','24','future','C'),
	('3.7','Don’t worry ………… late tonight.','if I’m','when I’m','when I’ll be','if I’ll be','','25','future','A'),
	('4.1','The fire spread through the building very quickly, but fortunately everybody ………….','was able to escape','managed to escape','could escape','','','26','modals','A,B'),
	('4.2','I\'m so tired I ………… for a week.','can sleep','could sleep','could have slept','','','27','modals','B'),
	('4.3','The story ………… be sure, but I don’t think it is.','might','can','could','May','','27,29','modals','A,C,D'),
	('4.4','Why did you stay at a hotel when you were in Paris? You ………… with Sarah.','can stay','could stay','could have stayed','','','27','modals','C'),
	('4.5','I’ve lost one of my gloves.’ ‘You ………… it somewhere.’','must drop','must have dropped','must be dropping','must have been dropping','','28','modals','B'),
	('4.6','Why wasn’t Amy at the meeting yesterday?’ ‘She ………… about it.’','might not know','may not know','might not have known','may not have known','','29','modals','C,D'),
	('4.7','What was the problem? Why ………… leave early?','had you to ','did you have to','must you','you had to','','31','modals','B'),
	('4.8','We’ve got plenty of time. We ………… hurry.','don’t need to',' mustn\'t',' needn\'t','','','32','modals','A,C'),
	('4.9','You missed a great party last night. You ………… Why didn’t you?','must have come','should have come','ought to have come','had to come','','33','modals','B,C'),
	('4.10','Jane won the lottery. I ………… a car with the money she’d won.','suggested that she buy','suggested that should buy','suggested her to buy','suggested that she bought','','34','modals','A,B,D'),
	('4.11','You\'re always at home. You ………… out more often.','should go','had better go','had better to go','','','35','modals','A'),
	('4.12','It\'s late. It’s time ………… home.','we go','we must go','we should go','we went','to go','35','modals','D,E'),
	('4.13','………… a little longer, but i really have to go now.','I’d stay','I’ll stay','I can stay','I’d have stayed','','36','modals','A'),
	('5.1','I\'m not going to bed yet. I’m not tired. If I ………… to bed now, I wouldn’t sleep.','go','went','had gone','would go','','38','If and wish','B'),
	('5.2','If I were rich, ………… a lot.','I’ll travel','I can travel','I would travel','I travelled','','39','If and wish','C'),
	('5.3','I wish I ………… have to work tomorrow, but unfortunately I do.','don’t ','didn’t ','wouldn\'t','won’t','','39.41','If and wish','D'),
	('5.4','The view was wonderful. if ………… a camera with me, I would have taken some pictures.','I had','I would have','I would have had','I’s had','','40','If and wish','A'),
	('5.5','the weather is horrible. I wish it ………… raining.','would stop','stopped','stops','will stop','','41','If and wish','A,B'),
	('6.1','We ………… by a loud noise during the night.','woke up','are woken up',' were woken up','were waking up','','42','passive','C'),
	('6.2','A new supermarket is going to ………… next year.','build','be built','be building','building','','43','passive','B'),
	('6.3','There’s somebody walking behind us. I think ………….','we are following','we are being following','we are followed','we are being followed','','43','passive','D'),
	('6.4','Where …………?’ ‘In Chicago.’','were you born','are you born','have you been born','did you born','','44','passive','A'),
	('6.5','There was a fight at the party, but nobody …………','was hurt','got hurt','hurt','','','44','passive','A,B'),
	('6.6','Jane ………… to phone me last night, but she didn’t.','supposed','is supposed','was supposed','','','45','passive','C'),
	('6.7','Where …………? Which hairdresser did you go to?','did you cut your hair','have you cut your hair','did you have cut your hair','did you have your hair cut','','46','passive','D'),
	('7.1','Paul left the room suddenly. he said he ………… to go.','had','has','have','','','48,47','reported speech','A'),
	('7.2','Hi, Joe. I didn’t expect to see you. Sonia said you ………… in hospital.','are','were','was','should be','','48,47','reported speech','B'),
	('7.3','Ann ………… and left.','said goodbye to me','said me goodbye','tole me goodbye','','','48','reported speech','A'),
	('8.1','What time …………?’ “At 8:30.’','starts the film','does start the film','does the film start','','','49','questions and auxiliary verbs','C'),
	('8.2','Do you know where …………?’ ‘No, he didn’t say.’','Tom has gone','has Tom gone','had gone Tom','','','50','questions and auxiliary verbs','A'),
	('8.3','The police officer stopped us and asked us where …………','were we going','are we going','we are going','we were going','','50','questions and auxiliary verbs','D'),
	('8.4','Do you think it will rain?’ ‘…………’','I hope not.','I don\'t hope','I don’t help so','','','51','questions and auxiliary verbs','A'),
	('8.5','You don’t know where Karen is, …………?’ ‘Sorry, I have no idea.’','don\'t you','do you','is she','are you','','52','questions and auxiliary verbs','B'),
	('9.1','You can’t stop me ………… what I want.','doing','do','to do','that I do','','53','-ing and to …','A'),
	('9.2','I must go now. I promise ………… late.','not being','not to be','to not be','I would’y be','','54,36','-ing and to …','B,D'),
	('9.3','Do you want ………… with you or do you want to go alone?','me coming','me to come','that I come','that I will come','','55','-ing and to …','B'),
	('9.4','I know I locked that door. I clearly remember ………… it.','locking','to lock','to have lucked','','','56','-ing and to …','A'),
	('9.5','She tried to be serious, but she couldn’t help …………','laughing','to laugh','that she laughed','laugh','','57','-ing and to …','A'),
	('9.6','Paul lives in Berlin now. He likes ………… there.','living','to live','','','','58','-ing and to …','A'),
	('9.7','It\'s not my favourite job, but I like ………… the kitchen as often as possible.','cleaning','clean','to clean','that I clean','','58','-ing and to …','C'),
	('9.8','I\'m tired. I’s rather ………… out this evening, if you don’t mind.','not going','not to go',' don’t go','not go','','59','-ing and to …','D'),
	('9.9','I’d rather ………… anyone what I said.','you don’t tell','not you tell','you didn’t tell','you wouldn’t tell','','59','-ing and to …','C'),
	('9.10','Are you looking forward ………… on holiday?','going','to go','to going','that you go','','60,62','-ing and to …','C'),
	('9.11','When Lisa came to Britain, she had to get used ………… on the left.','driving','to driving','to drive','','','61','-ing and to …','B'),
	('9.12','I\'m think ………… a house. Do you think that’s a good idea?','to buy',' of to buy','of buying','about buying','','62,66','-ing and to …','C,D'),
	('9.13','I had no ………… a place to stay. in fact it was surprisingly easy.','difficulty to find','difficulty finding','trouble to find','trouble finding','','63','-ing and to …','B,D'),
	('9.14','I phoned the restaurant ………… a table.','for reserve','to reserve','for reserving','for to reserve','','64','-ing and to …','B'),
	('9.15','James doesn’t speak very clearly. …………','It is difficult to understand him.','He is difficult to understand.','He is difficult to understand him.','','','65','-ing and to …','A,B'),
	('9.16','The path was icy, so we walked very carefully. We were afraid …………','of falling',' from falling','to fall',' to falling','','66','-ing and to …','A'),
	('9.17','I didn’t hear you ………… in. you must have been very quiet.','come','to come','came','','','67','-ing and to …','A'),
	('9.18','………… a hotel, we looked for somewhere to have dinner.','Finding','After finding','Having finding','We found','','68','-ing and to …','B,C'),
	('10.1','It wasn’t your fault. It was …………','accident','an accident','some accident','','','69','articles and nouns','B'),
	('10.2','Where are you going to put all your …………?','furniture','furnitures','','','','70','articles and nouns','A'),
	('10.3','Where are you going?’ ‘I’m going to buy …………’','a bread','some bread','a loaf of bread','','','70','articles and nouns','BC'),
	('10.4','Sandra is ………… She works at a large hospital.','nurse','a nurse','the nurse','','','71,72','articles and nouns','B'),
	('10.5','Helen works six days ………… week.','in','for','a','the','','72','articles and nouns','C'),
	('10.6','There are millions of stars in …………','space','a space','the space','','','73','articles and nouns','A'),
	('10.7','Every day ………… begins at 9 and finished at 3.','school','a school','the school','','','74','articles and nouns','A'),
	('10.8','………… a problem in most big cities.','Crime is ','The crime is','The crimes are','','','75','articles and nouns','A'),
	('10.9','When ………… invented?','was telephone','were telephones','were thetelephones','was the telephone','','76','articles and nouns','D'),
	('10.10','Have you been to …………?','Canada or United States','the Canada or the United States','Canada or the United States','the Canada or United States','','77','articles and nouns','C'),
	('10.11','On our first day in Moscow, we visited …………','Kremlin','a Kremlin','The kremlin','','','78','articles and nouns','C'),
	('10.12','What time ………… on TV?','is the news','are the news','is news','is the new','','79,70','articles and nouns','A'),
	('10.13','It took us quite a long time to get here. It was ………… journey.','three hour','a three-hours','a three-hour','','','80','articles and nouns','C'),
	('10.14','This isn’t my book. It’s …………','my sister','my sister’s','from my sister','of my sister','of my sister’s','81','articles and nouns','B'),
	('11.1','What time shall we ………… tomorrow?','meet','meet us','meet ourselves','','','82','Pronouns and determiners','A'),
	('11.2','I\'m going to a wedding on Saturday. ………… is getting married.','A friend of me','A friend of mine','One my friends','','','83','Pronouns and determiners','B'),
	('11.3','They live on a busy road. ………… a lot of noise from the traffic.','It must be','It must have','There must have','There must be','','84','Pronouns and determiners','D'),
	('11.4','He’s lazy. He never does ………… work.','some','any','no','','','85','Pronouns and determiners','B'),
	('11.5','‘What would you like to eat?’ ‘I don’t mind. ………… - whatever you have.’','Something','Anything','Nothing','','','85','Pronouns and determiners','B'),
	('11.6','We couldn’t buy anything because ………… of the shops were open.','all','no-one','none','nothing','','86','Pronouns and determiners','C'),
	('11.7','We went shopping and spent ………… money.','a lot of','much','lots of','many','','87','Pronouns and determiners','A,C'),
	('11.8','………… don’t visit this part of the town.','The most tourists','Most of tourists','Most tourists','','','88','Pronouns and determiners','C'),
	('11.9','I asked two people the way to the station, but ………… of them could help me.','none','either','both','neither','','89','Pronouns and determiners','D'),
	('11.10','………… had a great time at the party.','Everybody','All','All of us','Everybody of us','','90','Pronouns and determiners','A,C'),
	('11.11','The bus service is excellent. There’s bus ………… ten minutes.','each','every','All of us','','','90,91','Pronouns and determiners','B'),
	('12.1','I don\'t like stories ………… have unhappy endings.','that','they','which','who','','92','Relative clauses','A,C'),
	('12.2','I didn\'t believe them at first, but in fact everything ………… was true.','that said','that they said','what that said','','','93','Relative clauses','A,B'),
	('12.3','What’s the name of the man …………?','you borrowed this car','which car you borrowed','whose car you borrowed','his car you borrowed','','94','Relative clauses','C'),
	('12.4','Anna told me about her new job, ………… a lot.','that she’s enjoying','which she’s enjoying','she’s enjoying','she’s enjoying it','','95','Relative clauses','B'),
	('12.5','Sarah couldn’t meet us, ………… was a shame.','that','it','what','which','','96','Relative clauses','D'),
	('12.6','George showed me some pictures ………… by his father.','painting','painted','that were painted','they were painted','','97,92','Relative clauses','B,C'),
	('13.1','Jane doesn’t enjoy her job any more. She’s ………… because every day she does exactly the same thing.','boring','bored','','','','98','Adjectives and adverbs','B'),
	('13.2','Lisa was carrying a ………… bag.','black small plastic','small and black plastic','small black plastic','plastic small black','','99','Adjectives and adverbs','C'),
	('13.3','Maria’s English is excellent. She speaks ………….','perfectly English','English perfectly','perfect English','English perfect','','100','Adjectives and adverbs','B,C'),
	('13.4','He ………… to find a job, but he had no luck.','tried hard','tried hardly','hardly tried','','','101','Adjectives and adverbs','A'),
	('13.5','I haven’t seen her for …………, I’ve forgotten what she looks like.','so long','so long time','a such long time','such a long time','','102','Adjectives and adverbs','A,D'),
	('13.6','We don’t have ………… on holiday right now.','money enough to go','enough money to go','money enough for going','enough money for go','','103','Adjectives and adverbs','B'),
	('13.7','Sarah is doing ok at the moment. She has ………….','a quite good job','quite a good job','a pretty good job','','','104','Adjectives and adverbs','B,C'),
	('13.8','The exam was quite easy-…………I expected.','more easy that','more easy than','easier than','easier as','','105','Adjectives and adverbs','C'),
	('13.9','The more electricity you use, ………….','your bill will be higher','will be higher your bill','that higher your bill will be','higher your bill will be','','106','Adjectives and adverbs','C'),
	('13.10','Patrick is a fast runner. I can’t run as fast as ………….','he','him','he can','','','107','Adjectives and adverbs','B,C'),
	('13.11','The movie was really boring. It’s ………… I’ve ever seen.','most boring movie','the more boring movie','the movie more boring','the most boring movie','','108','Adjectives and adverbs','D'),
	('13.12','Ben likes walking. …………','Every morning he walks to work.','He walks to work every morning.','He walks every morning to work.','He every morning walks to work.','','109','Adjectives and adverbs','A,B'),
	('13.13','Joe never phones me. …………','Always I have to phone him.','I always have to phone him.','I have always to phone him.','I have to phone always him.','','110','Adjectives and adverbs','B'),
	('13.14','Lucy ………… . She left last month.','still doesn’t work here','doesn’t still work here','no more works here','doesn\'t work here any more ','','111','Adjectives and adverbs','D'),
	('13.15','………… she can’t drive, she bought a car.','Even','Even when','Even if ','Even though','','112,113','Adjectives and adverbs','D'),
	('14.1','I couldn\'t sleep ………… very tried.','although I was','despite I was','despite of being','in spite of being','','113','conjunctions and prepositions','A,D'),
	('14.2','You should insure your bike ………… stolen.','in case it will be','if it will be ','in case it is ','if it is','','114','conjunctions and prepositions','C'),
	('14.3','The club is for members only. You ………… you’re a member.','can’t go in if','can go in only if','can’t go in unless','can go in unless','','115','conjunctions and prepositions','B,C'),
	('14.4','We watched TV all evening ………… we didn\'t have anything better to do.','when','as','while','since','','116','conjunctions and prepositions','B,D'),
	('14.5','what\'s that noise?’ ‘It sounds ………… a baby crying.’','as','like','as if','as though','','117,118','conjunctions and prepositions','B'),
	('14.6','They are very kind to me. They treat me ………… their own son.','as I am','as if I would be','as if I am','as if I where','','118','conjunctions and prepositions','C,D'),
	('14.7','I’ll be in Singapore next week. I hope to see some friends of mine ………… there.','while I’ll be','while I’m','during me visit','during I’m','','119','conjunctions and prepositions','B,C'),
	('14.8','Joe is away at the moment. I don\'t know exactly when he’s coming back, but I\'m sure he’ll be back ………… Monday.','by','until','','','','120','conjunctions and prepositions','A'),
	('15.1','Bye! I’ll see you ………….','at Friday morning','on Friday morning','in Friday morning','Friday morning','','121','Prepositions','B,D'),
	('15.2','I\'m going away ………… the end of January.','at','on','in','','','122','Prepositions','A'),
	('15.3','What we were in Italy, we spent a few days ………… Venice.','at','to','in','','','123,125','Prepositions','C'),
	('15.4','Our apartment is ………… the second floor of the building.','at','on','in','to','','124','Prepositions','B'),
	('15.5','I saw Steve ………… a conference on Saturday.','at','on','in','to','','125','Prepositions','A'),
	('15.6','When did they ………… the hotel?','arrive to','arrive at','arrive in ','get to','get in','126','Prepositions','B,D'),
	('15.7','I\'m going ………… holiday next week. I’ll be away for two weeks.','at','on','in','for','','127','Prepositions','B'),
	('15.8','We travelled ………… 6.45 train, which arrived at 8.30.','in the','on the','by the','by','','128','Prepositions','B'),
	('15.9','Have you read anything ………… Ernest Hemingway?’ ‘No, what sort of books did he write?’','of','from','by','','','128','Prepositions','C'),
	('15.10','The accident was my fault, so I had to pay for the damage ………… the other car.','of','for','to','on','at','129','Prepositions','C'),
	('15.11','I like them very much. They have always been very nice ………… me.','of','for','to','with','','130','Prepositions','C'),
	('15.12','I\'m not very good ………… repairing things.','at','for','in','about','','131','Prepositions','A'),
	('15.13','I don’t understand this sentence. Can you …………?','explain to me this word','explain me this word','explain this word to me','','','132','Prepositions','C'),
	('15.14','If you’re worried about the problem, you should do something ………… it.','for','about','against','with','','133','Prepositions','B'),
	('15.15','Who is Tom Hart?’ ‘I have no idea. I’v never heard ‘I don’t know. It depends ………… the traffic.’ him.’','about','from','after','of','','134','Prepositions','D'),
	('15.16','‘What time will be be home?’ ‘I don’t know. It depends ………… the traffic.’','of','for','from','on','','135','Prepositions','D'),
	('15.17','I prefer tea ………… coffee.','to','than','against','from','','136.59','Prepositions','A'),
	('16.1','These shoes are uncomfortable. I\'m going to ………….','take off','take them off','take off them','','','137','Phrasal verbs','B'),
	('16.2','They were playing cards, so I ………….','joined in','came in','got in','broke in','','138','Phrasal verbs','A'),
	('16.3','Nobody believed Paul at first, but he ………… to be right.','worked out','came out','found out','turned out','','139','Phrasal verbs','D'),
	('16.4','We can’t ………… making a decision. We have to decide now.','put away','put over','put off','put out','','140','Phrasal verbs','C'),
	('16.5','Have you finished painting the kitchen?’ ‘Nearly, I’ll ………… tomorrow.','finish it out','finish it over','finish it off','','','141','Phrasal verbs','C'),
	('16.6','You can always rely on Paul. He’ll never ………….','put you up','let you down','take you over','see you off','','142','Phrasal verbs','B'),
	('16.7','Children under 16 ………… half the population of the city.','make up','put up','take up','bring up','','143','Phrasal verbs','A'),
	('16.8','I\'m surprised to hear that Sue and Paul have …………. They seemed very happy together.','broken up','ended up','finished up ','split up','','144','Phrasal verbs','A,D'),
	('16.9','I parked in a no-parking zone, but I ………… it.','came up with','got away with','made off with','got on with','','145','Phrasal verbs','B');

/*!40000 ALTER TABLE `grammarTests` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table grammarTestSubmissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `grammarTestSubmissions`;

CREATE TABLE `grammarTestSubmissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `answers` text,
  `study_units` text,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `completed` int(11) DEFAULT '2' COMMENT '1 - Complated test, 2 - inprogress',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `grammarTestSubmissions` WRITE;
/*!40000 ALTER TABLE `grammarTestSubmissions` DISABLE KEYS */;

INSERT INTO `grammarTestSubmissions` (`id`, `user_id`, `answers`, `study_units`, `timestamp`, `completed`)
VALUES
	(7,1,'{\"0\":{\"no\":\"1.2\",\"correct answer\":\"B\",\"submitted answer\":\"B\"},\"1\":{\"no\":\"2.1\",\"correct answer\":\"B\",\"submitted answer\":\"B\"},\"2\":{\"no\":\"3.4\",\"correct answer\":\"A,C\",\"submitted answer\":\"A\"},\"3\":{\"no\":\"4.12\",\"correct answer\":\"D,E\",\"submitted answer\":\"A,E\"},\"4\":{\"no\":\"5.1\",\"correct answer\":\"B\",\"submitted answer\":\"A\"},\"5\":{\"no\":\"6.1\",\"correct answer\":\"C\",\"submitted answer\":\"C\"},\"6\":{\"no\":\"7.2\",\"correct answer\":\"B\",\"submitted answer\":\"B\"},\"7\":{\"no\":\"8.1\",\"correct answer\":\"C\",\"submitted answer\":\"C\"},\"8\":{\"no\":\"9.6\",\"correct answer\":\"A\",\"submitted answer\":\"A\"},\"9\":{\"no\":\"10.12\",\"correct answer\":\"A\",\"submitted answer\":\"A\"},\"10\":{\"no\":\"11.9\",\"correct answer\":\"D\",\"submitted answer\":\"D\"},\"11\":{\"no\":\"12.3\",\"correct answer\":\"C\",\"submitted answer\":\"A\"},\"12\":{\"no\":\"13.6\",\"correct answer\":\"B\",\"submitted answer\":\"B\"},\"13\":{\"no\":\"14.5\",\"correct answer\":\"B\",\"submitted answer\":\"B,C\"},\"14\":{\"no\":\"15.7\",\"correct answer\":\"B\",\"submitted answer\":\"B\"},\"15\":{\"no\":\"16.9\",\"correct answer\":\"B\",\"submitted answer\":\"\"},\"16\":{\"no\":\"5.1\",\"correct answer\":\"B\",\"submitted answer\":\"\"},\"19\":{\"no\":\"16.4\",\"correct answer\":\"C\",\"submitted answer\":\"A,B\"},\"17\":{\"no\":\"6.1\",\"correct answer\":\"C\",\"submitted answer\":\"\"},\"18\":{\"no\":\"15.11\",\"correct answer\":\"C\",\"submitted answer\":\"\"}}','{\"19\":{\"unit\":\"140\",\"category\":\"Phrasal verbs\"}}','2016-04-20 11:21:49',1),
	(10,1,'{\"0\":{\"no\":\"1.3\",\"correct answer\":\"C\",\"submitted answer\":\"B\"},\"1\":{\"no\":\"2.6\",\"correct answer\":\"B\",\"submitted answer\":\"C\"},\"2\":{\"no\":\"3.6\",\"correct answer\":\"C\",\"submitted answer\":\"A\"},\"3\":{\"no\":\"4.3\",\"correct answer\":\"A,C,D\",\"submitted answer\":\"B\"},\"4\":{\"no\":\"5.2\",\"correct answer\":\"C\",\"submitted answer\":\"D\"},\"5\":{\"no\":\"6.3\",\"correct answer\":\"D\",\"submitted answer\":\"B\"},\"19\":{\"no\":\"16.1\",\"correct answer\":\"B\",\"submitted answer\":\"B\"}}','','2016-04-24 13:54:38',1),
	(11,1,'{\"0\":{\"no\":\"1.1\",\"correct answer\":\"A\",\"submitted answer\":\"B\"},\"1\":{\"no\":\"2.4\",\"correct answer\":\"C\",\"submitted answer\":\"C\"},\"19\":{\"no\":\"16.1\",\"correct answer\":\"B\",\"submitted answer\":\"B\"}}','','2016-04-24 13:58:49',1),
	(12,1,'{\"0\":{\"no\":\"1.3\",\"correct answer\":\"C\",\"submitted answer\":\"A\"},\"1\":{\"no\":\"2.4\",\"correct answer\":\"C\",\"submitted answer\":\"B\"},\"19\":{\"no\":\"16.3\",\"correct answer\":\"D\",\"submitted answer\":\"B\"}}','{\"0\":{\"unit\":\"2,3,11\",\"category\":\"present and past\"},\"1\":{\"unit\":\"9\",\"category\":\"present perfect and past\"},\"19\":{\"unit\":\"139\",\"category\":\"Phrasal verbs\"}}','2016-04-24 14:05:19',1),
	(13,1,'{\"0\":{\"no\":\"1.6\",\"correct answer\":\"A\",\"submitted answer\":\"A\"},\"1\":{\"no\":\"2.6\",\"correct answer\":\"B\",\"submitted answer\":\"A,B\"},\"19\":{\"no\":\"16.1\",\"correct answer\":\"B\",\"submitted answer\":\"A\"}}','{\"1\":{\"unit\":\"11,10\",\"category\":\"present perfect and past\"},\"19\":{\"unit\":\"137\",\"category\":\"Phrasal verbs\"}}','2016-04-24 14:06:19',1),
	(14,1,'{\"0\":{\"no\":\"1.2\",\"correct answer\":\"B\",\"submitted answer\":\"B\"},\"1\":{\"no\":\"2.5\",\"correct answer\":\"A\",\"submitted answer\":\"B\"},\"19\":{\"no\":\"16.4\",\"correct answer\":\"C\",\"submitted answer\":\"C\"}}','','2016-04-24 21:58:03',1),
	(15,1,'{\"0\":{\"no\":\"1.6\",\"correct answer\":\"A\",\"submitted answer\":\"A\"},\"1\":{\"no\":\"2.14\",\"correct answer\":\"C\",\"submitted answer\":\"B\"},\"2\":{\"no\":\"3.1\",\"correct answer\":\"B\",\"submitted answer\":\"B\"},\"3\":{\"no\":\"4.6\",\"correct answer\":\"C,D\",\"submitted answer\":\"B\"},\"4\":{\"no\":\"5.3\",\"correct answer\":\"D\",\"submitted answer\":\"B\"},\"11\":{\"no\":\"12.6\",\"correct answer\":\"B,C\",\"submitted answer\":\"B\"},\"5\":{\"no\":\"6.1\",\"correct answer\":\"C\",\"submitted answer\":\"B\"},\"6\":{\"no\":\"7.1\",\"correct answer\":\"A\",\"submitted answer\":\"B\"},\"7\":{\"no\":\"8.3\",\"correct answer\":\"D\",\"submitted answer\":\"A\"},\"19\":{\"no\":\"16.2\",\"correct answer\":\"A\",\"submitted answer\":\"C\"}}','{\"3\":{\"unit\":\"29\",\"category\":\"modals\"},\"4\":{\"unit\":\"39.41\",\"category\":\"If and wish\"},\"7\":{\"unit\":\"50\",\"category\":\"questions and auxiliary verbs\"},\"19\":{\"unit\":\"138\",\"category\":\"Phrasal verbs\"}}','2016-04-24 21:59:03',1),
	(16,1,'[{\"no\":\"1.5\",\"correct answer\":\"C\",\"submitted answer\":\"B\"},{\"no\":\"2.7\",\"correct answer\":\"A\",\"submitted answer\":\"A,B\"},{\"no\":\"3.3\",\"correct answer\":\"C\",\"submitted answer\":\"C\"},{\"no\":\"4.5\",\"correct answer\":\"B\",\"submitted answer\":\"B,C\"},{\"no\":\"5.3\",\"correct answer\":\"D\",\"submitted answer\":\"B,C\"},{\"no\":\"6.1\",\"correct answer\":\"C\",\"submitted answer\":\"A,C\"},{\"no\":\"7.2\",\"correct answer\":\"B\",\"submitted answer\":\"A,B,C\"},{\"no\":\"8.4\",\"correct answer\":\"A\",\"submitted answer\":\"A,B\"},{\"no\":\"9.15\",\"correct answer\":\"A,B\",\"submitted answer\":\"A\"},{\"no\":\"10.14\",\"correct answer\":\"B\",\"submitted answer\":\"C\"},{\"no\":\"11.11\",\"correct answer\":\"B\",\"submitted answer\":\"B\"},{\"no\":\"12.5\",\"correct answer\":\"D\",\"submitted answer\":\"B\"},{\"no\":\"13.5\",\"correct answer\":\"A,D\",\"submitted answer\":\"A\"},{\"no\":\"14.7\",\"correct answer\":\"B,C\",\"submitted answer\":\"B\"},{\"no\":\"15.2\",\"correct answer\":\"A\",\"submitted answer\":\"A\"},{\"no\":\"16.7\",\"correct answer\":\"A\",\"submitted answer\":\"B\"},{\"no\":\"5.1\",\"correct answer\":\"B\",\"submitted answer\":\"C\"},{\"no\":\"6.3\",\"correct answer\":\"D\",\"submitted answer\":\"B\"},{\"no\":\"15.17\",\"correct answer\":\"A\",\"submitted answer\":\"B\"},{\"no\":\"16.4\",\"correct answer\":\"C\",\"submitted answer\":\"B\"}]','{\"15\":{\"unit\":\"143\",\"category\":\"Phrasal verbs\"},\"16\":{\"unit\":\"38\",\"category\":\"If and wish\"},\"17\":{\"unit\":\"43\",\"category\":\"passive\"},\"18\":{\"unit\":\"136.59\",\"category\":\"Prepositions\"},\"19\":{\"unit\":\"140\",\"category\":\"Phrasal verbs\"}}','2016-04-25 23:19:29',1),
	(17,1,'[{\"no\":\"1.2\",\"correct answer\":\"B\",\"submitted answer\":\"B\"},{\"no\":\"2.1\",\"correct answer\":\"B\",\"submitted answer\":\"B\"},{\"no\":\"3.6\",\"correct answer\":\"C\",\"submitted answer\":\"B\"},{\"no\":\"4.4\",\"correct answer\":\"C\",\"submitted answer\":\"B\"},{\"no\":\"5.1\",\"correct answer\":\"B\",\"submitted answer\":\"A\"},{\"no\":\"6.2\",\"correct answer\":\"B\",\"submitted answer\":\"B\"},{\"no\":\"7.3\",\"correct answer\":\"A\",\"submitted answer\":\"A\"},{\"no\":\"8.2\",\"correct answer\":\"A\",\"submitted answer\":\"A\"},{\"no\":\"9.6\",\"correct answer\":\"A\",\"submitted answer\":\"A\"},{\"no\":\"10.14\",\"correct answer\":\"B\",\"submitted answer\":\"B\"},{\"no\":\"11.3\",\"correct answer\":\"D\",\"submitted answer\":\"A\"}]','{\"2\":{\"unit\":\"24\",\"category\":\"future\"},\"3\":{\"unit\":\"27\",\"category\":\"modals\"},\"4\":{\"unit\":\"38\",\"category\":\"If and wish\"}}','2016-04-28 22:53:24',1),
	(18,1,'[{\"no\":\"1.1\",\"correct answer\":\"A\",\"submitted answer\":\"A\"},{\"no\":\"2.13\",\"correct answer\":\"C\",\"submitted answer\":\"A\"},{\"no\":\"3.6\",\"correct answer\":\"C\",\"submitted answer\":\"C\"},{\"no\":\"4.6\",\"correct answer\":\"C,D\",\"submitted answer\":\"A\"},{\"no\":\"5.5\",\"correct answer\":\"A,B\",\"submitted answer\":\"B\"},{\"no\":\"6.4\",\"correct answer\":\"A\",\"submitted answer\":\"B\"},{\"no\":\"7.2\",\"correct answer\":\"B\",\"submitted answer\":\"B\"},{\"no\":\"8.5\",\"correct answer\":\"B\",\"submitted answer\":\"A\"},{\"no\":\"9.18\",\"correct answer\":\"B,C\",\"submitted answer\":\"B\"},{\"no\":\"10.2\",\"correct answer\":\"A\",\"submitted answer\":\"A\"},{\"no\":\"11.1\",\"correct answer\":\"A\",\"submitted answer\":\"B\"},{\"no\":\"12.3\",\"correct answer\":\"C\",\"submitted answer\":\"B\"},{\"no\":\"13.11\",\"correct answer\":\"D\",\"submitted answer\":\"B\"},{\"no\":\"14.6\",\"correct answer\":\"C,D\",\"submitted answer\":\"A\"},{\"no\":\"15.1\",\"correct answer\":\"B,D\",\"submitted answer\":\"B\"},{\"no\":\"16.4\",\"correct answer\":\"C\",\"submitted answer\":\"B\"},{\"no\":\"5.4\",\"correct answer\":\"A\",\"submitted answer\":\"A\"},{\"no\":\"6.2\",\"correct answer\":\"B\",\"submitted answer\":\"B\"},{\"no\":\"15.17\",\"correct answer\":\"A\",\"submitted answer\":\"B\"},{\"no\":\"16.2\",\"correct answer\":\"A\",\"submitted answer\":\"A\"}]','','2016-04-30 22:39:04',1),
	(19,1,'[{\"no\":\"1.3\",\"correct answer\":\"C\",\"submitted answer\":\"B\"},{\"no\":\"2.13\",\"correct answer\":\"C\",\"submitted answer\":\"A\"},{\"no\":\"3.2\",\"correct answer\":\"A\",\"submitted answer\":\"C\"},{\"no\":\"4.10\",\"correct answer\":\"A,B,D\",\"submitted answer\":\"B\"},{\"no\":\"5.3\",\"correct answer\":\"D\",\"submitted answer\":\"A\"},{\"no\":\"6.5\",\"correct answer\":\"A,B\",\"submitted answer\":\"B\"},{\"no\":\"7.3\",\"correct answer\":\"A\",\"submitted answer\":\"B\"},{\"no\":\"8.1\",\"correct answer\":\"C\",\"submitted answer\":\"A\"},{\"no\":\"9.12\",\"correct answer\":\"C,D\",\"submitted answer\":\"B\"},{\"no\":\"10.13\",\"correct answer\":\"C\",\"submitted answer\":\"B\"},{\"no\":\"11.11\",\"correct answer\":\"B\",\"submitted answer\":\"A\"},{\"no\":\"12.5\",\"correct answer\":\"D\",\"submitted answer\":\"B\"},{\"no\":\"13.7\",\"correct answer\":\"B,C\",\"submitted answer\":\"B\"},{\"no\":\"14.8\",\"correct answer\":\"A\",\"submitted answer\":\"A\"},{\"no\":\"15.12\",\"correct answer\":\"A\",\"submitted answer\":\"B\"},{\"no\":\"16.1\",\"correct answer\":\"B\",\"submitted answer\":\"B\"},{\"no\":\"5.1\",\"correct answer\":\"B\",\"submitted answer\":\"B\"},{\"no\":\"6.4\",\"correct answer\":\"A\",\"submitted answer\":\"A\"},{\"no\":\"15.12\",\"correct answer\":\"A\",\"submitted answer\":\"B\"},{\"no\":\"16.9\",\"correct answer\":\"B\",\"submitted answer\":\"A\"}]','{\"18\":{\"unit\":\"131\",\"category\":\"Prepositions\"},\"19\":{\"unit\":\"145\",\"category\":\"Phrasal verbs\"}}','2016-05-06 17:05:21',1);

/*!40000 ALTER TABLE `grammarTestSubmissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table grammarTestUsers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `grammarTestUsers`;

CREATE TABLE `grammarTestUsers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(11) DEFAULT NULL,
  `last_name` varchar(11) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `grammarTestUsers` WRITE;
/*!40000 ALTER TABLE `grammarTestUsers` DISABLE KEYS */;

INSERT INTO `grammarTestUsers` (`id`, `first_name`, `last_name`, `phone`, `username`, `password`, `timestamp`)
VALUES
	(1,'Mike','Tang','18611809544','MikeT','21232f297a57a5a743894a0e4a801fc3','2016-04-08 22:20:24'),
	(2,'Mike','X','1234567890','MikeX','test','2016-04-08 22:23:08'),
	(3,'Tes','Tes',NULL,NULL,NULL,'2016-04-12 21:30:39'),
	(5,NULL,NULL,'1234',NULL,'21232f297a57a5a743894a0e4a801fc3','2016-04-24 21:29:14'),
	(6,NULL,NULL,'12345',NULL,'21232f297a57a5a743894a0e4a801fc3','2016-04-24 21:30:04'),
	(7,NULL,NULL,'1234532',NULL,'81dc9bdb52d04dc20036dbd8313ed055','2016-04-24 22:03:05'),
	(8,NULL,NULL,'12341234',NULL,'81dc9bdb52d04dc20036dbd8313ed055','2016-04-24 22:14:17'),
	(9,NULL,NULL,'1231231234',NULL,'81dc9bdb52d04dc20036dbd8313ed055','2016-04-24 22:18:48'),
	(10,NULL,NULL,'12312312341',NULL,'81dc9bdb52d04dc20036dbd8313ed055','2016-04-24 22:20:23'),
	(11,NULL,NULL,'123123123411',NULL,'81dc9bdb52d04dc20036dbd8313ed055','2016-04-24 22:22:09');

/*!40000 ALTER TABLE `grammarTestUsers` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
