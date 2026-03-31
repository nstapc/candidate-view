/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.14-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: 2012_election
-- ------------------------------------------------------
-- Server version	10.11.14-MariaDB-0+deb12u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Republican Primary Candidates`
--

DROP TABLE IF EXISTS `Republican Primary Candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Republican Primary Candidates` (
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `birthplace_and_date` varchar(100) DEFAULT NULL,
  `home_state` varchar(50) DEFAULT NULL,
  `education` varchar(1000) DEFAULT NULL,
  `political_background` varchar(1000) DEFAULT NULL,
  `religious_views` varchar(1000) DEFAULT NULL,
  `key_states` varchar(50) DEFAULT NULL,
  `main_endorsement` varchar(1000) DEFAULT NULL,
  `main_supporters` varchar(1000) DEFAULT NULL,
  `taxes` varchar(1000) DEFAULT NULL,
  `social_security` varchar(1000) DEFAULT NULL,
  `military_defense` varchar(1000) DEFAULT NULL,
  `health_care` varchar(1000) DEFAULT NULL,
  `job_creation_economy` varchar(1000) DEFAULT NULL,
  `environment` varchar(1000) DEFAULT NULL,
  `energy` varchar(1000) DEFAULT NULL,
  `immigration` varchar(1000) DEFAULT NULL,
  `gun_control` varchar(1000) DEFAULT NULL,
  `marriage` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Republican Primary Candidates`
--

LOCK TABLES `Republican Primary Candidates` WRITE;
/*!40000 ALTER TABLE `Republican Primary Candidates` DISABLE KEYS */;
INSERT INTO `Republican Primary Candidates` VALUES
('Rick Santorum','<img src=\"pics/Santorum.jpg\" width=\"100%\">','',NULL,'Pennsylvania State University BA 1980<br />  University of Pittsburg MBA 1981<br />  Dickinson School of Law JD 1986','Member of the U.S. House of Representatives from Pennsylvania\'s 18th district from 1991 - 1995. United States Senator from Pennsylvania from 1995 - 2007. ','','','','','Lower number of income tax brackets from six to two -- 10% and 26%. He would lower corporate income tax to 17.5%. He would eliminate both the Alternative Minimum Tax and the estate tax. And he would reduce the capital gains rate from 15% to 12%. <a href=\"http://money.cnn.com/2012/01/05/news/economy/santorum_taxes/index.htm\" target=\"_blank\">[source]</a>','','Supports an aggressive foreign policy approach, where American troops go abroad to stop Islamic radicals from coming to the US. Believes the US can\'t sit back and defend homeland; needs to take an active role eliminating the threat overseas.<a href=\" http://www.wmur.com/r/30057471/detail.html\" target=\"_blank\">[source]</a>','Federal government should give states the flexibility to design their own programs. Overall problem is cost, not getting people insured Government should take an active role in promoting the stability of families, which are a better environment for healthy living. <a href=\"http://www.wmur.com/r/30057471/detail.html\" target=\"_blank\">[source]</a>','Tax reform is key, especially for manufacturers, which he advocates a 0% tax rate to bring back those jobs. A lower corporate tax code will also encourage job growth. Eliminate many regulations which hamper job growth.  <a href=\"http://www.wmur.com/r/30057471/detail.html\" target=\"_blank\">[source]</a>','Says it\'s absurd to think people are changing the climate; says climate activists are just trying to get government more involved in your lives.  <a href=\"http://www.wmur.com/r/30057471/detail.html\" target=\"_blank\">[source]</a>','Drill more in the US to increase supply. Against subsidies for the most part. Supports using America\'s abundance of natural gas; skeptical on how much renewable energy is really going to make a difference right now. <a href=\"http://www.wmur.com/r/30057471/detail.html\" target=\"_blank\">[source]</a> ','Supports a border fence; need to secure border before anything else can be reformed. Enforce existing laws. Opposes amnesty for illegals already in the US. <a href=\"http://www.wmur.com/r/30057471/detail.html\" target=\"_blank\">[source]</a>','An opponent of most gun control, Santorum argued against bans on certain firearms and ammunition while in Washington. Supported loosening license and background checks at gun shows.  <a href=\">http://www.wmur.com/r/30057471/detail.html\" target=\"_blank\">[source]</a>','Supports traditional marriage. <a href=\"http://www.wmur.com/r/30057471/detail.html\" target=\"_blank\">[source]</a>'),
('Mitt Romney','<img src=\"pics/Romney.jpg\" width=\"100%\">','Born on March 12th, 1947 in Detroit, Michigan (64 years old)','Massachusetts ','Brigham Young University BA 1971 <br /> Harvard University MBA/JD 1975','70th Governor of Massachusetts from 2003-2007.','The Church of Jesus Christ of Latter-day Saints (Mormon)','Michigan','Gov. Chris Christie (NJ)','Members of the Mormon Church, Longtime Republicans','Continue Bush-era tax cuts. Cut corporate tax rate to 25%. Eliminate capital gains tax and estate tax. Create a \"flatter\" income tax system. <a href=\"http://www.cnn.com/2011/10/25/politics/tax-plans/index.html\">[source]</a>','Suggested raising the eligibility age, reducing benefits for high-income retirees, and raising payroll tax revenue. <a href=\"http://mittromney.com/blogs/mitts-view/2011/11/romney-presents-plan-turn-around-federal-government\">[source]</a>','He has been against cuts to military and defense spending. He promised to increase spending on shipbuilding and missile defense. ','Repeal Obama\'s Affordable Care Act, replacing it with state waivers (even though Romney\'s Massachusetts healthcare program strongly resembles Obama\'s ACA).<a href=\"http://washingtonexaminer.com/opinion/columnists/2011/11/repealing-obamacare-will-be-tougher-romney-claims/1961951 [10] He proposed a voucher program to partially privatize Medicare.<a href=\"[11] http://online.wsj.com/article/SB10001424052970203804204577018092798952590.html\">[source] </a>','Romney\'s 59-point explains his job creation plan. Coupled with his tax overhaul that scales back taxes, he also plans to scale back regulations, stand against some union interests, put sanctions on China, and expand domestic energy production. He believes it will create 11.5 million new jobs over four years. <a href=\"http://news.yahoo.com/romneys-job-creation-plan-cut-taxes-punish-china-214701470.html\">[soruce]</a>','Is unsure if climate change is happening. As early as 2010, he believed that climate change was occurring. <a href=\"http://www.cbsnews.com/8301-503544_162-20127273-503544/mitt-romneys-shifting-views-on-climate-change/\" target=\"_blank\">[source]</a>','','Pushes for new regulations on businesses. Through this he hopes that it leads to illegal immigrants voluntarily returning to their native country. <a href=\"http://abcnews.go.com/blogs/politics/2011/12/romney-immigration-plan-new-rules-for-businesses/\" target=\"_blank\">[source]</a>','Believes that gun ownership is protected under the 2nd amendment. Formerly protested the legality of assault weapons, but has changed his stance. ','Supports traditional marriage. When he ran for a seat in the senate in 1994, he was seen as fighting for gay rights.  <a href=\"http://www.nytimes.com/2007/09/08/us/politics/08romney.html\" target=\"_blank\">[source]</a>'),
('Ron Paul','<img src=\"pics/Paul.jpg\" width=\"100%\">','Born on August 20th, 1935 in Pittsburg Pennsylvania (76 years old)','Texas','Gettysburg College BS 1957<br />  Duke University School of Medicine DoM 1961','Member of the US House of Representatives from Texas\' 22nd District from 1976-1977, 1979-1985 and Member of the US House of Representatives from Texas\'s 14th district from 1997 to present.','Christian (Baptist)','Iowa','Sen. Rand Paul (KY)','Gains Support from across the political spectrum (far right wing to independents and democrats). <a href=\"http://www.newyorker.com/online/blogs/johncassidy/2011/12/why-ron-paul-isnt-just-another-right-wing-nut.html\">[source]</a>','Continue Bush-era tax cuts. Lower corporate tax rate to 15%. End Death Tax and taxes on personal savings.','Proposed a plan for young people to opt out of Social Security, since he believes Social Security will not exist for the youth currently paying for it. <a href=\"http://news.yahoo.com/blogs/ticket/paulonomics-ron-paul-plans-taxes-spending-social-security-142130626.html\">[source]</a>','Substantial reduction in US military spending by scaling back military commitments and recall all US troops stationed abroad.','Opposes universal healthcare and would repeal Obama\'s Affordable Care Act. To reduce costs for the individual, he proposed a tax credit system, allowing citizens to purchase health insurance across state lines.','Paul\'s \"Plan to Restore America\" would reform government spending and taxes. It would cut $1 trillion in federal spending in the first year of his presidency through reform and slashing regulations. He would eliminate five federal cabinet departments -- the Departments of Energy, Housing and Urban Development, Commerce, Interior and Education. <a href=\"http://www.usnews.com/opinion/blogs/susan-milligan/2011/11/28/michele-bachmanns-nuttiness-is-no-reason-for-sexism\">[source]</a>','','','','Believes that gun ownership is protected under the 2nd amendment.',''),
('Rick Perry','<img src=\"pics/Perry.jpg\" width=\"100%\">','Born on March 4th, 1950 in Paint Creek, Texas (61 years old) ','Texas','Texas A&M BA 1972','Member of the House of Representatives of Texas from District 64 from 1985-1991. He then acted as the 9th Commissioner of Agriculture of Texas from 1991-1999. He was the 39th Lieutenant Governor of Texas from 1999-2000. He is currently acting as the 47th Governor of Texas from 2000. ','Christian (Evangelical)','Iowa','Gov. Brian Sandoval (NV)','Tea Party','aReduce personal income tax and corporate income tax to 20%. Close corporate tax loopholes and temporarily lower the corporate income tax rate to 5.25%. <a href=\"http://www.newyorker.com/online/blogs/johncassidy/2011/12/why-ron-paul-isnt-just-another-right-wing-nut.html\">[source]</a>','Called Social Security a \"Ponzi scheme.\" Raise the retirement age and give the option of putting some money that would normally go toward Social Security in private accounts. ','No plan to cut defense or military spending. ','Repeal Obama\'s Affordable Care Act. ','Create jobs through creating high production of domestic oil and natural gas. He believes it will create a potential 2.5 million new jobs.<a href=\"http://washingtonexaminer.com/opinion/columnists/2011/11/repealing-obamacare-will-be-tougher-romney-claims/1961951\">[source]</a> ','','','','',''),
('Newt Gingrich','<img src=\"pics/Gingrich.jpg\" width=\"100%\">','Born on June 17th, 1943 in Harrisburg, Pennsylvania (68 years old) ','Georgia ( currently lives in Virginia)','Emory University BA 1965<br /> Tulane University PhD 1971','Member of the US House of Representatives from Georgia\'s 6th district from 1979-1999. Speaker of the House from 1995-1999. ','Roman Catholic ','South Carolina','Gov. Nathan Deal (GA)','Anti-Government ','Continue Bush-era tax cuts. Optional flat tax of 15% with $12,000 per-person deduction. Corporate tax rate at 12.5%. <a href=\"http://money.cnn.com/2011/12/12/news/economy/newt_gingrich_taxes/index.htm\">[source]</a>','Gingrich favors a system where young people can opt to use a personal account, controlled by the individual instead of the government. While the elderly could still use the current system. <a href=\" http://www.newt.org/news/unleashing-growth-and-innovation-move-beyond-welfare-state\">[source]</a>','Through modern management techniques, proposed to cut the defense budget by $500 billion. <a href=\"http://www.unionleader.com/article/20111122/NEWS0605/111129984\">[source]</a>','Gingrich\'s \"Patient Power\" would repeal President Obama\'s Affordable Care Act, make healthcare more affordable through tax credit, reform the current Medicaid system and  allow seniors to opt out of Medicare, and allow Americans to  purchase insurance across state lines. <a href=\"http://washingtonexaminer.com/opinion/columnists/2011/11/repealing-obamacare-will-be-tougher-romney-claims/1961951\">[source]</a> ','Coupled with his tax plan, he plans to repeal laws and financial regulations that impedes job creation, like the EPA and Dodd-Frank Act. ','','','','','');
/*!40000 ALTER TABLE `Republican Primary Candidates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-31 18:54:03
