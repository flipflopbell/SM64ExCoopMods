const Collision Falling_Platform_collision[] = {
	COL_INIT(),
	COL_VERTEX_INIT(30),
	COL_VERTEX(-48, -101, -101),
	COL_VERTEX(-114, 0, -101),
	COL_VERTEX(3, 0, -101),
	COL_VERTEX(-48, -921, -76),
	COL_VERTEX(-48, -1023, -25),
	COL_VERTEX(-48, -101, -25),
	COL_VERTEX(-48, -101, -76),
	COL_VERTEX(-406, -1023, -25),
	COL_VERTEX(-508, -921, -25),
	COL_VERTEX(515, -921, -25),
	COL_VERTEX(412, -1023, -25),
	COL_VERTEX(54, -1023, -25),
	COL_VERTEX(54, -101, -25),
	COL_VERTEX(-114, 0, 0),
	COL_VERTEX(-48, 102, 0),
	COL_VERTEX(-48, 102, -101),
	COL_VERTEX(54, -101, 0),
	COL_VERTEX(-48, -101, 0),
	COL_VERTEX(54, -101, -101),
	COL_VERTEX(54, 102, 0),
	COL_VERTEX(120, 0, 0),
	COL_VERTEX(120, 0, -101),
	COL_VERTEX(54, 102, -101),
	COL_VERTEX(54, -921, -76),
	COL_VERTEX(54, -101, -76),
	COL_VERTEX(-406, -1023, 589),
	COL_VERTEX(-508, -921, 589),
	COL_VERTEX(412, -1023, 589),
	COL_VERTEX(515, -921, 589),
	COL_VERTEX(3, 0, 0),
	COL_TRI_INIT(SURFACE_DEFAULT, 42),
	COL_TRI(0, 1, 2),
	COL_TRI(3, 4, 5),
	COL_TRI(3, 5, 6),
	COL_TRI(7, 8, 9),
	COL_TRI(7, 9, 10),
	COL_TRI(4, 11, 12),
	COL_TRI(4, 12, 5),
	COL_TRI(13, 14, 15),
	COL_TRI(13, 15, 1),
	COL_TRI(16, 17, 0),
	COL_TRI(16, 0, 18),
	COL_TRI(19, 20, 21),
	COL_TRI(19, 21, 22),
	COL_TRI(17, 13, 1),
	COL_TRI(17, 1, 0),
	COL_TRI(23, 3, 6),
	COL_TRI(23, 6, 24),
	COL_TRI(8, 7, 25),
	COL_TRI(8, 25, 26),
	COL_TRI(14, 19, 22),
	COL_TRI(14, 22, 15),
	COL_TRI(11, 23, 24),
	COL_TRI(11, 24, 12),
	COL_TRI(27, 28, 26),
	COL_TRI(27, 26, 25),
	COL_TRI(23, 11, 4),
	COL_TRI(23, 4, 3),
	COL_TRI(20, 16, 18),
	COL_TRI(20, 18, 21),
	COL_TRI(28, 27, 10),
	COL_TRI(28, 10, 9),
	COL_TRI(20, 19, 29),
	COL_TRI(19, 14, 29),
	COL_TRI(14, 13, 29),
	COL_TRI(13, 17, 29),
	COL_TRI(17, 16, 29),
	COL_TRI(16, 20, 29),
	COL_TRI(1, 15, 2),
	COL_TRI(15, 22, 2),
	COL_TRI(22, 21, 2),
	COL_TRI(21, 18, 2),
	COL_TRI(18, 0, 2),
	COL_TRI_INIT(SURFACE_NOT_SLIPPERY, 4),
	COL_TRI(27, 25, 7),
	COL_TRI(27, 7, 10),
	COL_TRI(9, 8, 26),
	COL_TRI(9, 26, 28),
	COL_TRI_STOP(),
	COL_END()
};