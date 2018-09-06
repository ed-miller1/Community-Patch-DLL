-- Units
INSERT INTO Unit_BuildingClassPurchaseRequireds (UnitType, BuildingClassType) SELECT 'UNIT_ENVOY','BUILDINGCLASS_CHANCERY';
INSERT INTO Unit_BuildingClassPurchaseRequireds (UnitType, BuildingClassType) SELECT 'UNIT_DIPLOMAT','BUILDINGCLASS_CHANCERY';
INSERT INTO Unit_BuildingClassPurchaseRequireds (UnitType, BuildingClassType) SELECT 'UNIT_AMBASSADOR','BUILDINGCLASS_WIRE_SERVICE';

UPDATE Units SET PurchaseCooldown =     5  WHERE Type = 'UNIT_EMISSARY';
UPDATE Units SET PurchaseCooldown =     5  WHERE Type = 'UNIT_ENVOY';
UPDATE Units SET PurchaseCooldown =     5  WHERE Type = 'UNIT_DIPLOMAT';
UPDATE Units SET PurchaseCooldown =     5  WHERE Type = 'UNIT_AMBASSADOR';
UPDATE Units SET PurchaseCooldown =		1  WHERE Type = 'UNIT_GREAT_DIPLOMAT';

UPDATE Units SET Cost = '110' WHERE Type = 'UNIT_EMISSARY';
UPDATE Units SET Cost = '200' WHERE Type = 'UNIT_ENVOY';
UPDATE Units SET Cost = '700' WHERE Type = 'UNIT_DIPLOMAT';
UPDATE Units SET Cost = '1200' WHERE Type = 'UNIT_AMBASSADOR';

UPDATE Units SET GlobalFaithPurchaseCooldown =		5  WHERE Type = 'UNIT_GREAT_DIPLOMAT'; 


UPDATE Buildings SET PrereqTech = 'TECH_EDUCATION' WHERE Type = 'BUILDING_CHANCERY';
UPDATE Buildings SET PrereqTech = 'TECH_REPLACEABLE_PARTS' WHERE Type = 'BUILDING_WIRE_SERVICE';

UPDATE Units SET PrereqTech = 'TECH_CIVIL_SERVICE' WHERE Type = 'UNIT_ENVOY';
UPDATE Units SET PrereqTech = 'TECH_INDUSTRIALIZATION' WHERE Type = 'UNIT_DIPLOMAT';
UPDATE Units SET ObsoleteTech = 'TECH_CIVIL_SERVICE' WHERE Type = 'UNIT_EMISSARY';
UPDATE Units SET ObsoleteTech = 'TECH_INDUSTRIALIZATION' WHERE Type = 'UNIT_ENVOY';

INSERT INTO Trait_SpecialistYieldChanges
	(TraitType, SpecialistType, YieldType, Yield)
VALUES
	('TRAIT_SCHOLARS_JADE_HALL', 'SPECIALIST_CIVIL_SERVANT', 'YIELD_SCIENCE', 1);

INSERT INTO Belief_SpecialistYieldChanges
	(BeliefType, SpecialistType, YieldType, Yield)
VALUES
	('BELIEF_RELIGIOUS_ART', 'SPECIALIST_CIVIL_SERVANT', 'YIELD_GOLD', 1),
	('BELIEF_RELIGIOUS_ART', 'SPECIALIST_CIVIL_SERVANT', 'YIELD_GOLDEN_AGE_POINTS', 1);

INSERT INTO Belief_ImprovementYieldChanges
	(BeliefType, ImprovementType, YieldType, Yield)
VALUES
	('BELIEF_UNITY_OF_PROPHETS', 'IMPROVEMENT_EMBASSY', 'YIELD_FAITH', 4),
	('BELIEF_UNITY_OF_PROPHETS', 'IMPROVEMENT_EMBASSY', 'YIELD_SCIENCE', 4);

INSERT INTO Tech_SpecialistYieldChanges
	(TechType, SpecialistType, YieldType, Yield)
VALUES
	('TECH_NAVIGATION', 'SPECIALIST_CIVIL_SERVANT', 'YIELD_GOLD', 1),
	('TECH_REPLACEABLE_PARTS', 'SPECIALIST_CIVIL_SERVANT', 'YIELD_SCIENCE', 1),
	('TECH_INTERNET', 'SPECIALIST_CIVIL_SERVANT', 'YIELD_CULTURE', 1);

INSERT INTO Policy_FaithPurchaseUnitClasses
	(PolicyType, UnitClassType)
VALUES
	('POLICY_PATRONAGE_FINISHER', 'UNITCLASS_GREAT_DIPLOMAT');

INSERT INTO Policy_ImprovementYieldChanges
	(PolicyType, ImprovementType, YieldType, Yield)
VALUES
	('POLICY_TRADITION_FINISHER', 'IMPROVEMENT_EMBASSY', 'YIELD_FOOD', 1);

INSERT INTO Policy_ImprovementYieldChanges
	(PolicyType, ImprovementType, YieldType, Yield)
VALUES
	('POLICY_NEW_DEAL', 'IMPROVEMENT_EMBASSY', 'YIELD_CULTURE', 5);

INSERT INTO Belief_GreatPersonExpendedYield
	(BeliefType, GreatPersonType, YieldType, Yield)
VALUES
	('BELIEF_TO_GLORY_OF_GOD', 'GREATPERSON_DIPLOMAT', 'YIELD_SCIENCE', 3),
	('BELIEF_TO_GLORY_OF_GOD', 'GREATPERSON_DIPLOMAT', 'YIELD_CULTURE', 3),
	('BELIEF_TO_GLORY_OF_GOD', 'GREATPERSON_DIPLOMAT', 'YIELD_GOLD', 3);

INSERT INTO Belief_GreatPersonPoints
	(BeliefType, GreatPersonType, Value)
VALUES
	('BELIEF_ITINERANT_PREACHERS', 'GREATPERSON_DIPLOMAT', 2);

INSERT INTO Belief_GoldenAgeGreatPersonRateModifier
	(BeliefType, GreatPersonType, Modifier)
VALUES
	('BELIEF_ITINERANT_PREACHERS', 'GREATPERSON_DIPLOMAT', 15);

INSERT INTO Building_SpecialistYieldChanges
	(BuildingType, SpecialistType, YieldType, Yield)
VALUES
	('BUILDING_STATUE_OF_LIBERTY', 'SPECIALIST_CIVIL_SERVANT', 'YIELD_PRODUCTION', 1),
	('BUILDING_EMPIRE_STATE_BUILDING', 'SPECIALIST_CIVIL_SERVANT', 'YIELD_GOLD', 1);

INSERT INTO Policy_BuildingClassHappiness
	(PolicyType, BuildingClassType, Happiness)
VALUES
	('POLICY_LEGALISM', 'BUILDINGCLASS_COURT_SCRIBE', 1),
	('POLICY_LEGALISM', 'BUILDINGCLASS_PRINTING_PRESS', 1),
	('POLICY_LEGALISM', 'BUILDINGCLASS_FOREIGN_OFFICE', 1),
	('POLICY_LEGALISM', 'BUILDINGCLASS_PALACE_SCIENCE_CULTURE', 1),
	('POLICY_LEGALISM', 'BUILDINGCLASS_FINANCE_CENTER', 1),
	('POLICY_LEGALISM', 'BUILDINGCLASS_EHRENHALLE', 1);

INSERT INTO Trait_GreatPersonBornYield
	(TraitType, GreatPersonType, YieldType, Yield)
VALUES
	('TRAIT_SCHOLARS_JADE_HALL', 'GREATPERSON_DIPLOMAT', 'YIELD_GOLDEN_AGE_POINTS', 50);

INSERT INTO Trait_GoldenAgeGreatPersonRateModifier
	(TraitType, GreatPersonType, Modifier)
VALUES
	('TRAIT_SCHOLARS_JADE_HALL', 'GREATPERSON_DIPLOMAT', 30);

INSERT INTO Improvement_Yields
	(ImprovementType, YieldType, Yield)
VALUES
	('IMPROVEMENT_EMBASSY', 'YIELD_GOLD', 2),
	('IMPROVEMENT_EMBASSY', 'YIELD_CULTURE', 2),
	('IMPROVEMENT_EMBASSY', 'YIELD_SCIENCE', 2);

INSERT INTO Improvement_TechYieldChanges
	(ImprovementType, TechType, YieldType, Yield)
VALUES
	('IMPROVEMENT_EMBASSY', 'TECH_CIVIL_SERVICE', 'YIELD_GOLD', 1),
	('IMPROVEMENT_EMBASSY', 'TECH_PRINTING_PRESS', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_EMBASSY', 'TECH_MILITARY_SCIENCE', 'YIELD_SCIENCE', 1),
	('IMPROVEMENT_EMBASSY', 'TECH_ATOMIC_THEORY', 'YIELD_GOLD', 1),
	('IMPROVEMENT_EMBASSY', 'TECH_ATOMIC_THEORY', 'YIELD_SCIENCE', 1),
	('IMPROVEMENT_EMBASSY', 'TECH_TELECOM', 'YIELD_CULTURE', 1);

INSERT INTO Building_ImprovementYieldChangesGlobal
	(BuildingType, ImprovementType, YieldType, Yield)
VALUES
	('BUILDING_MURANO_GLASSWORKS', 'IMPROVEMENT_EMBASSY', 'YIELD_FOOD', 2),
	('BUILDING_MURANO_GLASSWORKS', 'IMPROVEMENT_EMBASSY', 'YIELD_TOURISM', 2);

INSERT INTO Automates
	(Type, Description, Help, DisabledHelp, HotKey, OrderPriority, Command, Automate, Visible, IconIndex, IconAtlas)
VALUES
	('AUTOMATE_DIPLOMAT', 'TXT_KEY_ACTION_AUTOMATE_DIPLOMAT', 'TXT_KEY_ACTION_AUTOMATE_DIPLOMAT_HELP', 'TXT_KEY_ACTION_AUTOMATE_DIPLOMAT_DISABLED_HELP', 'KB_E', 1, 'COMMAND_AUTOMATE', 'AUTOMATE_DIPLOMAT', 'true', 43, 'UNIT_ACTION_ATLAS');

INSERT INTO Concepts
	(Type, Topic, Description, Summary, AdvisorQuestion, Advisor, CivilopediaHeaderType)
VALUES
	('CONCEPT_SPECIALISTS_AND_GREAT_PEOPLE_SPECIALISTS_CIVIL_SERVANT', 'TXT_KEY_TOPIC_SPECIALISTSANDGP', 'TXT_KEY_SPECIALISTSANDGP_CIVIL_SERVANT_HEADING3_TITLE', 'TXT_KEY_SPECIALISTSANDGP_CIVIL_SERVANT_HEADING3_BODY', 'TXT_KEY_SPECIALISTSANDGP_CIVIL_SERVANT_ADV_QUEST', 'SCIENCE', 'HEADER_PEOPLE');

-- Hurry Cost - reduced for all buildings (as you now need production as well to make them work)
UPDATE Buildings SET HurryCostModifier = '-20';
UPDATE Buildings SET HurryCostModifier = '-5' WHERE NOT WonderSplashImage = 'NULL';


UPDATE Policies SET GreatDiplomatRateModifier = '50' WHERE Type = 'POLICY_PHILANTHROPY';

-- Building Prereq Techs

UPDATE Buildings SET PrereqTech = 'TECH_RADIO' WHERE Type = 'BUILDING_FOREIGN_OFFICE';

-- Set Wonder Policy Requirement
UPDATE Buildings SET NumPoliciesNeeded = '11' WHERE Type = 'BUILDING_SUMMER_PALACE';
UPDATE Buildings SET NumPoliciesNeeded = '3' WHERE Type = 'BUILDING_FORUM';


UPDATE Policies
SET MinorScienceAllies = '0'
WHERE Type = 'POLICY_PHILANTHROPY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET IncreasedQuestRewards = '50'
WHERE Type = 'POLICY_PHILANTHROPY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET TradeRouteTourismModifier = '0'
WHERE Type = 'POLICY_PHILANTHROPY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET TradeRouteTourismModifier = '15'
WHERE Type = 'POLICY_CULTURAL_DIPLOMACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

--Philanthropy more paper!

INSERT INTO Policy_ResourcefromCSAlly
	(PolicyType, ResourceType, Number)
VALUES
	('POLICY_PHILANTHROPY', 'RESOURCE_PAPER', 34),
	('POLICY_PHILANTHROPY', 'RESOURCE_IRON', 34),
	('POLICY_PHILANTHROPY', 'RESOURCE_HORSE', 34),
	('POLICY_PHILANTHROPY', 'RESOURCE_COAL', 34),
	('POLICY_PHILANTHROPY', 'RESOURCE_ALUMINUM', 34),
	('POLICY_PHILANTHROPY', 'RESOURCE_URANIUM', 34),
	('POLICY_PHILANTHROPY', 'RESOURCE_OIL', 34);


-- Change to Order Palace of Science and Culture
UPDATE Buildings SET DPToVotes = '1' WHERE Type = 'BUILDING_PALACE_SCIENCE_CULTURE';

UPDATE Buildings SET RAToVotes = '0' WHERE Type = 'BUILDING_PALACE_SCIENCE_CULTURE';

-- Building Costs

UPDATE Buildings SET Cost = '150' WHERE Type = 'BUILDING_COURT_SCRIBE';
UPDATE Buildings SET Cost = '300' WHERE Type = 'BUILDING_CHANCERY';
UPDATE Buildings SET GoldMaintenance = '3' WHERE Type = 'BUILDING_CHANCERY';
UPDATE Buildings SET Cost = '1800' WHERE Type = 'BUILDING_WIRE_SERVICE';
UPDATE Buildings SET GoldMaintenance = '6' WHERE Type = 'BUILDING_WIRE_SERVICE';

UPDATE Buildings SET Cost = '200' WHERE Type = 'BUILDING_FORUM';
UPDATE Buildings SET Cost = '900' WHERE Type = 'BUILDING_SUMMER_PALACE';

INSERT INTO Building_FreeUnits (BuildingType, UnitType, NumUnits)
SELECT 'BUILDING_COURT_SCRIBE' , 'UNIT_EMISSARY' , '1'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Building Requirements
DELETE FROM Building_PrereqBuildingClasses WHERE BuildingType = 'BUILDING_PRINTING_PRESS';
DELETE FROM Building_PrereqBuildingClasses WHERE BuildingType = 'BUILDING_FOREIGN_OFFICE';
DELETE FROM Building_PrereqBuildingClasses WHERE BuildingType = 'BUILDING_PALACE_SCIENCE_CULTURE';
DELETE FROM Building_PrereqBuildingClasses WHERE BuildingType = 'BUILDING_FINANCE_CENTER';
DELETE FROM Building_PrereqBuildingClasses WHERE BuildingType = 'BUILDING_EHRENHALLE';

-- Pop Needed
UPDATE Buildings SET NationalPopRequired = '20' WHERE Type = 'BUILDING_COURT_SCRIBE';
UPDATE Buildings SET NationalPopRequired = '30' WHERE Type = 'BUILDING_PRINTING_PRESS';
UPDATE Buildings SET NationalPopRequired = '45' WHERE Type = 'BUILDING_FOREIGN_OFFICE';
UPDATE Buildings SET NationalPopRequired = '60' WHERE Type = 'BUILDING_PALACE_SCIENCE_CULTURE';
UPDATE Buildings SET NationalPopRequired = '60' WHERE Type = 'BUILDING_FINANCE_CENTER';
UPDATE Buildings SET NationalPopRequired = '60' WHERE Type = 'BUILDING_EHRENHALLE';

-- Expansion Cost

UPDATE Buildings SET NumCityCostMod = '10' WHERE Type = 'BUILDING_PRINTING_PRESS';
UPDATE Buildings SET NumCityCostMod = '10' WHERE Type = 'BUILDING_FOREIGN_OFFICE';
UPDATE Buildings SET NumCityCostMod = '10' WHERE Type = 'BUILDING_PALACE_SCIENCE_CULTURE';
UPDATE Buildings SET NumCityCostMod = '10' WHERE Type = 'BUILDING_FINANCE_CENTER';
UPDATE Buildings SET NumCityCostMod = '10' WHERE Type = 'BUILDING_EHRENHALLE';

-- Religious Authority (CSD)
UPDATE Buildings SET FaithToVotes = '0' WHERE Type = 'BUILDING_GRAND_TEMPLE';
UPDATE Buildings SET FaithToVotes = '10' WHERE Type = 'BUILDING_MAUSOLEUM';
UPDATE Buildings SET FaithToVotes = '10' WHERE Type = 'BUILDING_HEAVENLY_THRONE';
UPDATE Buildings SET FaithToVotes = '10' WHERE Type = 'BUILDING_GREAT_ALTAR';
UPDATE Buildings SET FaithToVotes = '10' WHERE Type = 'BUILDING_RELIQUARY';
UPDATE Buildings SET FaithToVotes = '10' WHERE Type = 'BUILDING_DIVINE_COURT';
UPDATE Buildings SET FaithToVotes = '10' WHERE Type = 'BUILDING_SACRED_GARDEN';
UPDATE Buildings SET FaithToVotes = '10' WHERE Type = 'BUILDING_HOLY_COUNCIL';
UPDATE Buildings SET FaithToVotes = '10' WHERE Type = 'BUILDING_BASILICA';
UPDATE Buildings SET FaithToVotes = '10' WHERE Type = 'BUILDING_GRAND_OSSUARY';
UPDATE Buildings SET FaithToVotes = '10' WHERE Type = 'BUILDING_APOSTOLIC_PALACE';

