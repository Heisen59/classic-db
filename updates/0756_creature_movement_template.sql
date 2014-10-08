-- Added waypoint movement to creature 2417 (Grel'borg the Miser)
-- Thanks Metalica for pointing. This closes #605 

SET @ENTRY := '2417'; -- Grel'borg the Miser

-- --------------------------------------

SET @NAME := (SELECT `name` FROM `creature_template` WHERE `entry`=@ENTRY);
SET @GUID := (SELECT `guid` FROM `creature` WHERE `id`=@ENTRY);
SET @TEXT := (SELECT MAX(`entry`) FROM `db_script_string`);

UPDATE `creature` SET `position_x`='484.117', `position_y`='-212.956', `position_z`='145.4493', `orientation`='1.343609', `MovementType`='2' WHERE `guid`=@GUID;

DELETE FROM `creature_movement` WHERE `id`=@GUID;

REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@ENTRY, '01', '488.6667', '-202.5618', '145.7295', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '02', '495.9214', '-216.4391', '152.5220', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '03', '488.4913', '-222.2894', '152.5219', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '04', '471.8027', '-231.7151', '152.5219', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '05', '476.9284', '-243.3646', '152.5219', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '06', '497.0227', '-232.2242', '151.0229', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '07', '514.8104', '-265.8491', '151.5088', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '08', '513.5344', '-288.3632', '151.8983', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '09', '540.1527', '-307.6147', '152.2646', '10000', (CONCAT(@GUID, '01')), '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '10', '548.7611', '-317.3246', '150.8638', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '11', '559.2503', '-318.3878', '150.7941', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '12', '588.2186', '-329.9573', '150.7941', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '13', '618.1616', '-340.5552', '152.1086', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '14', '635.9225', '-362.0494', '152.9861', '10000', (CONCAT(@GUID, '02')), '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '15', '638.7811', '-343.5707', '150.8481', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '16', '608.8775', '-340.3288', '151.7363', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '17', '545.2993', '-315.2514', '151.2778', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '18', '534.5074', '-300.4206', '152.0318', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '19', '515.7733', '-283.7983', '151.2071', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '20', '515.2792', '-265.8094', '151.5650', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '21', '496.8936', '-232.6606', '151.0229', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '22', '515.7501', '-222.1954', '152.5219', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '23', '510.9318', '-211.0127', '152.5219', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '24', '496.8640', '-218.5301', '152.5220', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '25', '488.5658', '-202.9693', '145.7295', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '26', '485.1778', '-205.2483', '145.3671', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@ENTRY, '27', '484.1202', '-213.1630', '145.3665', '0', (CONCAT(@GUID, '03')), '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
((@TEXT + '1'), 'Search this rubble.', '0', '0', '0', '1', (CONCAT(@GUID, ' - Say 1'))),
((@TEXT + '2'), 'Find me something good, you dogs!', '0', '0', '0', '1', (CONCAT(@NAME, ' - Say 2')));

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN ((CONCAT(@GUID, '01')), (CONCAT(@GUID, '02')), (CONCAT(@GUID, '03')));
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
((CONCAT(@GUID, '01')), '0.5', '0', '0', '0', '0', '0', '0', (@TEXT + '1'), '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Say 1'))),
((CONCAT(@GUID, '02')), '0.5', '0', '0', '0', '0', '0', '0', (@TEXT + '2'), '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Say 2'))),
((CONCAT(@GUID, '03')), '0', '20', '1', '1.5', '0', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Movementtype 1'))),
((CONCAT(@GUID, '03')), '30', '20', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Movementtype 2')));