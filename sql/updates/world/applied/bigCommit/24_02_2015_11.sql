DELETE FROM `spell_script_names` WHERE `spell_id` = 42264;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(42264, 'EC_spell_item_draenic_pale_ale');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=27958;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 27958 AND `source_type` =0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(27958, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 29, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Parading Pink Elekk - On Summon - Follow Invoker');
