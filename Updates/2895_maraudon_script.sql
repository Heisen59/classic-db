DELETE FROM creature_movement WHERE id IN (54154, 54636, 54640, 54646, 54647);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(54154, 1, 870.034, -329.385, -48.798, 0.279253, 1000, 1179001),
(54636, 1, 742.923, -127.961, -56.2506, 3.29867, 1000, 1179101),
(54640, 1, 739.91, -122.194, -56.5653, 3.97935, 1000, 1179101),
(54646, 1, 758.122, -42.8355, -55.9574, 2.1293, 1000, 1179101),
(54647, 1, 750.123, -42.8777, -56.1531, 0.959931, 1000, 1179101);