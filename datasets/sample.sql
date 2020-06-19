BEGIN TRANSACTION;
CREATE TABLE "Account" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Phone" VARCHAR(255), 
	"Website" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"npe01__SYSTEMIsIndividual__c" VARCHAR(255), 
	"npe01__SYSTEM_AccountType__c" VARCHAR(255), 
	"npo02__Formal_Greeting__c" VARCHAR(255), 
	"npo02__HouseholdPhone__c" VARCHAR(255), 
	"npo02__Informal_Greeting__c" VARCHAR(255), 
	"npo02__SYSTEM_CUSTOM_NAMING__c" VARCHAR(255), 
	"npsp__Number_of_Household_Members__c" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	"npe01__One2OneContact__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Account" VALUES('0011100001vbetFAAQ','Resource Organization','One of the greatest resources available to Federation families. They specialize in helping with everything.','555-245-6458','www.resource.com','01211000001JKTWAA4','false','','','','','','','','0031100001fMQLSAA4',NULL);
INSERT INTO "Account" VALUES('0011100001vbetGAAQ','New York Times','The Grey Lady. Newspaper of record for many. The first draft of history.','555-212-5514','www.nytimes.com','01211000001JKTWAA4','false','','','','','','','','0031100001fMQLaAAO',NULL);
CREATE TABLE "Account_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "Account_rt_mapping" VALUES('01211000001JKTVAA4','HH_Account');
INSERT INTO "Account_rt_mapping" VALUES('01211000001JKTWAA4','Organization');
CREATE TABLE "Case" (
	sf_id VARCHAR(255) NOT NULL, 
	"IsEscalated" VARCHAR(255), 
	"Reason" VARCHAR(255), 
	"Origin" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"Subject" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"Priority" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"ContactId" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	"Sailor__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Case" VALUES('5001100000HCmFaAAL','false','Education','Phone','Commander Riker has not completed the required annual sexual harassment training and crew members are complaining of double-standard','New','Sexual Harassment Training Incomplete','','Medium','0011100001vbesgAAA','0031100001fMQLVAA4','','a0q11000005WC72AAG',NULL);
INSERT INTO "Case" VALUES('5001100000HCmFbAAL','false','Financial/Pay','Email','Family members of several female crew members report female crew believe they are being paid less than their male counterparts and asks that someone look into this.','New','Rumors of Pay Inequity','','Medium','0011100001vbeshAAA','0031100001fMQLWAA4','','a0q11000005WC76AAG',NULL);
INSERT INTO "Case" VALUES('5001100000HCmFcAAL','false','Emergency/Crisis','Phone','Liana, sister of Ship''s Counselor Deanna Troi, called the ombudsman line. She is an empath and has been struggling recently with all the anxiety and depression that she experiences around her. She needs help accessing some mental health services. Normally her sister would give her counseling. But the Enterprise is too far away for real-time communication.','Working','Struggling with Depression and Anxiety','','High','0011100001vbeshAAA','0031100001fMQLWAA4','','a0q11000005WC76AAG',NULL);
INSERT INTO "Case" VALUES('5001100000HCmFdAAL','false','Medical','Phone','Jordi LaForge''s replacement eyepiece is available for delivery. Please provide the correct mailing address.','New','New Eyepiece Ready for Delivery','','Medium','0011100001vbesiAAA','0031100001fMQLXAA4','','a0q11000005WC6sAAG',NULL);
INSERT INTO "Case" VALUES('5001100000HCmFeAAL','false','Education','Email','Junior Engineer Wesley Crusher has applied for Apprenticeship credit for his work on the USS Enterprise. In order to complete this request, we need to assess the educational merit of his training program no later than August 1.','New','Educational Assessment Required for Apprenticeship Program','','Medium','0011100001vbesjAAA','0031100001fMQLYAA4','','a0q11000005WC6yAAG',NULL);
INSERT INTO "Case" VALUES('5001100000HCmFgAAL','false','Military Records','Web','Reporter writing an article on diversity and inclusion on USS Enterprise has requested access to Lieutenant Worf''s service records.','New','Review of Service Records','','Medium','0011100001vbetGAAQ','0031100001fMQLaAAO','','a0q11000005WC75AAG',NULL);
INSERT INTO "Case" VALUES('5001100000HCmFhAAL','false','Emergency/Crisis','Email','Tasha hasn''t been in contact with her family for weeks which is unusual. She participated in a team operation to rescue a team member, but hasn''t checked in since. We heard something weird happened but we don''t have all the facts.','New','Haven''t heard from Tasha Yar in weeks','','Medium','0011100001vbeszAAA','0031100001fMQLoAAO','','a0q11000005WC74AAG',NULL);
INSERT INTO "Case" VALUES('5001100000HCmFiAAL','false','Emergency/Crisis','Phone','Dr. Beverly Crusher''s sister called. On a recent call home, Dr. Crusher admitted that she was still grieving her husband, years after his loss and was suffering symptoms of depression. Family are concerned and request someone check in on her.','New','Grief Counseling Required','','Medium','0011100001vbet0AAA','0031100001fMQLpAAO','','a0q11000005WC77AAG',NULL);
INSERT INTO "Case" VALUES('5001100000HCmFjAAL','false','Employment','Web','I have beenlaid off from my job, which is closed due to a global pandemic. I found the resource base but did not find information specific enough to answer my questions. Please get in touch right away. I need to contact Jordi and let him know what is going on, also need to get access to food. Our pantry is bare.','Working','Struggling with Loss of Income Due to Layoffs','','High','0011100001vbesmAAA','0031100001fMQLbAAO','','a0q11000005WC6sAAG',NULL);
INSERT INTO "Case" VALUES('5001100000HCmFkAAL','false','Medical','Social Media','David posted on Facebook that he was worried about his dad, after hearing that there had been a spatial anomaly detected in the Delta Quadrant that could cause illness. He found information in the ombudsman help center that answered his questions and did not need to contact us directly.','Closed','David, worried about spouse, was looking for information','','Low','0011100001vbesqAAA','0031100001fMQLfAAO','','a0q11000005WC6xAAG',NULL);
INSERT INTO "Case" VALUES('5001100000HCmFlAAL','false','Medical','Phone','Olive Oil called the ombudsman line because she was under the impression that canned spinach is in short supply.','Closed','Heard PopEye wasn''t getting enough spinach.','','Medium','0011100001vbesvAAA','0031100001fMQLkAAO','','a0q11000005WC70AAG',NULL);
INSERT INTO "Case" VALUES('5001100000HCmFmAAL','false','Sexual Assault Prevention','Social Media','Olive Oil posted on Facebook that Bluto keeps asking her for dates and threatening her precious PopEye.','Escalated','Upset that Bluto is bulllying PopEye and hitting on her','','Mandatory Reportable','0011100001vbesvAAA','0031100001fMQLkAAO','','a0q11000005WC70AAG',NULL);
INSERT INTO "Case" VALUES('5001100000HCmFnAAL','false','Other Info & Referral','Social Media','Wesley Crusher''s grandmother posted on Facebook that "the ship has wifi now and if you haven''t heard from your sailor yet then you should contact the Ombudsman immediately."','Closed','Overload of Emails due to Facebook Post','','Medium','0011100001vbesrAAA','0031100001fMQLgAAO','','a0q11000005WC6yAAG',NULL);
INSERT INTO "Case" VALUES('5001100000HCmFfAAL','false','Social Media','Social Media','Captain Jean-Luc Picard has a popular blog, depicting day to day operations onboard the Enterprise. Requests contribution from Ombudsmen, describing their role, typical requests that come in, etc. This is part of a valuable PR effort.','New','Requests Ombudsmen Contribute to Blog','','Medium','0011100001vbeskAAA','0031100001fMQLZAA4','','a0q11000005WC73AAG',NULL);
CREATE TABLE "CaseComment" (
	sf_id VARCHAR(255) NOT NULL, 
	"CommentBody" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "CaseComment" VALUES('00a11000003UVChAAO','Must respond no later than June 1 to allow for shipping time before deployment','5001100000HCmFdAAL',NULL);
INSERT INTO "CaseComment" VALUES('00a11000003UVCiAAO','Miles O''Brien works with the Ombudsmen on a regular basis regarding apprenticeship/internship participants. He understands and appreciates our role. Great partner!','5001100000HCmFeAAL',NULL);
INSERT INTO "CaseComment" VALUES('00a11000003UVCjAAO','Please confirm legality of this request from a news source before proceeding','5001100000HCmFgAAL',NULL);
INSERT INTO "CaseComment" VALUES('00a11000003UVCkAAO','Related to Vagra II Rescue Mission. This issue needs to be handled with the highest sensitivity. Please consult with Counselor Deanna Troi before communicating with family.','5001100000HCmFhAAL',NULL);
INSERT INTO "CaseComment" VALUES('00a11000003UVClAAO','Contact Deanna Troi for counseling services','5001100000HCmFiAAL',NULL);
CREATE TABLE "Contact" (
	sf_id VARCHAR(255) NOT NULL, 
	"FirstName" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"DoNotCall" VARCHAR(255), 
	"Email" VARCHAR(255), 
	"HasOptedOutOfEmail" VARCHAR(255), 
	"HasOptedOutOfFax" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"Relationship_to_Sailor__c" VARCHAR(255), 
	"npe01__AlternateEmail__c" VARCHAR(255), 
	"npe01__HomeEmail__c" VARCHAR(255), 
	"npe01__PreferredPhone__c" VARCHAR(255), 
	"npe01__Preferred_Email__c" VARCHAR(255), 
	"npe01__Primary_Address_Type__c" VARCHAR(255), 
	"npe01__Private__c" VARCHAR(255), 
	"npe01__Secondary_Address_Type__c" VARCHAR(255), 
	"npe01__SystemAccountProcessor__c" VARCHAR(255), 
	"npe01__WorkEmail__c" VARCHAR(255), 
	"npe01__WorkPhone__c" VARCHAR(255), 
	"npsp__Deceased__c" VARCHAR(255), 
	"npsp__Do_Not_Contact__c" VARCHAR(255), 
	"npsp__Exclude_from_Household_Formal_Greeting__c" VARCHAR(255), 
	"npsp__Exclude_from_Household_Informal_Greeting__c" VARCHAR(255), 
	"npsp__Exclude_from_Household_Name__c" VARCHAR(255), 
	"npsp__is_Address_Override__c" VARCHAR(255), 
	"Phone" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"ReportsToId" VARCHAR(255), 
	"Sailor__c" VARCHAR(255), 
	"npsp__Primary_Affiliation__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Contact" VALUES('0031100001fMQLiAAO','Count','Chocula','false','mkolodner+familycontact4@nuromo.com','false','false','01211000001JKU3AAO','Peer','','mkolodner+familycontact4@nuromo.com','Home','Personal','Home','false','','','','','false','false','false','false','false','false','2155551212','0011100001vbestAAA','','a0q11000005WC6zAAG','',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLjAAO','Bluto','Bully','false','mkolodner+familycontact5@nuromo.com','false','false','01211000001JKU3AAO','Frenemy','','mkolodner+familycontact5@nuromo.com','Home','Personal','Home','false','','','','','false','false','false','false','false','false','2155551212','0011100001vbesuAAA','','a0q11000005WC70AAG','',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLkAAO','Olive','Oil','false','mkolodner+familycontact6@nuromo.com','false','false','01211000001JKU3AAO','Significant Other','','mkolodner+familycontact6@nuromo.com','Home','Personal','Home','false','','','','','false','false','false','false','false','false','2155551212','0011100001vbesvAAA','','a0q11000005WC70AAG','',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLlAAO','Popeye''s','Mom','false','mkolodner+familycontact7@nuromo.com','false','false','01211000001JKU3AAO','Mother','','mkolodner+familycontact7@nuromo.com','Home','Personal','Home','false','','','','','false','false','false','false','false','false','2155551212','0011100001vbeswAAA','','a0q11000005WC70AAG','',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLmAAO','Peleg','the First Mate','false','mkolodner+familycontact8@nuromo.com','false','false','01211000001JKU3AAO','Mate','','mkolodner+familycontact8@nuromo.com','Home','Personal','Home','false','','','','','false','false','false','false','false','false','2155551212','0011100001vbesxAAA','','a0q11000005WC71AAG','',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLnAAO','Moby','Dick','false','mkolodner+familycontact9@nuromo.com','false','false','01211000001JKU3AAO','Frenemy','','mkolodner+familycontact9@nuromo.com','Home','Personal','Home','false','','','','','false','false','false','false','false','false','2155551212','0011100001vbesyAAA','','a0q11000005WC71AAG','',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLoAAO','Tanya','Yar','false','tanyayar@nuromo.com','false','false','01211000001JKU3AAO','Sister','','tanyayar@nuromo.com','Home','Personal','Home','false','','','','','false','false','false','false','false','false','2155551212','0011100001vbeszAAA','','a0q11000005WC74AAG','',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLpAAO','Betsy','Crusher','false','mkolodner+crushingit@nuromo.com','false','false','01211000001JKU3AAO','Sister','','mkolodner+crushingit@nuromo.com','Home','Personal','Home','false','','','','','false','false','false','false','false','false','2155551212','0011100001vbet0AAA','','a0q11000005WC77AAG','',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLSAA4','Thomas','Helper','false','help@resource.com','false','false','01211000001JKU8AAO','','','','Work','Work','','false','','','help@resource.com','555-333-5654','false','false','false','false','false','false','555-333-5654','0011100001vbesdAAA','','','0011100001vbetFAAQ',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLTAA4','Octavia','Marcus','false','mkolodner+familycontact1@nuromo.com','false','false','01211000001JKU3AAO','Ex Wife','','mkolodner+familycontact1@nuromo.com','Home','Personal','Home','false','','','','','false','false','false','false','false','false','2155551212','0011100001vbeseAAA','','','',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLUAA4','Michael','Kolodner','false','michael@kolodner.com','false','false','01211000001JKU8AAO','','','michael@kolodner.com','Home','Personal','','false','','','michael@kolodner.com','','false','false','false','false','false','false','5555551212','0011100001vbesfAAA','','','',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLVAA4','Samantha','Jones','false','samanthajones@nuromo.com','false','false','01211000001JKU8AAO','','','samanthajones@nuromo.com','Home','Personal','Home','false','','','','','false','false','false','false','false','false','5555551212','0011100001vbesgAAA','','','',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLWAA4','Liana','Troi','false','empathsunderstand@nuromo.com','false','false','01211000001JKU8AAO','','','empathsunderstand@nuromo.com','Home','Personal','','false','','','','','false','false','false','false','false','false','5555551212','0011100001vbeshAAA','','','',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLXAA4','Bob','Smith','false','alleyesondeck@nuromo.com','false','false','01211000001JKU8AAO','','','alleyesondeck@nuromo.com','Home','Personal','','false','','','','','false','false','false','false','false','false','5555551212','0011100001vbesiAAA','','','',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLYAA4','Miles','O''Brien','false','getthereinonepiece@nuromo.com','false','false','01211000001JKU8AAO','','','getthereinonepiece@nuromo.com','Home','Personal','','false','','','','','false','false','false','false','false','false','5555551212','0011100001vbesjAAA','','','',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLZAA4','Earl','Gray','false','earl@kolodner.com','false','false','01211000001JKU8AAO','','','earl@kolodner.com','Home','Personal','','false','','','','','false','false','false','false','false','false','5555551212','0011100001vbeskAAA','','','',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLaAAO','Scott','Blumenthal','false','scott@kolodner.com','false','false','01211000001JKU8AAO','','','scott@kolodner.com','Home','Personal','','false','','','','','false','false','false','false','false','false','5555551212','0011100001vbeslAAA','','','0011100001vbetGAAQ',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLbAAO','Georgina','LaForge','false','mkolodner+familycontact10@nuromo.com','false','false','01211000001JKU3AAO','Wife','','mkolodner+familycontact10@nuromo.com','Home','Personal','Home','false','','','','','false','false','false','false','false','false','2155551212','0011100001vbesmAAA','','a0q11000005WC6sAAG','',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLcAAO','Momma','Beard','false','','false','false','01211000001JKU3AAO','Mom','','','Home','Personal','Home','false','','','','','false','false','false','false','false','false','2155551212','0011100001vbesnAAA','','a0q11000005WC6tAAG','',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLdAAO','Penelope','Odysseus','false','mkolodner+penelope@nuromo.com','false','false','01211000001JKU3AAO','Wife','','mkolodner+penelope@nuromo.com','Home','Personal','Home','false','','','','','false','false','false','false','false','false','2155551212','0011100001vbesoAAA','','a0q11000005WC6uAAG','',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLeAAO','Jake','Sisko','false','','false','false','01211000001JKU3AAO','Son','','','Home','Personal','Home','false','','','','','false','false','false','false','false','false','2155551212','0011100001vbespAAA','','a0q11000005WC6vAAG','',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLfAAO','David','Marcus','false','mkolodner+familycontact2@nuromo.com','false','false','01211000001JKU3AAO','Son (estranged)','','mkolodner+familycontact2@nuromo.com','Home','Personal','Home','false','','','','','false','false','false','false','false','false','2155551212','0011100001vbesqAAA','','a0q11000005WC6xAAG','',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLgAAO','Hester','McNaughton','false','','false','false','01211000001JKU3AAO','Grandmother','','','Home','Personal','','false','','','','','false','false','false','false','false','false','','0011100001vbesrAAA','','a0q11000005WC6yAAG','',NULL);
INSERT INTO "Contact" VALUES('0031100001fMQLhAAO','Boo','Berry','false','mkolodner+familycontact3@nuromo.com','false','false','01211000001JKU3AAO','Best Friend','','mkolodner+familycontact3@nuromo.com','Home','Personal','Home','false','','','','','false','false','false','false','false','false','2155551212','0011100001vbessAAA','','a0q11000005WC6zAAG','',NULL);
CREATE TABLE "Contact_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "Contact_rt_mapping" VALUES('01211000001JKU3AAO','Family_Member');
INSERT INTO "Contact_rt_mapping" VALUES('01211000001JKU8AAO','Resource_Contact');
CREATE TABLE "Sailor__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"Command_Name__c" VARCHAR(255), 
	"Department__c" VARCHAR(255), 
	"First_Name__c" VARCHAR(255), 
	"Last_4_of_SSN__c" VARCHAR(255), 
	"Last_Name__c" VARCHAR(255), 
	"PRD__c" VARCHAR(255), 
	"Rank_Rate__c" VARCHAR(255), 
	"Ship_Email__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Lookup_to_Contact__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Sailor__c" VALUES('a0q11000005WC6rAAG','Name Unknown (DO NOT EDIT)','NCC-1701','','Name','','Unknown (DO NOT EDIT)','','Placeholder Record','','Current','',NULL);
INSERT INTO "Sailor__c" VALUES('a0q11000005WC6sAAG','Jordi LaForge','NCC-1701','Engineering','Jordi','2321','LaForge','','Science Officer','mkolodner+jordi@nuromo.com','Current','',NULL);
INSERT INTO "Sailor__c" VALUES('a0q11000005WC6tAAG','John Beard','NCC-1701','Air','John','','Beard','','AN','john.beard@ncc1701.navy.mil','Current','',NULL);
INSERT INTO "Sailor__c" VALUES('a0q11000005WC6uAAG','Mr. Odysseus','NCC-1701','Deck','Mr.','2121','Odysseus','','Lieutenent','mkolodner+odysseus@nuromo.com','Current','',NULL);
INSERT INTO "Sailor__c" VALUES('a0q11000005WC6vAAG','Benjamin Sisko','NCC-1701','Admin','Benjamin','','Sisko','','CMDR','benjamin.sisko@ncc1701.navy.mil','Current','',NULL);
INSERT INTO "Sailor__c" VALUES('a0q11000005WC6wAAG','Sinbad the Sailor','NCC-1701','Air','Sinbad','8989','the Sailor','','Warrant Ofcr','mkolodner+sinbad@nuromo.com','Current','',NULL);
INSERT INTO "Sailor__c" VALUES('a0q11000005WC6xAAG','James T. Kirk','NCC-1701','Air','James T.','6565','Kirk','','Admiral','mkolodner+kirk@nuromo.com','Current','',NULL);
INSERT INTO "Sailor__c" VALUES('a0q11000005WC6yAAG','Wesley Crusher','NCC-1701','Engineering','Wesley','','Crusher','2020-05-08','Ensign','justakidinspace@ncc1701.navy.mil','Current','',NULL);
INSERT INTO "Sailor__c" VALUES('a0q11000005WC6zAAG','Captain Crunch','NCC-1701','Operations','Captain','9898','Crunch','','Ensign','mkolodner+crunch@nuromo.com','Current','',NULL);
INSERT INTO "Sailor__c" VALUES('a0q11000005WC70AAG','Popeye the Sailor Man','NCC-1701','Public Affairs','Popeye','9999','the Sailor Man','','Private','mkolodner+popeye@nuromo.com','Current','',NULL);
INSERT INTO "Sailor__c" VALUES('a0q11000005WC71AAG','Captain Ahab','NCC-1701','Weapons','Captain','8888','Ahab','','Captain','mkolodner+ahab@nuromo.com','Current','',NULL);
INSERT INTO "Sailor__c" VALUES('a0q11000005WC72AAG','William Riker','NCC-1701','Combat Systems','William','','Riker','2020-05-08','First Officer','rikerthestriker@ncc1701.navy.mil','Current','',NULL);
INSERT INTO "Sailor__c" VALUES('a0q11000005WC73AAG','Jean-Luc Picard','NCC-1701','Admin','Jean-Luc','','Picard','2020-05-08','Captain','elcapitan@ncc1701.navy.mil','Current','',NULL);
INSERT INTO "Sailor__c" VALUES('a0q11000005WC74AAG','Tasha Yar','NCC-1701','Safety','Tasha','','Yar','2020-05-08','Chief Security Officer','wherestashanow@ncc1701.navy.mil','Current','',NULL);
INSERT INTO "Sailor__c" VALUES('a0q11000005WC75AAG','Lieutenant Worf','NCC-1701','Combat Systems','Lieutenant','','Worf','2020-05-08','Chief Security Officer','klingonsrule@ncc1701.navy.mil','Current','',NULL);
INSERT INTO "Sailor__c" VALUES('a0q11000005WC76AAG','Deanna Troi','NCC-1701','Medical','Deanna','','Troi','2020-05-08','Counselor','empathsunderstand@ncc1701.navy.mil','Current','',NULL);
INSERT INTO "Sailor__c" VALUES('a0q11000005WC77AAG','Beverly Crusher','NCC-1701','Medical','Beverly','','Crusher','2020-05-08','Doctor','itsdoctorcrushertoyou@ncc1701.navy.mil','Current','',NULL);
INSERT INTO "Sailor__c" VALUES('a0q11000005WC78AAG','Captain Hook','NCC-1701','Admin','Captain','9998','Hook','','Admiral','mkolodner+hook@nuromo.com','Current','',NULL);
CREATE TABLE "Task" (
	sf_id VARCHAR(255) NOT NULL, 
	"ActivityDate" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"Subject" VARCHAR(255), 
	"WhoId" VARCHAR(255), 
	"WhatId" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Task" VALUES('00T1100000OSjsCEAT','2020-05-06','Description/Comments field','Not Started','Subject of the Task','','',NULL);
INSERT INTO "Task" VALUES('00T1100000OSjsDEAT','2020-05-11','Additional To: empathsunderstand@nuromo.com
CC: 
BCC: 34921581+mkolodner@users.noreply.github.com
Attachment: 

Subject: Struggling with Depression and Anxiety    [ ref:_00D213aDj._500215olSP:ref ]
Body:
Liana,
Wanted to reach out to let you know that I''m still waiting for a response from Federation Fleet Services. I''ll get back to you as soon as I have more information.

ref:_00D213aDj._500215olSP:ref','Completed','Email: Struggling with Depression and Anxiety    [ ref:_00D213aDj._500215olSP:ref ]','','',NULL);
INSERT INTO "Task" VALUES('00T1100000OSjsEEAT','2020-05-15','','Not Started','Determine Ombudsman''s role','','5001100000HCmFfAAL',NULL);
INSERT INTO "Task" VALUES('00T1100000OSjsFEAT','2020-06-10','Additional To: michael@kolodner.com
CC: 
BCC: 
Attachment: 

Subject: Ombudsman Update Re: Ongoing Matter    [ ref:_00D0RFB9K._5000R6nBw2:ref ]
Body:
Dear [INSERT RECIPIENT''S TITLE],

I''m touching base to share the below information regarding a matter that involves a member of your Command:

Case Priority: Medium
Individual Name: Scott Blumenthal
Sailor Name: Lieutenant Worf
Case Reason: Military Records
Case Description: Reporter writing an article on diversity and inclusion on USS Enterprise has requested access to Lieutenant Worf''s service records.

I''m happy to provide more details at your request.

Very respectfully,

User User

_____________________________________________________________________
Powered by Salesforce
http://cs94.salesforce.com/

ref:_00D0RFB9K._5000R6nBw2:ref','Completed','Email: Ombudsman Update Re: Ongoing Matter    [ ref:_00D0RFB9K._5000R6nBw2:ref ]','','5001100000HCmFgAAL',NULL);
INSERT INTO "Task" VALUES('00T1100000OSjsGEAT','2020-05-10','Additional To: 
CC: 
BCC: 34921581+mkolodner@users.noreply.github.com
Attachment: 

Subject: Heard PopEye wasn''t getting enough spinach.    [ ref:_00D213aDj._500215oiG0:ref ]
Body:
We''re here for you, Olive.

ref:_00D213aDj._500215oiG0:ref','Completed','Email: Heard PopEye wasn''t getting enough spinach.    [ ref:_00D213aDj._500215oiG0:ref ]','','5001100000HCmFlAAL',NULL);
INSERT INTO "Task" VALUES('00T1100000OSjsHEAT','2020-05-15','','In Progress','Contact Deanna Troi re: Tasha Yar','','5001100000HCmFhAAL',NULL);
INSERT INTO "Task" VALUES('00T1100000OSjsIEAT','2020-05-11','Additional To: 
CC: 
BCC: 34921581+mkolodner@users.noreply.github.com
Attachment: 

Subject: Overload of Emails due to Facebook Post    [ ref:_00D213aDj._500215olSo:ref ]
Body:
Ms McNaughton,
Please note that during this time of crisis the volunteer ombudsmen do not have the capacity to reach out to individual sailors. 

ref:_00D213aDj._500215olSo:ref','Completed','Email: Overload of Emails due to Facebook Post    [ ref:_00D213aDj._500215olSo:ref ]','','5001100000HCmFnAAL',NULL);
INSERT INTO "Task" VALUES('00T1100000OSjsJEAT','2020-05-15','','Not Started','Contact Deanna Troi re: Crusher','0031100001fMQLWAA4','5001100000HCmFiAAL',NULL);
INSERT INTO "Task" VALUES('00T1100000OSjsKEAT','2020-05-30','','Not Started','Provide description of Ombudsman daily operations','0031100001fMQLZAA4','5001100000HCmFfAAL',NULL);
INSERT INTO "Task" VALUES('00T1100000OSjsLEAT','2020-05-08','','Completed','Provide mailing address','0031100001fMQLaAAO','5001100000HCmFgAAL',NULL);
INSERT INTO "Task" VALUES('00T1100000OSjsMEAT','2020-05-11','','Waiting on someone else','Reached out to Federation for Resources','0031100001fMQLgAAO','5001100000HCmFnAAL',NULL);
INSERT INTO "Task" VALUES('00T1100000OSjsNEAT','2020-05-11','Additional To: mkolodner+familycontact10@nuromo.com
CC: 
BCC: 34921581+mkolodner@users.noreply.github.com
Attachment: 

Subject: Struggling with Loss of Income Due to Layoffs    [ ref:_00D213aDj._500215olRC:ref ]
Body:
Georgina,
Hang in there. I understand that your situation is very difficult. Here is a list of local food banks that should be able to give you some immediate help. 
 - Brittany

ref:_00D213aDj._500215olRC:ref','Completed','Email: Struggling with Loss of Income Due to Layoffs    [ ref:_00D213aDj._500215olRC:ref ]','0031100001fMQLbAAO','5001100000HCmFjAAL',NULL);
COMMIT;
