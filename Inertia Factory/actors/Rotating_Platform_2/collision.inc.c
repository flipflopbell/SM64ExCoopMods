const Collision Rotating_Platform_2_collision[] = {
	COL_INIT(),
	COL_VERTEX_INIT(26),
	COL_VERTEX(-90, -45, 90),
	COL_VERTEX(-630, -45, 90),
	COL_VERTEX(-630, -45, -90),
	COL_VERTEX(-90, -45, -90),
	COL_VERTEX(0, -45, 0),
	COL_VERTEX(-90, 45, 90),
	COL_VERTEX(-90, -45, 630),
	COL_VERTEX(-90, 45, 630),
	COL_VERTEX(90, -45, -90),
	COL_VERTEX(630, -45, -90),
	COL_VERTEX(630, -45, 90),
	COL_VERTEX(90, -45, 90),
	COL_VERTEX(-90, 45, -630),
	COL_VERTEX(-90, -45, -630),
	COL_VERTEX(-90, 45, -90),
	COL_VERTEX(90, -45, 630),
	COL_VERTEX(630, 45, -90),
	COL_VERTEX(90, 45, -90),
	COL_VERTEX(90, 45, -630),
	COL_VERTEX(90, -45, -630),
	COL_VERTEX(-630, 45, -90),
	COL_VERTEX(-630, 45, 90),
	COL_VERTEX(90, 45, 630),
	COL_VERTEX(90, 45, 90),
	COL_VERTEX(630, 45, 90),
	COL_VERTEX(0, 45, 0),
	COL_TRI_INIT(SURFACE_DEFAULT, 48),
	COL_TRI(0, 1, 2),
	COL_TRI(2, 3, 4),
	COL_TRI(2, 4, 0),
	COL_TRI(5, 0, 6),
	COL_TRI(5, 6, 7),
	COL_TRI(4, 8, 9),
	COL_TRI(9, 10, 11),
	COL_TRI(9, 11, 4),
	COL_TRI(12, 13, 3),
	COL_TRI(12, 3, 14),
	COL_TRI(4, 11, 15),
	COL_TRI(15, 6, 0),
	COL_TRI(15, 0, 4),
	COL_TRI(16, 9, 8),
	COL_TRI(16, 8, 17),
	COL_TRI(18, 19, 13),
	COL_TRI(18, 13, 12),
	COL_TRI(20, 2, 1),
	COL_TRI(20, 1, 21),
	COL_TRI(22, 15, 11),
	COL_TRI(22, 11, 23),
	COL_TRI(14, 3, 2),
	COL_TRI(14, 2, 20),
	COL_TRI(4, 3, 13),
	COL_TRI(13, 19, 8),
	COL_TRI(13, 8, 4),
	COL_TRI(24, 10, 9),
	COL_TRI(24, 9, 16),
	COL_TRI(7, 6, 15),
	COL_TRI(7, 15, 22),
	COL_TRI(21, 1, 0),
	COL_TRI(21, 0, 5),
	COL_TRI(12, 14, 25),
	COL_TRI(25, 17, 18),
	COL_TRI(25, 18, 12),
	COL_TRI(17, 8, 19),
	COL_TRI(17, 19, 18),
	COL_TRI(23, 11, 10),
	COL_TRI(23, 10, 24),
	COL_TRI(22, 23, 25),
	COL_TRI(25, 5, 7),
	COL_TRI(25, 7, 22),
	COL_TRI(16, 17, 25),
	COL_TRI(25, 23, 24),
	COL_TRI(25, 24, 16),
	COL_TRI(20, 21, 5),
	COL_TRI(5, 25, 14),
	COL_TRI(5, 14, 20),
	COL_TRI_STOP(),
	COL_END()
};
