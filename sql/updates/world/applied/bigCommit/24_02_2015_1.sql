SET @TYRANDE 		:= 15633;
SET @ERANIKUS 		:= 15491;
SET @REMULOS		:= 11832;
SET @PHANTASM		:= 15629;
SET @E_REDEEM		:= 15628;

DELETE FROM `creature_ai_scripts` WHERE creature_id=@ERANIKUS;
-- Tyrande
UPDATE `creature_template` SET AIName='SmartAI', ScriptName='', flags_extra=0, type_flags=0, unit_flags=32768, faction=1254 WHERE entry=@TYRANDE;
-- Eranikus, Tyrant of the Dream
UPDATE `creature_template` SET AIName='SmartAI', ScriptName='', InhabitType=7, faction=35, unit_flags=0, flags_extra=2097152, type_flags=8, dynamicflags=128, speed_walk=2 WHERE entry=@ERANIKUS;
-- Keeper Remulos
UPDATE `creature_template` SET AIName='SmartAI', ScriptName='', speed_walk=2.5, speed_run=3.75, type_flags=0, unit_flags=32768, faction=1254 WHERE entry=@REMULOS;


-- NPC texts
DELETE FROM `creature_text` WHERE entry IN (@REMULOS,@ERANIKUS,@PHANTASM,@TYRANDE,@E_REDEEM);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@REMULOS,0,0,"We will locate the origin of the Nightmare through the fragments you collected, $n. From there, we will pull Eranikus through a rift in the Dream. Steel yourself, $c. We are inviting the embodiment of the Nightmare into our world.",12,0,100,0,0,0,'Keeper Remulos Say 0'),
(@REMULOS,1,1,"The rift will be opened there, above the Lake Elun'ara. Prepare yourself, $n. Eranikus's entry into our world will be wrought with chaos and strife.",12,0,100,0,0,0,'Keeper Remulos Say 1'),
(@REMULOS,2,2,"He will stop at nothing to get to Malfurion's physical manifistation. That must not happen... We must keep the beast occupied long enough for Tyrande to arrive.",12,0,100,0,0,0,'Keeper Remulos Say 2'),
(@REMULOS,3,3,"Defend Nighthaven, hero...",12,0,100,0,0,0,'Keeper Remulos Say 3'),
(@REMULOS,4,4,"Fiend! Face the might of Cenarius!",14,0,100,0,0,0,'Keeper Remulos Say 4'),
(@REMULOS,5,5,"Who is the predictable one, beast? Surely you did not think that we would summon you on top of Malfurion? Your redemption comes, Eranikus. You will be cleansed of this madness - this corruption.",14,0,100,0,0,0,'Keeper Remulos Say 4'),
(@REMULOS,6,6,"Hurry, $N! We must find protective cover!",12,0,100,0,0,0,'Keeper Remulos Say 6'),
(@REMULOS,7,7,"Please, champion, protect our people.",12,0,100,0,0,0,'Keeper Remulos Say 7'),
(@REMULOS,8,8,"It will be done, Eranikus. Be well, ancient one.",12,0,100,0,0,0,'Keeper Remulos Say 8'),
(@REMULOS,9,9,"Let us leave Nighthaven, hero Seek me out at the grove.",12,0,100,0,0,0,'Keeper Remulos Say 9'),
(@ERANIKUS,0,0,"Pitful predictable mortals... You know not what you have done! The master''s will fulfilled. The Moonglade shall be destroyed and Malfurion along with it!",14,0,100,0,0,0,'Eranikus Say 0'),
(@ERANIKUS,1,1,"Eranikus, Tyrant of the Dream lets loose a sinister laugh.",16,0,100,0,0,0,'Eranikus Say 1'),
(@ERANIKUS,2,2,"You are certanly not your father, insect. Should it interest me, I would crush you with but a swipe of my claws. Turn Shan''do Stormrage over to me and your pitiful life will be spared along with the lives of your people.",14,0,100,0,0,0,'Eranikus Say 2'),
(@ERANIKUS,3,3,"My redemption? You are bold, little one. My redemption comes by the will of my god.",14,0,100,0,0,0,'Eranikus Say 3'),
(@ERANIKUS,4,4,"Eranikus, Tyrant of the Dream roars furiously",16,0,100,0,0,0,'Eranikus Say 4'),
(@ERANIKUS,5,5,"Rise, servants of the Nightmare! Rise and destroy this world! Let there be no survivors...",14,0,100,0,0,0,'Eranikus Say 5'),
(@ERANIKUS,6,6,"Where is your savior? How long can you hold out against my attacks?",14,0,100,0,0,0,'Eranikus Say 6'),
(@ERANIKUS,7,7,"Remulos, look how easy they fall before me? You can stop this, fool. Turn the druid over to me and it will all be over...",14,0,100,0,0,0,'Eranikus Say 7'),
(@ERANIKUS,8,8,"Defeated my minions? Then face me, mortals!",14,0,100,0,0,0,'Eranikus Say 8'),
(@ERANIKUS,9,9,"IT BURNS! THE PAIN.. SEARING...",14,0,100,0,0,0,'Eranikus Say 9'),
(@ERANIKUS,10,10,"WHY? Why did this happen to... to me? Where were you Tyrande? Where were you when I fell from the grace of Elune?",14,0,100,0,0,0,'Eranikus Say 10'),
(@ERANIKUS,11,11,"I... I feel... I feel the touch of Elune upon my being once more... She smiles upon me... Yes... I...",14,0,100,0,0,0,'Eranikus Say 11'),
(@ERANIKUS,12,12,"Tyrande falls to one knee.",16,0,100,0,0,0,'Eranikus Say 12'),
(@TYRANDE,0,0,"Seek absolution, Eranikus. All will be forgiven..",14,0,100,0,0,0,'Tyrande Say 0'),
(@TYRANDE,1,1,"You will be forgiven, Eranikus. Elune will always love you. Break free of the bonds that command you!",14,0,100,0,0,0,'Tyrande Say 0'),
(@TYRANDE,2,2,"The grasp of the Old Gods is unmoving. He is consumed by their dark thoughts... I... I... I cannot... cannot channel much longer... Elune aide me.",12,0,100,0,0,0,'Tyrande Say 0'),
(@E_REDEEM,0,0,"For so long, I was lost... The Nightmare's corruption had consumed me... And now, you... all of you.. you have saved me. Released me from its grasp.",12,0,100,0,0,0,'Eranikus the Redeemed Say 0'),
(@E_REDEEM,1,1,"But... Malfurion, Cenarius, Ysera... They still fight. They need me. I must return to the Dream at once.",12,0,100,0,0,0,'Eranikus the Redeemed Say 0'),
(@E_REDEEM,2,2,"My lady, I am unworthy of your prayer. Truly, you are an angel of light. Please, assist me in returning to the barrow den so that I may return to the Dream. I like Malfurion, also have a love awaiting me... I must return to her... to protect her...",12,0,100,0,0,0,'Eranikus the Redeemed Say 0'),
(@E_REDEEM,3,3,"And heroes... I hold that which you seek. May it once more see the evil dissolved. Remulos, see to it that our champion receives the shard of the Green Flight.",12,0,100,0,0,0,'Eranikus the Redeemed Say 0'),
(@PHANTASM,0,0,"Nightmare Phantasm drinks in the suffering of the fallen.",16,0,100,0,0,0,'Nightmare Phantasm Say 0');

-- Remulos SAI
DELETE FROM `smart_scripts` WHERE entryorguid IN(@REMULOS,@REMULOS*100,@REMULOS*100+1);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@REMULOS,0,0,0,62,0,100,0,10215,0,0,0,11,57413,1,0,0,0,0,7,0,0,0,0,0,0,0,'Keeper Remulos - On gossip option select - cast spell'),
(@REMULOS,0,1,2,62,0,100,0,10215,1,0,0,11,57670,1,0,0,0,0,7,0,0,0,0,0,0,0,'Keeper Remulos - On gossip option select - cast spell'),
(@REMULOS,0,2,3,61,0,100,0,0,0,0,0,62,571,0,0,0,0,0,7,0,0,0,6408.346191,413.257690,553.104657,0.951110, 'Keeper Remulos - On link - Teleport Player'),
(@REMULOS,0,3,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Keeper Remulos - On gossip option select - Close gossip'),
(@REMULOS,0,4,0,19,0,100,0,13074,0,0,0,11,57413,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Keeper Remulos - On Quest Accept - Cast Fitful Dream'),
(@REMULOS,0,5,0,19,0,100,1,8736,0,0,0,1,0,15000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Quest Accept - Say 0'),
(@REMULOS,0,6,0,52,0,100,0,0,@REMULOS,0,0,53,0,@REMULOS,0,8736,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 0 - Start WayPoint'),
(@REMULOS,0,7,0,52,0,100,0,0,@REMULOS,0,0,83,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Quest Accept - Remove Npcflag'),
(@REMULOS,0,8,0,40,0,100,0,13,@REMULOS,0,0,54,95000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 13 - Pause WP'),
(@REMULOS,0,9,0,40,0,100,0,13,@REMULOS,0,0,1,1,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 13 - Say 1'),
(@REMULOS,0,10,0,52,0,100,0,1,@REMULOS,0,0,1,2,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 1 - Say 2'),
(@REMULOS,0,11,0,52,0,100,0,2,@REMULOS,0,0,11,25813,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 3 - Cast Conjure Dream Rift'),
(@REMULOS,0,12,0,52,0,100,0,2,@REMULOS,0,0,12,@ERANIKUS,3,3600000,0,0,0,8,0,0,0,7872.5888, -2664.55888, 497.139282,0.63583,'Keeper Remulos - On Say 3 - Summon Eranikus'),
(@REMULOS,0,13,0,52,0,100,0,2,@REMULOS,0,0,1,3,23000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 2 - Say 3'),
(@REMULOS,0,14,0,52,0,100,0,3,@REMULOS,0,0,1,4,31000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 3 - Say 4'),
(@REMULOS,0,15,0,52,0,100,0,4,@REMULOS,0,0,1,5,22000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 4 - Say 5'),
(@REMULOS,0,16,0,52,0,100,0,5,@REMULOS,0,0,1,6,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 5 - Say 6'),
(@REMULOS,0,17,0,40,0,100,0,20,@REMULOS,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 20 - Pause WP'),
(@REMULOS,0,18,0,40,0,100,0,20,@REMULOS,0,0,1,7,20000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 20 - Say 7'),
(@REMULOS,0,19,0,52,0,100,0,7,@REMULOS,0,0,12,@PHANTASM,3,3600000,0,0,0,8,0,0,0,7829.066,-2562.347,489.299,5.234,'Keeper Remulos - On Say 7 - Summon Nightmare Phantasm'),
(@REMULOS,0,20,0,52,0,100,0,7,@REMULOS,0,0,12,@PHANTASM,3,3600000,0,0,0,8,0,0,0,7828.889,-2580.694,489.299,0.753,'Keeper Remulos - On Say 7 -Summon Nightmare Phantasm'),
(@REMULOS,0,21,0,52,0,100,0,7,@REMULOS,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 7 - Set react state aggresive'),
(@REMULOS,0,22,0,52,0,100,0,7,@REMULOS,0,0,49,0,0,0,0,0,0,19,@PHANTASM,0,0,0,0,0,0,'Keeper Remulos - On Say 7 - Attack'),
(@REMULOS,0,23,0,0,0,100,0,7000,14000,6000,12000,11,20665,0,0,0,0,0,18,20,0,0,0,0,0,0,'Keeper Remulos - In Combat - Cast Regrowth'),
(@REMULOS,0,24,0,0,0,100,0,26000,52000,34000,46000,11,20664,0,0,0,0,0,18,20,0,0,0,0,0,0,'Keeper Remulos - In Combat - Cast Regrowth'),
(@REMULOS,0,25,0,0,0,100,0,25000,25000,25000,50000,11,23381,0,0,0,0,0,18,20,0,0,0,0,0,0,'Keeper Remulos - In Combat - Cast Healing Touch'),
(@REMULOS,0,26,0,0,0,100,0,10000,40000,40000,40000,11,25817,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - In Combat - Cast Tranquility'),
(@REMULOS,0,27,0,0,0,100,0,16000,21000,19000,25000,11,21668,0,0,0,0,0,2,0,0,0,0,0,0,0,'Keeper Remulos - In Combat - Cast Starfall'),
(@REMULOS,0,28,0,38,0,100,0,1,1,0,0,1,8,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Data Set - Say 8'),
(@REMULOS,0,29,0,52,0,100,0,8,@REMULOS,0,0,1,9,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - Said 8 8 - Say 9'),
(@REMULOS,0,30,0,40,0,100,1,21,@REMULOS,0,0,49,0,0,0,0,0,0,11,@ERANIKUS,30,0,0,0,0,0,'Keeper Remulos - On Waypoint Reached - Attack Eranikus'),
(@REMULOS,0,31,0,6,0,100,0,0,0,0,0,6,8736,0,0,0,0,0,18,40,0,0,0,0,0,0,'Keeper Remulos - On Death - Fail Quest'),
(@REMULOS,0,32,0,40,0,100,1,23,@REMULOS,0,0,54,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 23 - Pause WP'),
(@REMULOS,0,33,0,40,0,100,1,23,@REMULOS,0,0,66,2.835,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 23 - Set Orientation'),
(@REMULOS,0,34,0,52,0,100,0,9,@REMULOS,0,0,53,1,@REMULOS*100,0,8736,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Said 9 - Go Home'),
(@REMULOS,0,35,0,40,0,100,0,12,@REMULOS*100,0,0,82,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 12 - Set Npcflags'),
(@REMULOS,0,36,0,40,0,100,0,12,@REMULOS*100,0,0,66,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 12 - Set Orientation'),
(@REMULOS,0,37,0,40,0,100,0,24,@REMULOS,0,0,80,@REMULOS*100,0,1,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 24 - Run Script only when OOC'),
(@REMULOS*100,9,0,0,1,0,100,1,60000,60000,0,0,53,1,@REMULOS*100,0,8736,0,0,1,0,0,0,0,0,0,0,'On Script - OOC 1 Mintues - Go Home');

-- Eranikus, Tyrant of the Dream SAI
DELETE FROM `smart_scripts` WHERE entryorguid IN(@ERANIKUS,@ERANIKUS*100,@ERANIKUS*100+1);
INSERT INTO `smart_scripts` VALUES
(@ERANIKUS,0,0,0,1,0,100,1,13000,13000,13000,13000,1,0,15000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - OOC 13 Sec - Say 0'),
(@ERANIKUS,0,1,0,52,0,100,0,0,@ERANIKUS,0,0,1,1,6000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 0 - Say 1'),
(@ERANIKUS,0,2,0,52,0,100,0,1,@ERANIKUS,0,0,1,2,34000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 1 - Say 2'),
(@ERANIKUS,0,3,0,52,0,100,0,2,@ERANIKUS,0,0,1,3,3000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 2 - Say 3'),
(@ERANIKUS,0,4,0,52,0,100,0,3,@ERANIKUS,0,0,1,4,3000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 3 - Say 4'),
(@ERANIKUS,0,5,0,52,0,100,0,4,@ERANIKUS,0,0,53,0,@ERANIKUS,0,8736,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 4 - Start WayPoint'),
(@ERANIKUS,0,6,0,40,0,100,0,3,@ERANIKUS,0,0,54,130000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On WayPoint 3 - Pause'),
(@ERANIKUS,0,7,0,40,0,100,0,3,@ERANIKUS,0,0,1,5,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On WayPoint 3 - Say 5'),
(@ERANIKUS,0,8,0,52,0,100,0,5,@ERANIKUS,0,0,80,@ERANIKUS*100,0,2,0,0,0,1,0,0,0,0,0,0,0,'Eranikus -  On Say 5 - Start Script'),
(@ERANIKUS*100,9,0,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,1,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,2,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,3,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,4,0,0,0,100,0,5000,5000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,5,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,6,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,7,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,8,0,0,0,100,0,5000,5000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,9,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,10,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,11,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,12,0,0,0,100,0,5000,5000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,13,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,14,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,15,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,16,0,0,0,100,0,1000,1000,0,0,1,6,35000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Script - Say 6'),
(@ERANIKUS,0,9,0,52,0,100,0,6,@ERANIKUS,0,0,80,@ERANIKUS*100+1,0,2,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 6 - Start Script'),
(@ERANIKUS*100+1,9,0,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,1,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,2,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,3,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,4,0,0,0,100,0,5000,5000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,5,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,6,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,7,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,8,0,0,0,100,0,5000,5000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,9,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,10,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,11,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,12,0,0,0,100,0,5000,5000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,13,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,14,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,15,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,16,0,0,0,100,0,1000,1000,0,0,1,7,35000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Script - Say 7'),
(@ERANIKUS,0,10,0,40,0,100,0,4,@ERANIKUS,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - Waypont 4 reached - Set faction enemy'),
(@ERANIKUS,0,38,0,40,0,100,0,4,@ERANIKUS,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - Waypont 4 - Set react state aggresive'),
(@ERANIKUS,0,11,0,2,0,100,0,30,65,12000,35000,12,@PHANTASM,3,600000,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - In Combat - Summon Nightmare Phantasm'),
(@ERANIKUS,0,12,0,4,1,100,0,0,0,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On aggro - Say 8'),
(@ERANIKUS,0,13,0,4,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On aggro - Set react state aggresive'),  
(@ERANIKUS,0,14,0,4,0,100,0,0,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Eranikus - On aggro - Start Attack'),
(@ERANIKUS,0,15,0,0,0,100,0,2000,4000,55000,60000,11,24818,0,0,0,0,0,2,0,0,0,0,0,0,0,'Eranikus - In Combat - Cast Noxious Breath'),
(@ERANIKUS,0,16,0,0,0,100,0,9000,14000,50000,55000,11,24839,0,0,0,0,0,2,0,0,0,0,0,0,0,'Eranikus - In Combat - Cast Acid Spit'),
(@ERANIKUS,0,17,0,0,0,100,0,10000,20000,15000,25000,11,22878,0,0,0,0,0,2,0,0,0,0,0,0,0,'Eranikus - In Combat - Cast Shadow Bolt Volley'),
(@ERANIKUS,0,18,0,2,0,100,1,0,70,0,0,12,@TYRANDE,3,3600000,0,0,0,8,0,0,0,7900.216,-2572.621,488.176,2.330,'Eranikus - At 70% - Summon Tyrande'),
(@ERANIKUS,0,34,0,2,0,100,1,0,69,0,0,1,0,0,0,0,0,0,11,@TYRANDE,30,0,0,0,0,0,'Eranikus - At 69% - Tyrande Say 0'),
(@ERANIKUS,0,35,0,2,0,100,1,0,30,0,0,1,1,0,0,0,0,0,11,@TYRANDE,30,0,0,0,0,0,'Eranikus - At 30% - Tyrande Say 1'),
(@ERANIKUS,0,19,0,2,0,100,1,0,25,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - At 25% - Say 9'),
(@ERANIKUS,0,20,0,2,0,100,1,0,22,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - At 22% - Say 10'),
(@ERANIKUS,0,21,0,2,0,100,1,0,20,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - At 20% - Say 11'),
(@ERANIKUS,0,22,0,52,0,100,0,11,@ERANIKUS,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 2 - Set faction friendly'),
(@ERANIKUS,0,23,0,52,0,100,0,11,@ERANIKUS,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 2 - Set react state passive'),
(@ERANIKUS,0,24,0,52,0,100,0,11,@ERANIKUS,0,0,18,33555200,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 2 - Set unit flags'),
(@ERANIKUS,0,25,0,52,0,100,0,11,@ERANIKUS,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 2 - Stop AutoAttack'),
(@ERANIKUS,0,26,0,52,0,100,0,11,@ERANIKUS,0,0,1,12,3000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - Say 11 - Say 12'),
(@ERANIKUS,0,27,0,52,0,100,0,12,@ERANIKUS,0,0,12,@E_REDEEM,3,60000,0,0,0,8,0,0,0,7904.248,-2564.867,488.156,5.116,'Eranikus - On Say 12 - Summon Eranikus the Redeemed'),  
(@ERANIKUS,0,28,0,52,0,100,0,12,@ERANIKUS,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - Say 12 - Kill'),
(@ERANIKUS,0,31,0,7,0,100,0,0,0,0,0,6,8736,0,0,0,0,0,18,40,0,0,0,0,0,0,'Eranikus - On Evade - Quest Fail'),
(@ERANIKUS,0,32,0,6,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Death - Set invisibility'),
(@ERANIKUS,0,33,0,40,0,100,0,5,@ERANIKUS,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus  - On WayPoint 5 - Set invisibility'),
(@ERANIKUS,0,36,0,40,0,100,0,5,@ERANIKUS,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus  - On WayPoint 5 - Die'),
(@ERANIKUS,0,37,0,40,0,100,0,5,@ERANIKUS,0,0,6,8736,0,0,0,0,0,18,40,0,0,0,0,0,0,'Eranikus - On WayPoint 5 - Quest Fail');

-- Tyrande SAI
DELETE FROM `smart_scripts` WHERE entryorguid IN(@TYRANDE);
INSERT INTO `smart_scripts` VALUES
(@TYRANDE,0,0,0,54,0,100,1,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tyrande - On Summon - Set react state aggresive'),
(@TYRANDE,0,1,0,1,0,100,1,95000,95000,95000,95000,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tyrande - OOC 60 Sec - Set invisibility'),
(@TYRANDE,0,2,0,1,0,100,1,96000,96000,96000,96000,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tyrande - OOC 61 Sec - Kill'),
(@TYRANDE,0,3,0,0,0,100,0,1000,2000,2300,2500,11,21668,0,0,0,0,0,11,@ERANIKUS,20,0,0,0,0,0,'Tyrande - In Combat - Cast Starfall');
-- Eranikus the Redeemed SAI
UPDATE `creature_template` SET AIName='SmartAI', modelid1=6984 WHERE entry=@E_REDEEM;
DELETE FROM `smart_scripts` WHERE entryorguid IN(@E_REDEEM);
INSERT INTO `smart_scripts` VALUES
(@E_REDEEM,0,0,0,1,0,100,1,7000,7000,7000,7000,1,0,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus the Redeemed - OOC 7 Secs - Say 0'),
(@E_REDEEM,0,1,0,52,0,100,0,0,@E_REDEEM,0,0,1,1,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus the Redeemed - On Say 0 - Say 1'),
(@E_REDEEM,0,2,0,52,0,100,0,1,@E_REDEEM,0,0,1,2,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus the Redeemed - On Say 1 - Say 2'),
(@E_REDEEM,0,3,0,52,0,100,0,2,@E_REDEEM,0,0,1,3,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus the Redeemed - On Say 2 - Say 3'),
(@E_REDEEM,0,5,0,52,0,100,0,3,@E_REDEEM,0,0,15,8736,0,0,0,0,0,18,30,0,0,0,0,0,0,'Eranikus the Redeemed - On Say 3 - Credit'),
(@E_REDEEM,0,6,0,52,0,100,0,3,@E_REDEEM,0,0,45,1,1,0,0,0,0,11,@REMULOS,40,0,0,0,0,0,'Eranikus the Redeemed - On Say 3 - Set Data');

UPDATE `creature_template` SET AIName='SmartAI', faction=14 WHERE entry=@PHANTASM;
DELETE FROM `smart_scripts` WHERE entryorguid IN(@PHANTASM);
INSERT INTO `smart_scripts` VALUES
(@PHANTASM,0,0,0,54,0,100,0,0,0,0,0,53,1,@PHANTASM,0,8736,0,0,1,0,0,0,0,0,0,0,'Nightmare Phantasm - Summon - Start WayPoint'),
(@PHANTASM,0,1,0,54,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nightmare Phantasm - Summon - Aggresive'),
(@PHANTASM,0,2,0,54,0,100,0,0,0,0,0,49,0,0,0,0,0,0,18,50,0,0,0,0,0,0,'Nightmare Phantasm - Summon - Attack Player'),
(@PHANTASM,0,3,0,6,0,75,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nightmare Phantasm - Death - Say 0'),
(@PHANTASM,0,4,0,40,0,100,0,4,@PHANTASM,0,0,53,1,@PHANTASM,0,8736,0,0,1,0,0,0,0,0,0,0,'Nightmare Phantasm - WayPoint 20 - Start Again'),
(@PHANTASM,0,5,0,1,0,100,1,60000,60000,60000,60000,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nightmare Phantasm - OOC 60 Secs - Unseen'),
(@PHANTASM,0,6,0,1,0,100,1,63000,63000,63000,63000,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nightmare Phantasm - OOC 63 Secs - Despawn'),
(@PHANTASM,0,7,0,1,0,100,1,5000,5000,5000,5000,53,1,@PHANTASM,0,8736,0,0,1,0,0,0,0,0,0,0,'Nightmare Phantasm - OOC 5 Secs - Start WayPoint');

-- Waypoints
DELETE FROM `waypoints` WHERE entry=@REMULOS;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@REMULOS,1,7829.66,-2244.87,463.87,'Keeper Remulos'),
(@REMULOS,2,7817.25,-2306.20,456.00,'Keeper Remulos'),
(@REMULOS,3,7866.54,-2312.20,463.32,'Keeper Remulos'),
(@REMULOS,4,7908.488,-2309.086,467.677,'Keeper Remulos'),
(@REMULOS,5,7933.290,-2314.777,473.674,'Keeper Remulos'),
(@REMULOS,6,7942.543457,-2320.170654,476.770355,'Keeper Remulos'),
(@REMULOS,7,7953.036133,-2357.953613,486.379303,'Keeper Remulos'),
(@REMULOS,8,7962.706055,-2411.155518,488.955231,'Keeper Remulos'),
(@REMULOS,9,7976.860352,-2552.697998,490.081390,'Keeper Remulos'),
(@REMULOS,10,7949.307617,-2569.120361,489.716248,'Keeper Remulos'),
(@REMULOS,11,7950.945801,-2597.000000,489.765564,'Keeper Remulos'),
(@REMULOS,12,7948.758301,-2610.823486,492.368988,'Keeper Remulos'),
(@REMULOS,13,7928.785156,-2629.920654,492.524933,'Keeper Remulos'), ## stop
(@REMULOS,14,7948.697754,-2610.551758,492.363983,'Keeper Remulos'),
(@REMULOS,15,7952.019531,-2591.974609,490.081238,'Keeper Remulos'),
(@REMULOS,16,7940.567871,-2577.845703,488.946808,'Keeper Remulos'),
(@REMULOS,17,7908.662109,-2566.450439,488.634644,'Keeper Remulos'),
(@REMULOS,18,7873.132324,-2567.422363,486.946442,'Keeper Remulos'),
(@REMULOS,19,7839.844238,-2570.598877,489.286224,'Keeper Remulos'),
(@REMULOS,20,7830.678597,-2572.878974,489.286224,'Keeper Remulos'),
(@REMULOS,21,7890.504,-2567.259,487.306,'Keeper Remulos'),
(@REMULOS,22,7906.447,-2566.105,488.435,'Keeper Remulos'),
(@REMULOS,23,7925.861,-2573.601,489.642,'Keeper Remulos'),
(@REMULOS,24,7912.283,-2568.500,488.891,'Keeper Remulos');

-- Waypoints
DELETE FROM `waypoints` WHERE entry IN(@ERANIKUS);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ERANIKUS,1,7949.812,-2605.4748,513.591,'Eranikus'),
(@ERANIKUS,2,7931.3330,-2575.2097,489.6286,'Eranikus'),
(@ERANIKUS,3,7925.129,-2573.747,493.901,'Eranikus'),
(@ERANIKUS,4,7910.554,-2565.5534,488.616,'Eranikus'),
(@ERANIKUS,5,7867.442,-2567.334,486.946,'Eranikus');


-- Waypoints
DELETE FROM `waypoints` WHERE entry IN(@PHANTASM);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@PHANTASM,1,7891.990,-2566.737,487.385,'Phantasm'),
(@PHANTASM,2,7865.966,-2554.104,486.967,'Phantasm'),
(@PHANTASM,3,7901.544,-2581.989,487.178,'Phantasm'),
(@PHANTASM,4,7918.844,-2553.987,486.911,'Phantasm'),
(@PHANTASM,5,7873.412,-2587.454,486.946,'Phantasm');

-- Waypoints
DELETE FROM `waypoints` WHERE entry=@REMULOS*100;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@REMULOS*100,12,7847.066,-2217.571,470.403,'Keeper Remulos'),
(@REMULOS*100,11,7829.66,-2244.87,463.87,'Keeper Remulos'),
(@REMULOS*100,10,7817.25,-2306.20,456.00,'Keeper Remulos'),
(@REMULOS*100,9,7866.54,-2312.20,463.32,'Keeper Remulos'),
(@REMULOS*100,8,7908.488,-2309.086,467.677,'Keeper Remulos'),
(@REMULOS*100,7,7933.290,-2314.777,473.674,'Keeper Remulos'),
(@REMULOS*100,6,7942.543457,-2320.170654,476.770355,'Keeper Remulos'),
(@REMULOS*100,5,7953.036133,-2357.953613,486.379303,'Keeper Remulos'),
(@REMULOS*100,4,7962.706055,-2411.155518,488.955231,'Keeper Remulos'),
(@REMULOS*100,3,7976.860352,-2552.697998,490.081390,'Keeper Remulos'),
(@REMULOS*100,2,7949.307617,-2569.120361,489.716248,'Keeper Remulos'),
(@REMULOS*100,1,7940.567871,-2577.845703,488.946808,'Keeper Remulos');
