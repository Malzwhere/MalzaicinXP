local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Cap/Malz Duo Catchup XP
--#groupid RXP-SRGCE-A1
#name 31-32 Razorfen Kraul
#next 32-33 Excavation Site
#defaultfor Dwarf/Gnome/Human


step
    >>|cRXP_WARN_This is a 3 stop boat, stay on through the Southshore stop|r
    .goto 1437,4.640,57.122
    .zone 1439 >> Take the boat to Darkshore
step
	.goto Darkshore,37.0,44.1
    .home >> Set your Hearthstone to Auberdine
step
    >> Speak to the flight master ontop of the platform
	.goto Darkshore,36.3,45.6
    .fly Ratchet >> Fly to Ratchet
step
    .zone Stranglethorn Vale >> Take the boat to Booty Bay
step
    .goto Stranglethorn Vale,27.4,77.8
    .fp Booty Bay >> Get the Booty Bay Flight Path
step
    .zone The Barrens >> Take the boat to Ratchet
step
    .goto The Barrens,62.370,37.615
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 1221 >> Accept Blueleaf Tubers
    .target Mebok Mizzyrix
step
    >>Loot the |cRXP_LOOT_Snufflenose Command Stick|r, |cRXP_LOOT_Snufflenose Owner's Manual|r and |cRXP_LOOT_Crate With Holes|r next to |cRXP_FRIENDLY_Mebok|r
    .collect 6684,1,1221,1 
    .goto The Barrens,62.340,37.607
    .collect 5897,1,1221,1 
    .goto The Barrens,62.332,37.623
    .collect 5880,1,1221,1 
    .goto The Barrens,62.323,37.620
step
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Thalanaar >> Fly to Thalanaar
    .target Bragok
step
    .goto Feralas,89.4,46.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kristy Grant|r
    .accept 98155 >> Accept Pristine Pesterhide Pelts
    .target Kristy Grant
step
    .goto Thousand Needles,30.725,24.346
    >>Loot |T133741:0|t[|cRXP_LOOT_Henrig Lonebrow's Journal|r] from the ground next to the dwarf's corpse
    .collect 5791,1 
step
    #sticky
    #label Journal
    .use 5791 >>|cRXP_WARN_Use |T133741:0|t[|cRXP_LOOT_Henrig Lonebrow's Journal|r] to start the quest|r
    .accept 1100 >> Accept Lonebrow's Journal
step
    #completewith next
    .goto Thousand Needles,8.456,17.953,0
    .goto Feralas,89.50,45.85,50 >> Travel to Thalanaar
step
    #requires Journal
    .goto Feralas,89.634,46.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .turnin 1100 >> Turn in Lonebrow's Journal
    .target Falfindel Waywarder
step
    .goto Feralas,89.634,46.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .turnin 1100 >> Turn in Lonebrow's Journal
    .accept 1101 >> Accept The Crone of the Kraul
    .target Falfindel Waywarder
step
    .goto The Barrens,43.46,90.18,0
    .goto The Barrens,43.46,90.18,40,0
    .goto 1414,50.877,70.339
    .subzone 491,2 >> Enter Razorfen Kraul
step
    >>Kill |cRXP_ENEMY_Charlga Razorflank|r. Loot her for |cRXP_LOOT_Razorflank's Heart|r
    .complete 1101,1 
    .isOnQuest 1101
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Heralath Fallowbrook|r and |cRXP_FRIENDLY_Willix the Importer|r
    .accept 1142 >> Accept Mortality Wanes
    .accept 1144 >> Accept Willix the Importer
    .target Heralath Fallowbrook
    .target Willix the Importer
step
    #completewith next
    >>Kill all |cRXP_ENEMY_Monsters|r inside of RFK. Loot them for |cRXP_LOOT_Treshala's Pendant|r
    .complete 1142,1 
    .isOnQuest 1142
step
    >>Escort |cRXP_FRIENDLY_Willix the Importer|r through Razorfen Krual
    >>|cRXP_WARN_Ensure you stay close to |cRXP_FRIENDLY_Willix|r otherwise the quest may not complete!|r
    .complete 1144,1 
    .isOnQuest 1144
step
    #completewith next
    >>Kill all |cRXP_ENEMY_Monsters|r inside of RFK. Loot them for |cRXP_LOOT_Treshala's Pendant|r
    .complete 1142,1 
    .isOnQuest 1142
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willix the Importer|r
    .turnin 1144 >> Turn in Willix the Importer
    .target Willix the Importer
    .isOnQuest 1144
step
    >>Kill all |cRXP_ENEMY_Monsters|r inside of RFK. Loot them for |cRXP_LOOT_Treshala's Pendant|r
    .complete 1142,1 
    .isOnQuest 1142
step
    .goto Feralas,89.634,46.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .turnin 1101 >> Turn in The Crone of the Kraul
    .target Falfindel Waywarder
    .isOnQuest 1101
step
    >>Kill |cRXP_ENEMY_Pesterhide Snarlers|r. Loot them for their |cRXP_LOOT_Pristine Pesterhide Pelts|r
    .goto Thousand Needles,12.6,15.8
    .complete 98155,1
step
    .goto Feralas,89.4,46.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kristy Grant|r
    .turnin 98155 >> Turn in Pristine Pesterhide Pelts
    .accept 98156 >> Accept Packaged Pristine Pelts
    .target Kristy Grant
step
    #optional
    #completewith next
    >>this section is *optional*, don't go far past 32, roughly 20k xp is here
    .goto Thousand Needles,77.782,77.263,100 >> Travel to the Mirage Raceway
step
    #optional
    .goto Thousand Needles,77.782,77.263
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    >>|cRXP_WARN_Don't accept the other quests yet|r
    .accept 1110 >> Accept Rocket Car Parts
    .target Kravel Koalbeard
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r and |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .accept 1104 >> Accept Salt Flat Venom
    .goto Thousand Needles,78.064,77.126 
    .turnin 1179 >> Turn in The Brassbolts Brothers
    .accept 1105 >> Accept Hardened Shells
    .goto Thousand Needles,78.143,77.120 
    .target Fizzle Brassbolts
    .target Wizzle Brassbolts
step
    #optional
    .goto Thousand Needles,80.178,75.882
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
    .accept 1176 >> Accept Load Lightening
    .target Pozzik
step
    #optional
    #label ABump
    .goto Thousand Needles,81.635,77.953
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trackmaster Zherin|r
    .accept 1175 >> Accept A Bump in the Road
    .target Trackmaster Zherin
step
    #optional
    #optional
    >>|cRXP_WARN_Run circles around The Shimmering Flats until all objectives are complete|r
    >>Kill |cRXP_ENEMY_Salt Flats Scavengers|r and |cRXP_ENEMY_Salt Flats Vultures|r. Loot them for their |cRXP_LOOT_Bones|r
    >>Kill |cRXP_ENEMY_Sparkleshell Tortoises|r, |cRXP_ENEMY_Sparkleshell Borers|r and |cRXP_ENEMY_Sparkleshell Snappers|r. Loot them for their |cRXP_LOOT_Shells|r
    >>|cRXP_WARN_Don't go out of your way to collect all|r |cRXP_LOOT_Turtle Meat|r
    >>Kill |cRXP_ENEMY_Scorpid Reavers|r and |cRXP_ENEMY_Scorpid Terrors|r. Loot them for their |cRXP_LOOT_Venom|r
    >>Kill |cRXP_ENEMY_Saltstone Basilisks|r, |cRXP_ENEMY_Saltstone Crystalhides|r and |cRXP_ENEMY_Saltstone Gazers|r
    >>Loot |cRXP_ENEMY_Saltstone Basilisks|r for their |cRXP_LOOT_Scales|r
    >>Open the |cRXP_PICK_Rocket Car Rubble|r. Loot it for the |cRXP_LOOT_Rocket Car Parts|r
    .complete 1176,1 
    .goto Thousand Needles,87.5,65.6,0
    .complete 1105,1 
    .goto Thousand Needles,82.6,54.8,0
    .complete 1104,1 
    .goto Thousand Needles,71.8,73.4,0
    .complete 1175,1 
    .goto Thousand Needles,73.5,59.9,0
    .complete 1078,1 
    .goto Thousand Needles,73.5,59.9,0
    .complete 1175,2 
    .goto Thousand Needles,77.65,87.34,0
    .complete 1175,3 
    .goto Thousand Needles,77.65,87.34,0
    .complete 1110,1 
    .mob Salt Flats Scavenger
    .mob Salt Flats Vulture
    .mob Sparkleshell Snapper
    .mob Sparkleshell Borer
    .mob Sparkleshell Tortoise
    .mob Saltstone Basilisk
    .mob Saltstone Crystalhide
    .mob Saltstone Gazer
    .mob Scorpid Reaver
    .mob Scorpid Terror
    .isOnQuest 1078
step
    #optional
    >>|cRXP_WARN_Run circles around The Shimmering Flats until all objectives are complete|r
    >>Kill |cRXP_ENEMY_Salt Flats Scavengers|r and |cRXP_ENEMY_Salt Flats Vultures|r. Loot them for their |cRXP_LOOT_Bones|r
    >>Kill |cRXP_ENEMY_Sparkleshell Tortoises|r, |cRXP_ENEMY_Sparkleshell Borers|r and |cRXP_ENEMY_Sparkleshell Snappers|r. Loot them for their |cRXP_LOOT_Shells|r
    >>|cRXP_WARN_Don't go out of your way to collect all|r |cRXP_LOOT_Turtle Meat|r
    >>Kill |cRXP_ENEMY_Scorpid Reavers|r and |cRXP_ENEMY_Scorpid Terrors|r. Loot them for their |cRXP_LOOT_Venom|r
    >>Kill |cRXP_ENEMY_Saltstone Basilisks|r, |cRXP_ENEMY_Saltstone Crystalhides|r and |cRXP_ENEMY_Saltstone Gazers|r
    >>Open the |cRXP_PICK_Rocket Car Rubble|r. Loot it for the |cRXP_LOOT_Rocket Car Parts|r
#loop
    #optional
    .goto Thousand Needles,87.5,65.6,0
    .goto Thousand Needles,82.6,54.8,0
    .goto Thousand Needles,73.5,59.9,0
    .goto Thousand Needles,71.8,73.4,0
    .goto Thousand Needles,77.65,87.34,0
    .complete 1176,1 
    .complete 1105,1 
    .complete 1104,1 
    .complete 1175,1 
    .complete 1175,2 
    .complete 1175,3 
    .complete 1110,1 
    .mob Salt Flats Scavenger
    .mob Salt Flats Vulture
    .mob Sparkleshell Snapper
    .mob Sparkleshell Borer
    .mob Sparkleshell Tortoise
    .mob Saltstone Basilisk
    .mob Saltstone Crystalhide
    .mob Saltstone Gazer
    .mob Scorpid Reaver
    .mob Scorpid Terror
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trackmaster Zherin|r
    .goto Thousand Needles,81.635,77.953
    .turnin 1175 >> Turn in A Bump in the Road
    .target Trackmaster Zherin
step
    #optional
    .goto Thousand Needles,80.178,75.882
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
    .turnin 1176 >> Turn in Load Lightening
    .accept 1178 >> Accept Goblin Sponsorship
    .target Pozzik
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r and |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .turnin 1104 >> Turn in Salt Flat Venom
    .goto Thousand Needles,78.064,77.126 
    .turnin 1105 >> Turn in Hardened Shells
    .goto Thousand Needles,78.143,77.120 
    .target Fizzle Brassbolts
    .target Wizzle Brassbolts
step
    #optional
    #label TurninShimmering
    .goto Thousand Needles,77.782,77.263
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    .turnin 1110 >> Turn in Rocket Car Parts
    .accept 1111 >> Accept Wharfmaster Dizzywig
    .accept 5762 >> Accept Hemet Nesingwary
    .target Kravel Koalbeard
step
    #optional
    .isQuestComplete 1221
    #completewith next
    .goto Tanaris,51.01,29.35,150 >> Travel to Tanaris
step
    >> If skipping shimmering flats fly from Thalanaar instead
    .isQuestComplete 1221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
    .goto Tanaris,51.006,29.345
    .fp Tanaris>> Get the Tanaris Flight Path
    .fly Ratchet>> Fly to Ratchet
    .target Bera Stonehammer
step
    .isOnQuest 1221
    .goto The Barrens,62.370,37.615
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 1221 >> Turn in Blueleaf Tubers
    .target Mebok Mizzyrix
step
    .hs >> Hearth to Auberdine
step
    .isOnQuest 1142
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil>> Fly to Teldrassil
    .target Caylais Moonfeather
step
    .isOnQuest 1142
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Take the purple portal into Darnassus
step
    .isOnQuest 1142
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Treshala Fallowbrook|r up stairs
    .turnin 1142 >> Turn in Mortality Wanes
    .goto Darnassus,69.4,67.4
    .target Treshala Fallowbrook
step
    .isQuestTurnedIn 1142
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyn'tel Bladeweaver|r
    .goto Darnassus,61.777,39.180
    .turnin 1044 >> Turn in Answered Questions
    .target Thyn'tel Bladeweaver
    .isOnQuest 1044
step
    .isQuestTurnedIn 1142
    #label ExitDarn
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Travel through the purple portal to Rut'theran Village
    .zoneskip Darkshore
step
    .isQuestTurnedIn 1142
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fly to Darkshore
    .target Vesprystus
    .zoneskip Darkshore
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Cap/Malz Duo Catchup XP
--#groupid RXP-SRGCE-A1
#name 36-37 Stranglethorn Vale
#next 37-37 Arathi Highlands
-- #defaultfor Dwarf/Gnome/Human


step
    #completewith next
    .goto Duskwood,44.598,87.565,0
    .goto Stranglethorn Vale,40.635,3.514
    .zone Stranglethorn Vale >> Travel to Stranglethorn Vale
step
    #completewith Fern
    .goto Stranglethorn Vale,40.339,8.434,0
    >>|cRXP_WARN_Keep an eye out for the special |cRXP_FRIENDLY_Private Thorsen|r event. He will patrol down the road from the Rebel camp every 30 minutes|r
    >>|cRXP_FRIENDLY_Private Thorsen|r |cRXP_WARN_will be attacked by 2 of |cRXP_ENEMY_Kurzen's Agents|r. If you don't see this event, ignore this step|r
    >>Kill both of |cRXP_ENEMY_Kurzen's Agents|r and then accept |cRXP_FRIENDLY_Private Thorsen's|r quest which becomes available after saving him
    .accept 215 >> Accept Jungle Secrets
    .unitscan Private Thorsen
    .mob Kurzen's Agent
step
    #label ThorsenR
    .goto Stranglethorn Vale,37.980,3.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Thorsen|r at the Rebel Camp
    >>|cRXP_WARN_If |cRXP_FRIENDLY_Private Thorsen|r isn't at the Rebel Camp he may be in progress for his special event. Skip this step. Look for him down the path if you havn't accepted his quest yet|r
    .turnin 198 >>Turn in Supplies to Private Thorsen
    .target Private Thorsen
step
    .goto Stranglethorn Vale,38.017,3.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r
    .accept 203 >>Accept The Second Rebellion
    .accept 204 >>Accept Bad Medicine
    .target Sergeant Yohwa
step
    .goto Stranglethorn Vale,38.0,3.0
    .isOnQuest 215
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 215 >> Turn in Jungle Secrets
    .accept 200 >> Accept Bookie Herod
    .target Lieutenant Doren
step
    #completewith Fern
    >>Kill |cRXP_ENEMY_Stone Maw Basilisks|r and |cRXP_ENEMY_Crystal Spine Basilisks|r. Loot them for their |cRXP_LOOT_Shards|r
    >>|cRXP_ENEMY_Stone Maw Basilisks|r |cRXP_WARN_and|r |cRXP_ENEMY_Crystal Spine Basilisks|r |cRXP_WARN_will cast|r |T132154:0|t[Crystal Gaze] |cRXP_WARN_which is a 6 second long stun. Simply move out of their melee range when they begin to cast to avoid it|r
    .goto Stranglethorn Vale,24.4,17.2,0
    .goto Stranglethorn Vale,48.48,8.85,0
    .complete 605,1
    .mob Stone Maw Basilisk
    .mob Crystal Spine Basilisk
step
    >>Skippable quest, prio one person
    #completewith Fern
    .goto Stranglethorn Vale,32.6,8.8,0
    .goto Stranglethorn Vale,36.8,10.6,0
    .goto Stranglethorn Vale,40.8,13.8,0
    >>Kill |cRXP_ENEMY_River Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
    .complete 575,1 
    .mob River Crocolisk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
    .accept 583 >> Accept Welcome to the Jungle
    .goto Stranglethorn Vale,35.662,10.529
    .turnin 583 >> Turn in Welcome to the Jungle
    .goto Stranglethorn Vale,35.658,10.808
    .target Barnil Stonepot
    .target Hemet Nesingwary
step
    #optional
    .isOnQuest 5762
    .goto Stranglethorn Vale,35.658,10.808
    .target Hemet Nesingwary
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 5762 >> Turn in Hemet Nesingwary
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 185 >> Accept Tiger Mastery
    .goto Stranglethorn Vale,35.616,10.619
    .accept 190 >> Accept Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .target Ajeck Rouack
    .target Sir S. J. Erlgadin
step
    .goto Stranglethorn Vale,35.40,12.50,50,0
    .goto Stranglethorn Vale,33.30,11.90,50,0
    .goto Stranglethorn Vale,31.76,9.00,50,0
    .goto Stranglethorn Vale,35.40,12.50
    >>Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r
    .complete 185,1 
    .mob Young Stranglethorn Tiger
step
    .goto Stranglethorn Vale,35.61,10.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .turnin 185 >>Turn in Tiger Mastery
    .accept 186 >>Accept Tiger Mastery
    .target Ajeck Rouack
step
    #completewith next
    .goto Stranglethorn Vale,44.93,10.25,0
    >>Kill |cRXP_ENEMY_Kurzen Jungle Fighters|r and |cRXP_ENEMY_Kurzen Medicine Men|r. Loot the |cRXP_ENEMY_Kurzen Medicine Men|r for their |cRXP_LOOT_Jungle Remedies|r
    >>|cRXP_WARN_Hold onto any|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_you find. Trade or sell duplicates|r
    .complete 203,1 
    .complete 204,1 
    .mob Kurzen Jungle Fighter
    .mob Kurzen Medicine Man
step
    #label Fern
    .goto Stranglethorn Vale,44.086,9.538
    >>Open the |cRXP_PICK_Kurzen Supplies|r. Loot it for the |cRXP_LOOT_Venom Fern Extract|r
    .complete 204,2 
step
    .isOnQuest 200
    .isQuestTurnedIn 215
    #completewith next
    .goto Stranglethorn Vale,44.93,10.25,0
    >>Kill |cRXP_ENEMY_Kurzen Jungle Fighters|r and |cRXP_ENEMY_Kurzen Medicine Men|r. Loot the |cRXP_ENEMY_Kurzen Medicine Men|r for their |cRXP_LOOT_Jungle Remedies|r
    >>|cRXP_WARN_Hold onto any|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_you find. Trade or sell duplicates|r
    .complete 203,1 
    .complete 204,1 
    .mob Kurzen Jungle Fighter
    .mob Kurzen Medicine Man
step
    .isOnQuest 200
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,43.669,9.372
    >>Click on |cRXP_PICK_Bookie Herod's Records|r upstairs in the house
    .turnin 200 >> Turn in Bookie Herod
    .accept 328 >> Accept The Hidden Key
step
    .goto Stranglethorn Vale,44.93,10.25
    >>Kill |cRXP_ENEMY_Kurzen Jungle Fighters|r and |cRXP_ENEMY_Kurzen Medicine Men|r. Loot the |cRXP_ENEMY_Kurzen Medicine Men|r for their |cRXP_LOOT_Jungle Remedies|r
    >>|cRXP_ENEMY_Kurzen Medicine Men|r |cRXP_WARN_also drop|r |T134413:0|t[Liferoot]|cRXP_WARN_. Save these for your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest later|r << Warrior
    >>|cRXP_WARN_Hold onto any|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_you find. Trade or sell duplicates|r
    .complete 203,1 
    .complete 204,1 
    .mob Kurzen Jungle Fighter
    .mob Kurzen Medicine Man
step
    .goto Stranglethorn Vale,46.75,15.81
    >>Kill |cRXP_ENEMY_Stranglethorn Tigers|r
    .complete 186,1 
    .mob Stranglethorn Tiger
step
    #sticky
    #label hostileTakeover
    .goto Stranglethorn Vale,45.18,22.65,75,0
    .goto Stranglethorn Vale,45.55,18.78,75,0
    .goto Stranglethorn Vale,43.42,17.00,75,0
    .goto Stranglethorn Vale,45.18,22.65,75,0
    .goto Stranglethorn Vale,45.55,18.78
    >>Kill |cRXP_ENEMY_Venture Co. Geologists|r. Loot them for their |cRXP_LOOT_Crystals|r
    .complete 213,1 
    .mob Venture Co. Geologist
step
    >>This quest is sharable, one of you can stay and farm geologists
    .goto Stranglethorn Vale,51.0,35.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Knaz Blunderflame|r
    .accept 97420 >> Accept Reduce, Reuse, Reconcile
    .target Knaz Blunderflame
step
    >>Kill |cRXP_ENEMY_Venture Co. Mechanics|r. Loot them for their |cRXP_LOOT_Crude Oil|r
    .complete 97420,1
step
    #requires hostileTakeover
    .goto Stranglethorn Vale,51.0,35.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Knaz Blunderflame|r
    .turnin 97420 >> Turn in Reduce, Reuse, Reconcile
    .target Knaz Blunderflame
step
    .goto Stranglethorn Vale,41.50,12.00,50,0
    .goto Stranglethorn Vale,42.74,12.40,50,0
    .goto Stranglethorn Vale,41.43,9.77,50,0
    .goto Stranglethorn Vale,40.67,11.65,50,0
    .goto Stranglethorn Vale,41.50,12.00
    >>Kill |cRXP_ENEMY_Young Panthers|r
    .complete 190,1 
    .mob Young Panther
step
    .goto Stranglethorn Vale,38.017,3.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r
    .turnin 203 >> Turn in The Second Rebellion
    .turnin 204 >> Turn in Bad Medicine
    .target Sergeant Yohwa
step
    .goto Stranglethorn Vale,37.740,3.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Kaleb|r
    .accept 210 >> Accept Krazek's Cookery
    .target Corporal Kaleb
step
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 215 >> Turn in Jungle Secrets
    .isOnQuest 215
    .target Lieutenant Doren
step
    .isOnQuest 198
    .goto Stranglethorn Vale,38.01,3.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Thorsen|r
    .turnin 198 >>Turn in Supplies to Private Thorsen
    .target Private Thorsen
step
    #completewith next
    .goto Stranglethorn Vale,32.6,8.8,0
    .goto Stranglethorn Vale,36.8,10.6,0
    .goto Stranglethorn Vale,40.8,13.8,0
    >>Skippable quest, prio one person
    >>Kill |cRXP_ENEMY_River Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
    .complete 575,1 
    .mob River Crocolisk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r, |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 194 >> Accept Raptor Mastery
    .goto Stranglethorn Vale,35.658,10.808
    .turnin 186 >> Turn in Tiger Mastery
    .accept 187 >> Accept Tiger Mastery
    .goto Stranglethorn Vale,35.616,10.619
    .turnin 190 >>Turn in Panther Mastery
    .accept 191 >> Accept Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .target Hemet Nesingwary
    .target Ajeck Rouack
    .target Sir S. J. Erlgadin
step
    #completewith next
    >>Kill |cRXP_ENEMY_Panthers|r
    .complete 191,1 
    .mob Panther
step
    .goto Stranglethorn Vale,31.52,16.61,60,0
    .goto Stranglethorn Vale,31.91,19.93,60,0
    .goto Stranglethorn Vale,34.36,18.58,60,0
    .goto Stranglethorn Vale,31.52,16.61,60,0
    .goto Stranglethorn Vale,31.91,19.93
    >>Kill |cRXP_ENEMY_Elder Stranglethorn Tigers|r
    .complete 187,1 
    .mob Elder Stranglethorn Tiger
step
    .goto Stranglethorn Vale,30.4,12.4,60,0
    .goto Stranglethorn Vale,29.4,8.8,60,0
    .goto Stranglethorn Vale,28.2,12.0,60,0
    .goto Stranglethorn Vale,28.2,16.4,60,0
    .goto Stranglethorn Vale,29.8,11.2
    >>Kill |cRXP_ENEMY_Panthers|r
    .complete 191,1 
    .mob Panther
step
    #completewith next
    .goto Stranglethorn Vale,27.35,18.52,0
    .goto Stranglethorn Vale,25.53,17.73,0
    .goto Stranglethorn Vale,23.25,17.21,0
    >>Kill |cRXP_ENEMY_Crystal Spine Basilisks|r. Loot them for their |cRXP_LOOT_Shards|r
    >>|cRXP_ENEMY_Crystal Spine Basilisks|r |cRXP_WARN_will cast|r |T132154:0|t[Crystal Gaze] |cRXP_WARN_which is a 6 second long stun. Simply move out of their melee range when they begin to cast to avoid it|r
    .complete 605,1 
    .mob Crystal Spine Basilisk
step
    .goto Stranglethorn Vale,27.61,15.39,60,0
    .goto Stranglethorn Vale,25.91,16.33,60,0
    .goto Stranglethorn Vale,24.24,15.84,60,0
    .goto Stranglethorn Vale,27.16,16.06
    >>Kill |cRXP_ENEMY_Stranglethorn Raptors|r
    .complete 194,1 
    .mob Stranglethorn Raptor
step
    .goto Stranglethorn Vale,27.35,18.52,50,0
    .goto Stranglethorn Vale,25.53,17.73,50,0
    .goto Stranglethorn Vale,23.25,17.21,50,0
    .goto Stranglethorn Vale,25.53,17.73
    >>Kill |cRXP_ENEMY_Crystal Spine Basilisks|r. Loot them for their |cRXP_LOOT_Shards|r
    >>|cRXP_ENEMY_Crystal Spine Basilisks|r |cRXP_WARN_will cast|r |T132154:0|t[Crystal Gaze] |cRXP_WARN_which is a 6 second long stun. Simply move out of their melee range when they begin to cast to avoid it|r
    .complete 605,1 
    .mob Crystal Spine Basilisk
step
    .goto Stranglethorn Vale,21.580,21.842
    .goto Stranglethorn Vale,21.580,21.842 >> Travel to the Haunted Island
    .complete 578,1
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step
    #completewith next
    .goto Stranglethorn Vale,35.658,10.808,80 >> Travel to Nesingwary's Expedition
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r, |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 194 >> Turn in Raptor Mastery
    .goto Stranglethorn Vale,35.658,10.808
    .turnin 187 >> Turn in Tiger Mastery
    .goto Stranglethorn Vale,35.616,10.619
    .turnin 191 >> Turn in Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .target Hemet Nesingwary
    .target Ajeck Rouack
    .target Sir S. J. Erlgadin
step << Druid
    #completewith next
    .cast 18960 >> Cast Teleport: Moonglade
    .zoneskip Moonglade
step << Druid
    >>Teleport to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .goto Moonglade,52.53,40.56
    .trainer >> Train your class spells
    .target Loganaar
step
    #completewith next
    .hs >> Hearth to Booty Bay
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
    >>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
    .goto Stranglethorn Vale,27.120,77.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .turnin 605 >> Turn in Singing Blue Shards
    .target Crank Fizzlebub
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r and |cRXP_FRIENDLY_Krazek|r up stairs on the top floor
    .turnin 213 >>Turn in Hostile Takeover
    .accept 189 >> Accept Bloodscalp Ears
    .goto Stranglethorn Vale,27.000,77.124
    .turnin 201 >> Turn in Investigate the Camp
    .turnin 210 >> Turn in Krazek's Cookery
    .goto Stranglethorn Vale,26.943,77.207
    .target Kebok
    .target Krazek
step
    .goto Stranglethorn Vale,27.227,76.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 578 >> Turn in The Stone of the Tides
    .accept 601 >> Accept Water Elementals
    .target Baron Revilgaz
step
    .isQuestComplete 575
    .goto Stranglethorn Vale,28.294,77.592
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 575 >> Turn in Supply and Demand
    .accept 577 >> Accept Some Assembly Required
    .target Drizzlik
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
    .goto Stranglethorn Vale,27.530,77.787
    .fly Westfall >> Fly to Westfall
    .target Gyll
step
    .isOnQuest 231
    >>Click |cRXP_PICK_A Weathered Grave|r
    .goto Duskwood,17.72,29.07
    .turnin 231 >> Turn in A Daughter's Love
step
    .destroy 2154 >> Delete the |T133741:0|t[The Story of Morgan Ladimore]
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Ironforge >> Fly to Ironforge
    .target Thor
step
    .goto 1455,18.564,51.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Firebrew|r
    .home >> Set your Hearthstone to Ironforge
    .target Innkeeper Firebrew
step << Warlock
    .goto 1455/0,-1117.60,-4615.14,15,0
    .goto 1455/0,-1111.62,-4599.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
    .trainer >> Train your class spells
    .target Briarthorn
step << Shaman
    .goto 1455,47.334,13.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eldun Stormbreaker|r
    .trainer >> Train your class spells
    .target Eldun Stormbreaker
step << Rogue
    .goto 1455,51.6,14.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hulfdan Blackbeard|r
    .trainer >> Train your class spells
    .target Hulfdan Blackbeard
step << Paladin
    .goto 1455/0,-907.69,-4592.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldruk Doombrow|r
    .trainer >> Train your class spells
    .target Beldruk Doombrow
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Cap/Malz Duo Catchup XP
--#groupid RXP-SRGCE-A1
#name 39-40 Stranglethorn Vale
#next 40-40 Dustwallow
-- #defaultfor Dwarf/Gnome/Human


step
    #label FlyDW
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .goto Stormwind City,66.277,62.137
    .fly Duskwood >>Fly to Duskwood
    .target Dungar Longdrink
step
    .goto Duskwood,73.872,44.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
    .home >> Set your Hearthstone to Duskwood
    .target Innkeeper Trelayne
step
    #label TravelSoS
    #completewith SoSEntry
    .goto Duskwood,89.75,41.31,0
    .goto Swamp of Sorrows,6.59,60.19
    .zone Swamp of Sorrows >> Travel to Swamp of Sorrows
step
    #completewith endSoS
    #requries TravelSoS
    +While questing in Swamp of Sorrows watch out for |cRXP_ENEMY_Stonard Explorers|r they can be found on roads and in camps scattered around the zone.
    >>|cRXP_WARN_While not dangerous on their own any hostile action towards them WILL PVP FLAG YOU|r
    .unitscan Stonard Explorer
step
    #label SoSEntry
    .goto Swamp of Sorrows,26.74,59.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
    .accept 1396 >>Accept Encroaching Wildlife
    .target Watcher Biggs
step
    #completewith NoboruTurnin
    .goto Swamp of Sorrows,28.20,43.83,0
    >>Kill |cRXP_ENEMY_Young Sawtooth Crocolisks|r, |cRXP_ENEMY_Sorrow Spinners|r and |cRXP_ENEMY_Swamp Jaguars|r
    .complete 1396,1 
    .complete 1396,2 
    .complete 1396,3 
    .mob Young Sawtooth Crocolisk
    .mob Sorrow Spinner
    .mob Swamp Jaguar
step
    #loop
    .goto Swamp of Sorrows,32.81,38.68,0,70
    .goto Swamp of Sorrows,34.88,45.88,0,70
    .goto Swamp of Sorrows,38.34,38.75,0,70
    .goto Swamp of Sorrows,40.53,32.83,0,70
    .goto Swamp of Sorrows,45.18,36.70,0,70
    .goto Swamp of Sorrows,50.58,39.02,0,70
    .goto Swamp of Sorrows,55.50,36.75,0,70
    .line Swamp of Sorrows,55.70,34.14,55.92,35.96,55.57,37.64,53.27,38.99,51.27,38.82,48.70,38.56,47.29,38.39,46.52,38.69,45.67,36.55,44.34,34.66,42.27,32.14,40.86,32.36,40.23,34.79,38.81,35.80,38.08,41.22,37.91,43.29,36.75,46.43,33.50,44.03,33.37,40.43,32.61,38.67,32.16,37.15,32.26,36.24,33.44,40.35,33.46,43.98,36.65,46.42,37.85,43.51,38.10,40.89,38.48,37.66,38.84,35.82,40.41,34.13,40.87,32.43,42.18,32.07,44.92,35.47,45.66,36.52,46.35,38.74,47.56,38.35,52.43,39.04,53.25,39.13,55.39,37.60
    >>Kill |cRXP_ENEMY_Noboru the Cudgel|r. Loot him for |T133485:0|t[|cRXP_LOOT_Noboru's Cudgel|r]
    .use 6196 >>|cRXP_WARN_Use |T133485:0|t[|cRXP_LOOT_Noboru's Cudgel|r] to start the quest|r
    >>|cRXP_ENEMY_Noboru the Cudgel|r |cRXP_WARN_patrols a large section of Swamp of Sorrows. The patrol path is marked on your map. He spawns where the patrol route starts on the eastern point|r
    .collect 6196,1,1392,1 
    .accept 1392 >>Accept Noboru the Cudgel
    .unitscan Noboru the Cudgel
step
    #label NoboruTurnin
    .goto Swamp of Sorrows,25.983,31.412
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magtoor|r
    .turnin 1392 >>Turn in Noboru the Cudgel
    .accept 1389 >>Accept Draenethyst Crystals
    .target Magtoor
step
    >>Kill |cRXP_ENEMY_Young Sawtooth Crocolisks|r, |cRXP_ENEMY_Sorrow Spinners|r and |cRXP_ENEMY_Swamp Jaguars|r
    .complete 1396,1 
    .goto Swamp of Sorrows,23.0,45.6,70,0
    .goto Swamp of Sorrows,26.6,36.2,70,0
    .goto Swamp of Sorrows,39.0,34.8,70,0
    .goto Swamp of Sorrows,34.2,49.8,70,0
    .goto Swamp of Sorrows,26.6,52.4,70,0
    .goto Swamp of Sorrows,26.6,36.2,70,0
    .goto Swamp of Sorrows,39.0,34.8,70,0
    .goto Swamp of Sorrows,34.2,49.8,70,0
    .goto Swamp of Sorrows,26.6,52.4
    .complete 1396,2 
    .goto Swamp of Sorrows,19.2,54.6,70,0
    .goto Swamp of Sorrows,25.0,61.6,70,0
    .goto Swamp of Sorrows,33.2,51.8,70,0
    .goto Swamp of Sorrows,26.6,47.0,70,0
    .goto Swamp of Sorrows,37.6,30.0,70,0
    .goto Swamp of Sorrows,44.0,42.4,70,0
    .goto Swamp of Sorrows,26.6,47.0
    .complete 1396,3 
    .goto Swamp of Sorrows,22.8,42.4,70,0
    .goto Swamp of Sorrows,33.6,54.0,70,0
    .goto Swamp of Sorrows,47.8,39.8,70,0
    .goto Swamp of Sorrows,26.2,35.2,70,0
    .goto Swamp of Sorrows,23.2,59.8,70,0
    .goto Swamp of Sorrows,44.0,41.6
    .mob Young Sawtooth Crocolisk
    .mob Sorrow Spinner
    .mob Swamp Jaguar
step
    #label wildlife2
    .goto Swamp of Sorrows,26.74,59.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
    .turnin 1396 >>Turn in Encroaching Wildlife
    .accept 1421 >>Accept The Lost Caravan
    .target Watcher Biggs
step
    #completewith next
    .goto Swamp of Sorrows,57.29,30.73,200 >> Travel to Fallow Sanctuary
step
    #completewith EscortGalen
    .isOnQuest 1373
    .goto Swamp of Sorrows,65.036,21.976,0
    .goto Swamp of Sorrows,60.537,23.175,0
    >>Kill |cRXP_ENEMY_Ongeku|r. Loot him for his |cRXP_LOOT_Shard|r
    >>|cRXP_ENEMY_Ongeku|r |cRXP_WARN_can be in a random location throughout Fallow Sanctuary|r
    .complete 1373,1 
    .unitscan Ongeku
step
    #completewith OngekuShard
    .isOnQuest 1389
    >>Loot the |cRXP_LOOT_Draenethyst Crystals|r on the ground
    .goto Swamp of Sorrows,63.26,22.35,0
    .complete 1389,1 
step
    .isOnQuest 1421
    >>Open the |cRXP_PICK_Caravan Chest|r. Loot it for the |cRXP_LOOT_Wizards' Reagents|r
    >>|cRXP_WARN_Avoid going through the middle of Fallow Sanctuary|r
    .goto Swamp of Sorrows,64.468,18.313
    .complete 1421,1 
step
    .goto Swamp of Sorrows,65.471,18.153
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galen Goodward|r
    >>|cRXP_WARN_This will start an escort quest|r
    .accept 1393 >>Accept Galen's Escape
    .target Galen Goodward
step
    #label EscortGalen
    .isOnQuest 1393
    .goto Swamp of Sorrows,53.045,29.644
    >>Escort |cRXP_FRIENDLY_Galen|r through Fallow Sanctuary to safety
    .complete 1393,1 
    .target Galen Goodward
step
    #label OngekuShard
    .isOnQuest 1373
    .goto Swamp of Sorrows,65.036,21.976,0
    .goto Swamp of Sorrows,65.036,21.976,55,0
    .goto Swamp of Sorrows,60.537,23.175
    >>Kill |cRXP_ENEMY_Ongeku|r. Loot him for his |cRXP_LOOT_Shard|r
    >>|cRXP_ENEMY_Ongeku|r |cRXP_WARN_can be in a random location throughout Fallow Sanctuary|r
    .complete 1373,1 
    .unitscan Ongeku
step
    .goto Swamp of Sorrows,47.806,39.760
    >>Click |cRXP_PICK_Galen's Strongbox|r on the ground
    .turnin 1393 >>Turn in Galen's Escape
step
    .isOnQuest 1389
    >>Loot the |cRXP_LOOT_Draenethyst Crystals|r on the ground
    .goto Swamp of Sorrows,65.15,21.92,70,0
    .goto Swamp of Sorrows,61.22,22.97,70,0
    .goto Swamp of Sorrows,57.43,26.08,70,0
    .goto Swamp of Sorrows,55.20,28.24,70,0
    .goto Swamp of Sorrows,57.43,26.08
    .complete 1389,1 
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magtoor|r
    .goto Swamp of Sorrows,25.983,31.412
    .turnin 1389 >>Turn in Draenethyst Crystals
    .target Magtoor
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
    .goto Swamp of Sorrows,26.74,59.82
    .turnin 1421 >>Turn in The Lost Caravan
    .target Watcher Biggs
step
    #label endSoS
    .goto Swamp of Sorrows,67.00,47.00
    >>Swim to the middle of the Pool of Tears
    >>Be careful not to run too close to Stonard on your way there. Avoid fighting any of the higher level dragonkin on the way as well
    .complete 1448,1
step
    .hs >> Hearth to Duskwood
step
    .goto Duskwood,44.598,87.565,0
    .goto Stranglethorn Vale,40.635,3.514,40,0
    .goto Stranglethorn Vale,38.63,5.05
    .subzone 99 >> Travel to the Rebel Camp in northern Stranglethorn Vale
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r and |cRXP_FRIENDLY_Brother Nimetz|r
    .accept 574 >> Accept Special Forces
    .goto Stranglethorn Vale,38.017,3.330
    .accept 207 >> Accept Kurzen's Mystery
    .goto Stranglethorn Vale,37.832,3.559
    .target Sergeant Yohwa
    .target Brother Nimetz
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r, |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 195 >> Accept Raptor Mastery
    .goto Stranglethorn Vale,35.658,10.808
    .accept 188 >> Accept Tiger Mastery
    .goto Stranglethorn Vale,35.616,10.619
    .accept 192 >> Accept Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .target Hemet Nesingwary
    .target Ajeck Rouack
    .target Sir S. J. Erlgadin
step
    .goto Stranglethorn Vale,44.261,7.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wendel Mathers|r in the tower
    >>|cRXP_WARN_He has a respawn timer of around 3 minutes|r
    .accept 97047 >> Accept The Cook in the Cage
    .target Wendel Mathers
step
    #completewith SpecialForces
    .goto Stranglethorn Vale,46.30,7.61,30 >> Enter The Stockpile (Kurzen's Cave)
step
    #completewith next
    >>Kill |cRXP_ENEMY_Kurzen Elites|r and |cRXP_ENEMY_Kurzen Subchiefs|r for the |cRXP_LOOT_Compound Cage Key|r
    .complete 97047,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
step
    .goto Stranglethorn Vale,49.616,7.743
    >>Open the |cRXP_PICK_Kurzen Supply Crate|r. Loot it for the |cRXP_LOOT_Kurzen Fighter's Uniform|r
    .complete 97047,2
step
    #completewith next
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,49.617,7.562
    >>Click |cRXP_PICK_Bookie Herod's Strongbox|r on the ground
    .turnin 328 >> Turn in The Hidden Key
    .accept 329 >> Accept The Spy Revealed!
step
    .train 425103,1
    .goto Stranglethorn Vale,49.943,3.953,40,0
    .goto Stranglethorn Vale,49.617,7.562,40,0
    .goto Stranglethorn Vale,49.25,6.18
    >>Kill |cRXP_ENEMY_Kurzen Elites|r and |cRXP_ENEMY_Kurzen Subchiefs|r for the |cRXP_LOOT_Compound Cage Key|r
    .complete 97047,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
step
    #label SpecialForces
    .goto Stranglethorn Vale,46.45,6.89,40,0
    .goto Stranglethorn Vale,47.89,7.77,40,0
    .goto Stranglethorn Vale,46.45,6.89
    >>Kill |cRXP_ENEMY_Kurzen Commandos|r and |cRXP_ENEMY_Kurzen Headshrinkers|r. Loot them for their |T132905:0|t[Silk Cloth]
    >>|cRXP_WARN_Be cautious of |cRXP_ENEMY_Kurzen Commandos|r in|r |T132320:0|t[Stealth]
    >>|cRXP_WARN_Save 15|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for a quest for later in Searing Gorge. You don't need to collect all 15 now|r
    .collect 4306,15,4449,1,1 
    .complete 574,1 
    .complete 574,2 
    .mob Kurzen Commando
    .mob Kurzen Headshrinker
step
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,49.617,7.562
    >>Click |cRXP_PICK_Bookie Herod's Strongbox|r on the ground
    .turnin 328 >> Turn in The Hidden Key
    .accept 329 >> Accept The Spy Revealed!
step
    #completewith next
    .goto Stranglethorn Vale,44.261,7.908,60 >> Exit the cave. Travel toward |cRXP_FRIENDLY_Wendel Mathers|r in the tower outside
step
    .goto Stranglethorn Vale,44.261,7.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wendel Mathers|r in the tower
    >>|cRXP_WARN_He has a respawn timer of around 3 minutes|r
    .turnin 97047 >> Turn in The Cook in the Cage
    .accept 97048 >> Accept Returning to Port
    .target Wendel Mathers
step
    .goto Stranglethorn Vale,48.64,22.95,75,0
    .goto Stranglethorn Vale,48.86,23.48
    .goto Stranglethorn Vale,48.79,19.96
    .goto Stranglethorn Vale,36.09,37.29,0
    >>Kill |cRXP_ENEMY_Shadowmaw Panthers|r
    >>|cRXP_ENEMY_Shadowmaw Panthers|r |cRXP_WARN_are in|r |T132320:0|t[Stealth]
    >>|cRXP_WARN_You can find more further south-west if needed. The location is marked on your map|r
    >>|cRXP_WARN_They also share spawns with|r |cRXP_ENEMY_Shadowmaw Tigresses|r
    .complete 192,1 
    .mob Shadowmaw Panther
step
    #completewith next
    >>Kill |cRXP_ENEMY_Lashtail Raptors|r
    >>|cRXP_ENEMY_Lashtail Raptors|r |cRXP_WARN_cast|r |T132109:0|t[Lash] |cRXP_WARN_which is a 2 second stun|r
    >>|cRXP_WARN_They can also|r |T132343:0|t[Disarm] |cRXP_WARN_you for 5 seconds|r << Warrior/Rogue/Paladin
    .complete 195,1 
    .mob Lashtail Raptor
step
    .goto Stranglethorn Vale,38.10,20.50,70,0
    .goto Stranglethorn Vale,36.98,24.90,70,0
    .goto Stranglethorn Vale,34.24,26.16,70,0
    .goto Stranglethorn Vale,31.37,22.28
    >>Kill |cRXP_ENEMY_Lashtail Raptors|r
    >>|cRXP_ENEMY_Lashtail Raptors|r |cRXP_WARN_cast|r |T132109:0|t[Lash] |cRXP_WARN_which is a 2 second stun|r
    >>|cRXP_WARN_They can also|r |T132343:0|t[Disarm] |cRXP_WARN_you for 5 seconds|r << Warrior/Rogue/Paladin
    .complete 195,1 
    .mob Lashtail Raptor
step
    >>Kill |cRXP_ENEMY_Sin'Dall|r. Loot him for his |cRXP_LOOT_Paw|r
    >>|cRXP_ENEMY_Sin'Dall|r |cRXP_WARN_can be on top of the Plateau, or patrolling around it|r
    .goto Stranglethorn Vale,32.23,17.24
    .complete 188,1 
    .unitscan Sin'Dall
step
    >>This quest might tie into the Drowned City
    #completewith next
    .goto Stranglethorn Vale,29.471,19.119,70 >> Travel to the Bal'lal Ruins
step
    #completewith KurzenMystery1
    >>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r
    .complete 189,1
step
    .goto Stranglethorn Vale,29.471,19.119
    >>Open the |cRXP_PICK_Moon Over the Vale|r. Loot it for |cRXP_LOOT_The First Troll Legend|r
    .complete 207,1 
step
    #completewith next
    .goto Stranglethorn Vale,24.719,8.905,150 >> Travel to the Ruins of Zul'Kunda
step
    .goto Stranglethorn Vale,24.719,8.905
    >>Open |cRXP_PICK_The Emperor's Tomb|r. Loot it for |cRXP_LOOT_The Fourth Troll Legend|r
    .complete 207,4 
step
    .goto Stranglethorn Vale,23.4,12.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zimmix Sputterspark|r
    .accept 97329 >> Accept Where's the Key?
    .target Zimmix Sputterspark
step
    #sticky
    #label primitiveKey
    >> Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for the |cRXP_LOOT_Primitive Key|r
    .complete 97329,1
step
    .goto Stranglethorn Vale,22.94,12.01
    >>Open the |cRXP_PICK_Fall of Gurubashi|r. Loot it for |cRXP_LOOT_The Third Troll Legend|r
    .complete 207,3 
step
    #requires primitiveKey
    .goto Stranglethorn Vale,23.4,12.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zimmix Sputterspark|r
    .turnin 97329 >> Turn in Where's the Key?
    .accept 97331,1 >> Accept Zimmix's Great Escape
    .target Zimmix Sputterspark
step
    >> Escort Zimmix to wherever he wants to go
    .complete 97331,1
step
    #optional
    #completewith next
    #label KurzenMystery1
    .goto Stranglethorn Vale,21.10,22.84,125 >> Travel to the Haunted Island
step
    .goto Stranglethorn Vale,21.10,22.84
    >>Kill |cRXP_ENEMY_Lesser Water Elementals|r. Loot them for their |cRXP_LOOT_Bracers|r
    .complete 601,1 
    .mob Lesser Water Elemental
step
    #label UnderwaterLegend
    .goto Stranglethorn Vale,24.765,22.871
    >>Open |cRXP_PICK_Gri'lek the Wanderer|r underwater. Loot it for |cRXP_LOOT_The Second Troll Legend|r
    .complete 207,2
step
    #completewith next
    .goto Stranglethorn Vale,35.658,10.808,80 >> Travel to Nesingwary's Expedition
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r, |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 195 >> Turn in Raptor Mastery
    .accept 196 >> Accept Raptor Mastery
    .goto Stranglethorn Vale,35.658,10.808
    .turnin 188 >> Turn in Tiger Mastery
    .goto Stranglethorn Vale,35.616,10.619
    .turnin 192 >> Turn in Panther Mastery
    .accept 193 >> Accept Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .target Hemet Nesingwary
    .target Ajeck Rouack
    .target Sir S. J. Erlgadin
step
    #completewith next
    +Travel to the Rebel Camp
step
    .goto Stranglethorn Vale,37.832,3.559
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
    .turnin 207 >> Turn in Kurzen's Mystery
    .target Brother Nimetz
step
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 574 >> Turn in Special Forces
    .accept 202 >> Accept Colonel Kurzen
    .turnin 329 >> Turn in The Spy Revealed!
    .accept 330 >> Accept Patrol Schedules
    .target Lieutenant Doren
step
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 574 >> Turn in Special Forces
    .accept 202 >> Accept Colonel Kurzen
    .target Lieutenant Doren
step
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,37.66,3.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Sethman|r
    .turnin 330 >> Turn in Patrol Schedules
    .accept 331 >> Accept Report to Doren
    .target Corporal Sethman
step
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 331 >> Turn in Report to Doren
    .target Lieutenant Doren
step
    .goto Stranglethorn Vale,27.27,49.48,70,0
    .goto Stranglethorn Vale,28.13,47.27,70,0
    .goto Stranglethorn Vale,28.66,43.72,70,0
    .goto Stranglethorn Vale,31.22,43.40,70,0
    .goto Stranglethorn Vale,31.85,40.88
    >>Kill |cRXP_ENEMY_Jungle Stalkers|r
    .complete 196,1 
    .mob Jungle Stalker
step
    .goto Stranglethorn Vale,47.2,28.0,35,0
    .goto Stranglethorn Vale,49.8,24.6,35,0
    .goto Stranglethorn Vale,48.4,19.2,35,0
    .goto Stranglethorn Vale,49.54,24.17
    .goto Stranglethorn Vale,47.2,28.0,0
    .goto Stranglethorn Vale,49.8,24.6,0
    .goto Stranglethorn Vale,48.4,19.2,0
    >>Kill |cRXP_ENEMY_Bhag'thera|r. Loot him for the |cRXP_LOOT_Fang of Bhag'thera|r
    >>|cRXP_ENEMY_Bhag'thera|r |cRXP_WARN_can spawn north or west of the Mosh'Ogg Ogre Mound|r
    .complete 193,1 
    .unitscan Bhag'thera
step
    #completewith next
    .goto Stranglethorn Vale,46.30,7.61,30 >> Enter The Stockpile (Kurzen's Cave)
step
    .isOnQuest 202
    >>Kill |cRXP_ENEMY_Kurzen Elites|r and |cRXP_ENEMY_Kurzen Subchiefs|r
    >>Kill |cRXP_ENEMY_Colonel Kurzen|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_If you can't kill |cRXP_ENEMY_Colonel Kurzen|r skip this step|r
    .complete 202,1 
    .complete 202,2 
    .complete 202,3 
    .mob Kurzen Elite
    .mob Kurzen Subchief
    .mob Colonel Kurzen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 193 >> Turn in Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .turnin 196 >> Turn in Raptor Mastery
    .accept 197 >> Accept Raptor Mastery
    .goto Stranglethorn Vale,35.658,10.808
    .target Sir S. J. Erlgadin
    .target Hemet Nesingwary
step
    .goto Stranglethorn Vale,38.042,3.012
    .target Lieutenant Doren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 202 >> Turn in Colonel Kurzen
step << Druid
    #completewith next
    .cast 18960 >> Cast Teleport: Moonglade
    .zoneskip Moonglade
step << Druid
    >>Teleport to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .goto Moonglade,52.53,40.56
    .trainer >> Train your class spells
    .target Loganaar
step
    .hs >> Hearth to Duskwood
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
    >>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    .fly Booty Bay >> Fly to Booty Bay
    .target Felicia Maline
step
    #label BBTurnins
    .goto Stranglethorn Vale,27.227,76.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 601 >> Turn in Water Elementals
    .accept 602 >> Accept Magical Analysis
    .target Baron Revilgaz
step
    .goto Stranglethorn Vale,27.000,77.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r up stairs on the top floor
    .turnin -189 >> Turn in Bloodscalp Ears
    .target Kebok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dudd Fizzlescroll|r
    .turnin -95384 >> Turn in Partial Mystical Notes
    .goto Stranglethorn Vale,28.2,76.2
    .target Dudd Fizzlescroll
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Aransas|r
    .turnin 97048 >> Turn in Returning to Port
    .goto Stranglethorn Vale,27.681,76.648
    .target Captain Aransas
step
    .goto Stranglethorn Vale,26.4,73.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wharfmaster Lozgil|r
    .turnin 97331 >> Turn in Bloodscalp Ears
    .target Wharfmaster Lozgil
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
    .goto Stranglethorn Vale,27.530,77.787
    .fly Ironforge >> Fly to Ironforge
    .target Gyll
step
    .goto 1455/0,-856.69,-4841.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Firebrew|r
    .home >> Set your Hearthstone to Ironforge
    .target Innkeeper Firebrew
step
    .goto Ironforge,55.50,47.74
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .fly Wetlands >> Fly to Menethil Harbor
    .target Gryth Thurden
]])