SET @LN_ENTRY = 61837;
SET @SAR_ENTRY = 42216;
SET @MMCB_ENTRY = 197;
SET @C_GUID_1 = 168271;
SET @C_GUID_2 = 168272;
SET @C_GUID_3 = 999480;
SET @C_GUID_4 = 999481;
SET @C_GUID_5 = 999482;
SET @C_GUID_6 = 999483;
SET @C_GUID_7 = 168240;
SET @C_GUID_8 = 168227;
SET @C_GUID_9 = 999484;
SET @C_GUID_10 = 999485;
SET @WOLF_ENTRY_1 = 43291;
SET @WOLF_ENTRY_2 = 43292;
SET @MAGE_ENTRY = 53836;
SET @ELEM_ENTRY = 46820;
SET @SRG_ENTRY = 42218;

UPDATE `creature_template` SET `faction_A`=11, `faction_H`=11 WHERE `entry`=@SRG_ENTRY;
DELETE FROM `creature` WHERE `guid` IN (@C_GUID_3, @C_GUID_4, @C_GUID_5, @C_GUID_6, @C_GUID_9, @C_GUID_10);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`MovementType`) VALUES
(@C_GUID_3, @MAGE_ENTRY, 0, 1, -8959, -147, 81.5134, 3.76123, 300, 0, 0),
(@C_GUID_4, @ELEM_ENTRY, 0, 1, -8958.05, -148.328, 81.5134, 3.76123, 300, 0, 0),
(@C_GUID_5, @SRG_ENTRY, 0, 1, -8919.3, -137.372, 80.604, 2.11185, 300, 0, 0),
(@C_GUID_6, @SRG_ENTRY, 0, 1, -8909.29, -132.802, 80.6389, 2.11185, 300, 0, 0),
(@C_GUID_9, @SRG_ENTRY, 0, 1, -9011.44, -62.7255, 87.1745, 1.71485, 300, 0, 2),
(@C_GUID_10, @SRG_ENTRY, 0, 1, -9007.29, -61.9982, 87.0045, 1.71485, 300, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` IN (@C_GUID_3, @C_GUID_7, @C_GUID_8, @C_GUID_9, @C_GUID_10);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@C_GUID_3, 0, 0, 0, 257, 474, 69787),
(@C_GUID_7, @C_GUID_7, 0, 0, 0, 0, 0),
(@C_GUID_8, @C_GUID_8, 0, 0, 0, 0, 0),
(@C_GUID_9, @C_GUID_9, 28912, 0, 256, 0, 0),
(@C_GUID_10, 0, 28912, 0, 256, 0, 0);
DELETE FROM `creature_formations` WHERE `leaderGUID`=@C_GUID_9;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES
(@C_GUID_9, @C_GUID_9, 0, 0, 2, 0, 0),
(@C_GUID_9, @C_GUID_10, 3, 90, 2, 0, 0);
DELETE FROM `creature_template_addon` WHERE `entry` IN (@LN_ENTRY, @SAR_ENTRY, @MMCB_ENTRY, @WOLF_ENTRY_1, @WOLF_ENTRY_2);
INSERT INTO `creature_template_addon` (`entry`,`bytes1`,`bytes2`,`emote`) VALUES
(@LN_ENTRY, 5, 1, 426),
(@SAR_ENTRY, 5, 1, 483),
(@MMCB_ENTRY, 0, 1, 483),
(@WOLF_ENTRY_1, 3, 1, 0),
(@WOLF_ENTRY_2, 1, 1, 0);
UPDATE `creature_template_addon` SET `bytes1`=5, `bytes2`=1, `emote`=483 WHERE `entry`=@SAR_ENTRY;
UPDATE `creature` SET `modelid`=32727, `position_x`=-8935.78, `position_y`=-135.877, `position_z`=82.197, `orientation`=2.31256 WHERE `guid`=@C_GUID_1;
UPDATE `creature` SET `modelid`=32728, `position_x`=-8937.58, `position_y`=-136.941, `position_z`=82.197, `orientation`=1.9635 WHERE `guid`=@C_GUID_2;
UPDATE `creature` SET `MovementType`=2,`spawndist`=0,`position_x`=-9040.39,`position_y`=-10.1797,`position_z`=88.2425 WHERE `guid`=@C_GUID_7;
UPDATE `creature` SET `MovementType`=2,`spawndist`=0 WHERE `guid`=@C_GUID_8;
DELETE FROM `waypoint_data` WHERE `id` IN (@C_GUID_7, @C_GUID_8, @C_GUID_9);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) VALUES
(@C_GUID_7, 1, -9040.39, -10.1797, 88.2425, 0, 0, 0, 0, 100, 0),
(@C_GUID_7, 2, -9037.12, -1.32417, 88.3222, 0, 0, 0, 0, 100, 0),
(@C_GUID_7, 3, -9030.68, 3.90194, 88.2341, 0, 0, 0, 0, 100, 0),
(@C_GUID_7, 4, -9022.66, 3.78092, 88.306, 0, 0, 0, 0, 100, 0),
(@C_GUID_7, 5, -9012.76, -9.73045, 88.491, 0, 0, 0, 0, 100, 0),
(@C_GUID_7, 6, -9009.67, -35.7909, 88.0058, 0, 0, 0, 0, 100, 0),
(@C_GUID_7, 7, -9008.94, -50.5854, 87.3187, 0, 0, 0, 0, 100, 0),
(@C_GUID_7, 8, -9006.81, -78.6543, 86.5426, 0, 1000, 0, 0, 100, 0),
(@C_GUID_7, 9, -9004.85, -80.2992, 86.3719, 0, 0, 0, 0, 100, 0),
(@C_GUID_7, 10, -9010.12, -55.3667, 87.2097, 0, 0, 0, 0, 100, 0),
(@C_GUID_7, 11, -9008.94, -32.6009, 88.1985, 0, 0, 0, 0, 100, 0),
(@C_GUID_7, 12, -9018.07, 1.60422, 88.6018, 0, 0, 0, 0, 100, 0),
(@C_GUID_7, 13, -9025.93, 3.83505, 88.2557, 0, 0, 0, 0, 100, 0),
(@C_GUID_7, 14, -9034.68, 3.47404, 88.1886, 0, 0, 0, 0, 100, 0),
(@C_GUID_7, 15, -9037.12, -1.32417, 88.3222, 0, 0, 0, 0, 100, 0),
(@C_GUID_7, 16, -9040.39, -10.1797, 88.2425, 0, 0, 0, 0, 100, 0),
(@C_GUID_7, 17, -9045.25, -42.8946, 88.3531, 0, 2000, 0, 0, 100, 0),
(@C_GUID_8, 1, -9047.82, -69.533, 88.1482, 0, 0, 0, 0, 100, 0),
(@C_GUID_8, 2, -9049.7, -74.7728, 88.141, 0, 0, 0, 0, 100, 0),
(@C_GUID_8, 3, -9051.3, -87.0787, 87.9445, 0, 0, 0, 0, 100, 0),
(@C_GUID_8, 4, -9046.37, -97.1341, 88.0547, 0, 0, 0, 0, 100, 0),
(@C_GUID_8, 5, -9037.65, -100.691, 87.8292, 0, 0, 0, 0, 100, 0),
(@C_GUID_8, 6, -9021.47, -97.2466, 87.0877, 0, 0, 0, 0, 100, 0),
(@C_GUID_8, 7, -9013.97, -90.8248, 86.5515, 0, 0, 0, 0, 100, 0),
(@C_GUID_8, 8, -9007.88, -81.0571, 86.5524, 0, 2000, 0, 0, 100, 0),
(@C_GUID_8, 9, -9008.03, -84.6109, 86.3904, 0, 0, 0, 0, 100, 0),
(@C_GUID_8, 10, -9013.97, -90.8248, 86.5515, 0, 0, 0, 0, 100, 0),
(@C_GUID_8, 11, -9021.47, -97.2466, 87.0877, 0, 0, 0, 0, 100, 0),
(@C_GUID_8, 12, -9037.65, -100.691, 87.8292, 0, 0, 0, 0, 100, 0),
(@C_GUID_8, 13, -9046.37, -97.1341, 88.0547, 0, 0, 0, 0, 100, 0),
(@C_GUID_8, 14, -9051.3, -87.0787, 87.9445, 0, 0, 0, 0, 100, 0),
(@C_GUID_8, 15, -9049.7, -74.7728, 88.141, 0, 0, 0, 0, 100, 0),
(@C_GUID_8, 16, -9046.12, -44.8936, 88.3316, 0, 2000, 0, 0, 100, 0),
(@C_GUID_9, 1, -9009.43, -25.1239, 88.3453, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 2, -9013.85, -6.47907, 88.6018, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 3, -9018.7, 4.52974, 88.4251, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 4, -9028.75, 4.82881, 88.2021, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 5, -9036.21, -0.888057, 88.3346, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 6, -9040.03, -10.2296, 88.2424, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 7, -9042.15, -23.2573, 88.2465, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 8, -9043.38, -31.3502, 88.2545, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 9, -9046.77, -40.6682, 88.2887, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 10, -9047.44, -52.9322, 88.1536, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 11, -9047.98, -59.4287, 88.2438, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 12, -9048.97, -82.737, 88.1852, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 13, -9049.82, -90.0199, 87.9854, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 14, -9044.14, -98.0271, 87.9921, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 15, -9035.56, -102.177, 87.6984, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 16, -9027.32, -100.479, 87.5032, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 17, -9006.02, -82.8832, 86.3973, 0, 1000, 0, 0, 100, 0),
(@C_GUID_9, 18, -9003.86, -83.4701, 86.2865, 0, 1000, 0, 0, 100, 0),
(@C_GUID_9, 19, -8998.52, -87.5151, 85.7895, 0, 500, 0, 0, 100, 0),
(@C_GUID_9, 20, -8974.95, -110.326, 84.5355, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 21, -8966.74, -112.763, 83.998, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 22, -8945.05, -112.616, 82.9281, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 23, -8938.17, -113.336, 85.6141, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 24, -8932.64, -114.808, 82.4286, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 25, -8930.27, -115.472, 82.4334, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 26, -8928.11, -112.142, 82.9834, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 27, -8946.59, -112.158, 83.0167, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 28, -8958.39, -111.732, 83.7659, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 29, -8969.06, -110.818, 84.3323, 0, 0, 0, 0, 100, 0),
(@C_GUID_9, 30, -8972.86, -108.476, 84.6425, 0, 500, 0, 0, 100, 0),
(@C_GUID_9, 31, -8980.47, -103.327, 85.0892, 0, 1000, 0, 0, 100, 0),
(@C_GUID_9, 32, -9001.52, -82.3874, 86.1248, 0, 1000, 0, 0, 100, 0),
(@C_GUID_9, 33, -9002.66, -79.1632, 86.212, 0, 1000, 0, 0, 100, 0),
(@C_GUID_9, 34, -9007.29, -61.9982, 87.0045, 0, 500, 0, 0, 100, 0);
