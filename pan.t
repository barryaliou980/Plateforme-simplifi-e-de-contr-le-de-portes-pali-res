#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(19*sizeof(Trans **));

	/* proctype 17: securite_depart */

	trans[17] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[17][7]	= settr(382,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[17][6] = settr(381,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(381,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(381,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 17][3] = settr(378,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(378,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[17][1]	= settr(376,0,6,3,3,"(!((!(!(train_stopped))||(portes_train_fermees&&portes_palieres_fermees))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached17[2] = 1;
	trans[17][2]	= settr(0,0,0,0,0,"assert(!(!((!(!(train_stopped))||(portes_train_fermees&&portes_palieres_fermees)))))",0,0,0);
	trans[17][4]	= settr(379,0,6,1,0,"(1)", 0, 2, 0);
	trans[17][5]	= settr(380,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[17][8]	= settr(383,0,9,1,0,"break", 0, 2, 0);
	trans[17][9]	= settr(384,0,10,1,0,"(1)", 0, 2, 0);
	trans[17][10]	= settr(385,0,0,4,4,"-end-", 0, 3500, 0);

	/* proctype 16: lumiere_rouge_implique_ferme */

	trans[16] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[16][7]	= settr(372,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[16][6] = settr(371,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(371,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(371,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 16][3] = settr(368,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(368,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[16][1]	= settr(366,0,6,5,5,"((!((!((lumiere_palieres==0))||portes_palieres_fermees))||!((!((lumiere_train==0))||portes_train_fermees))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached16[2] = 1;
	trans[16][2]	= settr(0,0,0,0,0,"assert(!((!((!((lumiere_palieres==0))||portes_palieres_fermees))||!((!((lumiere_train==0))||portes_train_fermees)))))",0,0,0);
	trans[16][4]	= settr(369,0,6,1,0,"(1)", 0, 2, 0);
	trans[16][5]	= settr(370,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[16][8]	= settr(373,0,9,1,0,"break", 0, 2, 0);
	trans[16][9]	= settr(374,0,10,1,0,"(1)", 0, 2, 0);
	trans[16][10]	= settr(375,0,0,6,6,"-end-", 0, 3500, 0);

	/* proctype 15: lumiere_verte_implique_ouvert */

	trans[15] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[15][7]	= settr(362,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[15][6] = settr(361,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(361,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(361,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 15][3] = settr(358,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(358,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[15][1]	= settr(356,0,6,7,7,"((!((!((lumiere_palieres==2))||portes_palieres_ouvertes))||!((!((lumiere_train==2))||portes_train_ouvertes))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached15[2] = 1;
	trans[15][2]	= settr(0,0,0,0,0,"assert(!((!((!((lumiere_palieres==2))||portes_palieres_ouvertes))||!((!((lumiere_train==2))||portes_train_ouvertes)))))",0,0,0);
	trans[15][4]	= settr(359,0,6,1,0,"(1)", 0, 2, 0);
	trans[15][5]	= settr(360,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[15][8]	= settr(363,0,9,1,0,"break", 0, 2, 0);
	trans[15][9]	= settr(364,0,10,1,0,"(1)", 0, 2, 0);
	trans[15][10]	= settr(365,0,0,8,8,"-end-", 0, 3500, 0);

	/* proctype 14: ordre_ouverture */

	trans[14] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[14][7]	= settr(352,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[14][6] = settr(351,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(351,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(351,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 14][3] = settr(348,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(348,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[14][1]	= settr(346,0,6,9,9,"(!((!(portes_palieres_ouvertes)||portes_train_ouvertes)))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached14[2] = 1;
	trans[14][2]	= settr(0,0,0,0,0,"assert(!(!((!(portes_palieres_ouvertes)||portes_train_ouvertes))))",0,0,0);
	trans[14][4]	= settr(349,0,6,1,0,"(1)", 0, 2, 0);
	trans[14][5]	= settr(350,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[14][8]	= settr(353,0,9,1,0,"break", 0, 2, 0);
	trans[14][9]	= settr(354,0,10,1,0,"(1)", 0, 2, 0);
	trans[14][10]	= settr(355,0,0,10,10,"-end-", 0, 3500, 0);

	/* proctype 13: synchro_ouverture */

	trans[13] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[13][7]	= settr(342,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[13][6] = settr(341,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(341,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(341,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 13][3] = settr(338,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(338,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[13][1]	= settr(336,0,6,11,11,"(!((!(portes_palieres_ouvertes)||portes_train_ouvertes)))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached13[2] = 1;
	trans[13][2]	= settr(0,0,0,0,0,"assert(!(!((!(portes_palieres_ouvertes)||portes_train_ouvertes))))",0,0,0);
	trans[13][4]	= settr(339,0,6,1,0,"(1)", 0, 2, 0);
	trans[13][5]	= settr(340,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[13][8]	= settr(343,0,9,1,0,"break", 0, 2, 0);
	trans[13][9]	= settr(344,0,10,1,0,"(1)", 0, 2, 0);
	trans[13][10]	= settr(345,0,0,12,12,"-end-", 0, 3500, 0);

	/* proctype 12: propriete_c_forte */

	trans[12] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[12][7]	= settr(332,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[12][6] = settr(331,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(331,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(331,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 12][3] = settr(328,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(328,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[12][1]	= settr(326,0,6,13,13,"(!((!(portes_palieres_ouvertes)||(train_stopped&&train_aligned))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached12[2] = 1;
	trans[12][2]	= settr(0,0,0,0,0,"assert(!(!((!(portes_palieres_ouvertes)||(train_stopped&&train_aligned)))))",0,0,0);
	trans[12][4]	= settr(329,0,6,1,0,"(1)", 0, 2, 0);
	trans[12][5]	= settr(330,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[12][8]	= settr(333,0,9,1,0,"break", 0, 2, 0);
	trans[12][9]	= settr(334,0,10,1,0,"(1)", 0, 2, 0);
	trans[12][10]	= settr(335,0,0,14,14,"-end-", 0, 3500, 0);

	/* proctype 11: propriete_c */

	trans[11] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[11][6]	= settr(318,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[11][5] = settr(317,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(317,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(317,0,3,0,0,"DO", 0, 2, 0);
	trans[11][1]	= settr(313,0,10,15,0,"((!(!((train_stopped&&train_aligned)))&&!(portes_palieres_ouvertes)))", 1, 2, 0);
	trans[11][2]	= settr(314,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[11][3]	= settr(315,0,5,1,0,"(1)", 0, 2, 0);
	trans[11][4]	= settr(316,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[11][7]	= settr(319,0,10,1,0,"break", 0, 2, 0);
	trans[11][11]	= settr(323,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[11][10] = settr(322,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(322,0,8,0,0,"DO", 0, 2, 0);
	trans[11][8]	= settr(320,0,10,16,0,"(!(portes_palieres_ouvertes))", 1, 2, 0);
	trans[11][9]	= settr(321,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[11][12]	= settr(324,0,13,1,0,"break", 0, 2, 0);
	trans[11][13]	= settr(325,0,0,17,17,"-end-", 0, 3500, 0);

	/* proctype 10: propriete_b_fermeture_palieres */

	trans[10] = (Trans **) emalloc(21*sizeof(Trans *));

	trans[10][9]	= settr(301,0,8,1,0,".(goto)", 0, 2, 0);
	T = trans[10][8] = settr(300,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(300,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(300,0,5,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(300,0,6,0,0,"DO", 0, 2, 0);
	trans[10][1]	= settr(293,0,16,18,0,"((!(!((!(portes_palieres_ouvertes)&&!(portes_palieres_fermees))))&&!(portes_palieres_fermees)))", 1, 2, 0);
	trans[10][2]	= settr(294,0,16,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 10][5] = settr(297,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(297,2,3,0,0,"ATOMIC", 1, 2, 0);
	trans[10][3]	= settr(295,0,8,19,19,"(((!(!((!(portes_palieres_ouvertes)&&!(portes_palieres_fermees))))&&!((lumiere_palieres==1)))&&!(portes_palieres_fermees)))", 1, 2, 0); /* m: 4 -> 8,0 */
	reached10[4] = 1;
	trans[10][4]	= settr(0,0,0,0,0,"assert(!(((!(!((!(portes_palieres_ouvertes)&&!(portes_palieres_fermees))))&&!((lumiere_palieres==1)))&&!(portes_palieres_fermees))))",0,0,0);
	trans[10][6]	= settr(298,0,8,1,0,"(1)", 0, 2, 0);
	trans[10][7]	= settr(299,0,8,1,0,"goto T0_init", 0, 2, 0);
	trans[10][10]	= settr(302,0,16,1,0,"break", 0, 2, 0);
	trans[10][17]	= settr(309,0,16,1,0,".(goto)", 0, 2, 0);
	T = trans[10][16] = settr(308,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(308,0,11,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(308,0,15,0,0,"DO", 0, 2, 0);
	trans[10][11]	= settr(303,0,16,20,0,"(!(portes_palieres_fermees))", 1, 2, 0);
	trans[10][12]	= settr(304,0,16,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 10][15] = settr(307,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(307,2,13,0,0,"ATOMIC", 1, 2, 0);
	trans[10][13]	= settr(305,0,16,21,21,"((!((lumiere_palieres==1))&&!(portes_palieres_fermees)))", 1, 2, 0); /* m: 14 -> 16,0 */
	reached10[14] = 1;
	trans[10][14]	= settr(0,0,0,0,0,"assert(!((!((lumiere_palieres==1))&&!(portes_palieres_fermees))))",0,0,0);
	trans[10][18]	= settr(310,0,19,1,0,"break", 0, 2, 0);
	trans[10][19]	= settr(311,0,20,1,0,"(1)", 0, 2, 0);
	trans[10][20]	= settr(312,0,0,22,22,"-end-", 0, 3500, 0);

	/* proctype 9: propriete_b_fermeture_train */

	trans[9] = (Trans **) emalloc(21*sizeof(Trans *));

	trans[9][9]	= settr(281,0,8,1,0,".(goto)", 0, 2, 0);
	T = trans[9][8] = settr(280,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(280,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(280,0,5,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(280,0,6,0,0,"DO", 0, 2, 0);
	trans[9][1]	= settr(273,0,16,23,0,"((!(!((!(portes_train_ouvertes)&&!(portes_train_fermees))))&&!(portes_train_fermees)))", 1, 2, 0);
	trans[9][2]	= settr(274,0,16,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 9][5] = settr(277,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(277,2,3,0,0,"ATOMIC", 1, 2, 0);
	trans[9][3]	= settr(275,0,8,24,24,"(((!(!((!(portes_train_ouvertes)&&!(portes_train_fermees))))&&!((lumiere_train==1)))&&!(portes_train_fermees)))", 1, 2, 0); /* m: 4 -> 8,0 */
	reached9[4] = 1;
	trans[9][4]	= settr(0,0,0,0,0,"assert(!(((!(!((!(portes_train_ouvertes)&&!(portes_train_fermees))))&&!((lumiere_train==1)))&&!(portes_train_fermees))))",0,0,0);
	trans[9][6]	= settr(278,0,8,1,0,"(1)", 0, 2, 0);
	trans[9][7]	= settr(279,0,8,1,0,"goto T0_init", 0, 2, 0);
	trans[9][10]	= settr(282,0,16,1,0,"break", 0, 2, 0);
	trans[9][17]	= settr(289,0,16,1,0,".(goto)", 0, 2, 0);
	T = trans[9][16] = settr(288,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(288,0,11,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(288,0,15,0,0,"DO", 0, 2, 0);
	trans[9][11]	= settr(283,0,16,25,0,"(!(portes_train_fermees))", 1, 2, 0);
	trans[9][12]	= settr(284,0,16,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 9][15] = settr(287,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(287,2,13,0,0,"ATOMIC", 1, 2, 0);
	trans[9][13]	= settr(285,0,16,26,26,"((!((lumiere_train==1))&&!(portes_train_fermees)))", 1, 2, 0); /* m: 14 -> 16,0 */
	reached9[14] = 1;
	trans[9][14]	= settr(0,0,0,0,0,"assert(!((!((lumiere_train==1))&&!(portes_train_fermees))))",0,0,0);
	trans[9][18]	= settr(290,0,19,1,0,"break", 0, 2, 0);
	trans[9][19]	= settr(291,0,20,1,0,"(1)", 0, 2, 0);
	trans[9][20]	= settr(292,0,0,27,27,"-end-", 0, 3500, 0);

	/* proctype 8: propriete_b_palieres */

	trans[8] = (Trans **) emalloc(21*sizeof(Trans *));

	trans[8][9]	= settr(261,0,8,1,0,".(goto)", 0, 2, 0);
	T = trans[8][8] = settr(260,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(260,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(260,0,5,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(260,0,6,0,0,"DO", 0, 2, 0);
	trans[8][1]	= settr(253,0,16,28,0,"((!(!((!(portes_palieres_fermees)&&!(portes_palieres_ouvertes))))&&!(portes_palieres_ouvertes)))", 1, 2, 0);
	trans[8][2]	= settr(254,0,16,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 8][5] = settr(257,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(257,2,3,0,0,"ATOMIC", 1, 2, 0);
	trans[8][3]	= settr(255,0,8,29,29,"(((!(!((!(portes_palieres_fermees)&&!(portes_palieres_ouvertes))))&&!((lumiere_palieres==1)))&&!(portes_palieres_ouvertes)))", 1, 2, 0); /* m: 4 -> 8,0 */
	reached8[4] = 1;
	trans[8][4]	= settr(0,0,0,0,0,"assert(!(((!(!((!(portes_palieres_fermees)&&!(portes_palieres_ouvertes))))&&!((lumiere_palieres==1)))&&!(portes_palieres_ouvertes))))",0,0,0);
	trans[8][6]	= settr(258,0,8,1,0,"(1)", 0, 2, 0);
	trans[8][7]	= settr(259,0,8,1,0,"goto T0_init", 0, 2, 0);
	trans[8][10]	= settr(262,0,16,1,0,"break", 0, 2, 0);
	trans[8][17]	= settr(269,0,16,1,0,".(goto)", 0, 2, 0);
	T = trans[8][16] = settr(268,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(268,0,11,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(268,0,15,0,0,"DO", 0, 2, 0);
	trans[8][11]	= settr(263,0,16,30,0,"(!(portes_palieres_ouvertes))", 1, 2, 0);
	trans[8][12]	= settr(264,0,16,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 8][15] = settr(267,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(267,2,13,0,0,"ATOMIC", 1, 2, 0);
	trans[8][13]	= settr(265,0,16,31,31,"((!((lumiere_palieres==1))&&!(portes_palieres_ouvertes)))", 1, 2, 0); /* m: 14 -> 16,0 */
	reached8[14] = 1;
	trans[8][14]	= settr(0,0,0,0,0,"assert(!((!((lumiere_palieres==1))&&!(portes_palieres_ouvertes))))",0,0,0);
	trans[8][18]	= settr(270,0,19,1,0,"break", 0, 2, 0);
	trans[8][19]	= settr(271,0,20,1,0,"(1)", 0, 2, 0);
	trans[8][20]	= settr(272,0,0,32,32,"-end-", 0, 3500, 0);

	/* proctype 7: propriete_b_train */

	trans[7] = (Trans **) emalloc(21*sizeof(Trans *));

	trans[7][9]	= settr(241,0,8,1,0,".(goto)", 0, 2, 0);
	T = trans[7][8] = settr(240,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(240,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(240,0,5,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(240,0,6,0,0,"DO", 0, 2, 0);
	trans[7][1]	= settr(233,0,16,33,0,"((!(!((!(portes_train_fermees)&&!(portes_train_ouvertes))))&&!(portes_train_ouvertes)))", 1, 2, 0);
	trans[7][2]	= settr(234,0,16,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 7][5] = settr(237,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(237,2,3,0,0,"ATOMIC", 1, 2, 0);
	trans[7][3]	= settr(235,0,8,34,34,"(((!(!((!(portes_train_fermees)&&!(portes_train_ouvertes))))&&!((lumiere_train==1)))&&!(portes_train_ouvertes)))", 1, 2, 0); /* m: 4 -> 8,0 */
	reached7[4] = 1;
	trans[7][4]	= settr(0,0,0,0,0,"assert(!(((!(!((!(portes_train_fermees)&&!(portes_train_ouvertes))))&&!((lumiere_train==1)))&&!(portes_train_ouvertes))))",0,0,0);
	trans[7][6]	= settr(238,0,8,1,0,"(1)", 0, 2, 0);
	trans[7][7]	= settr(239,0,8,1,0,"goto T0_init", 0, 2, 0);
	trans[7][10]	= settr(242,0,16,1,0,"break", 0, 2, 0);
	trans[7][17]	= settr(249,0,16,1,0,".(goto)", 0, 2, 0);
	T = trans[7][16] = settr(248,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(248,0,11,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(248,0,15,0,0,"DO", 0, 2, 0);
	trans[7][11]	= settr(243,0,16,35,0,"(!(portes_train_ouvertes))", 1, 2, 0);
	trans[7][12]	= settr(244,0,16,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 7][15] = settr(247,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(247,2,13,0,0,"ATOMIC", 1, 2, 0);
	trans[7][13]	= settr(245,0,16,36,36,"((!((lumiere_train==1))&&!(portes_train_ouvertes)))", 1, 2, 0); /* m: 14 -> 16,0 */
	reached7[14] = 1;
	trans[7][14]	= settr(0,0,0,0,0,"assert(!((!((lumiere_train==1))&&!(portes_train_ouvertes))))",0,0,0);
	trans[7][18]	= settr(250,0,19,1,0,"break", 0, 2, 0);
	trans[7][19]	= settr(251,0,20,1,0,"(1)", 0, 2, 0);
	trans[7][20]	= settr(252,0,0,37,37,"-end-", 0, 3500, 0);

	/* proctype 6: propriete_a */

	trans[6] = (Trans **) emalloc(21*sizeof(Trans *));

	trans[6][9]	= settr(221,0,8,1,0,".(goto)", 0, 2, 0);
	T = trans[6][8] = settr(220,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(220,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(220,0,5,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(220,0,6,0,0,"DO", 0, 2, 0);
	trans[6][1]	= settr(213,0,16,38,0,"((!(!(train_aligned))&&!((train_stopped&&train_aligned))))", 1, 2, 0);
	trans[6][2]	= settr(214,0,16,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 6][5] = settr(217,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(217,2,3,0,0,"ATOMIC", 1, 2, 0);
	trans[6][3]	= settr(215,0,8,39,39,"(((!(!(train_aligned))&&!((portes_train_fermees&&portes_palieres_fermees)))&&!((train_stopped&&train_aligned))))", 1, 2, 0); /* m: 4 -> 8,0 */
	reached6[4] = 1;
	trans[6][4]	= settr(0,0,0,0,0,"assert(!(((!(!(train_aligned))&&!((portes_train_fermees&&portes_palieres_fermees)))&&!((train_stopped&&train_aligned)))))",0,0,0);
	trans[6][6]	= settr(218,0,8,1,0,"(1)", 0, 2, 0);
	trans[6][7]	= settr(219,0,8,1,0,"goto T0_init", 0, 2, 0);
	trans[6][10]	= settr(222,0,16,1,0,"break", 0, 2, 0);
	trans[6][17]	= settr(229,0,16,1,0,".(goto)", 0, 2, 0);
	T = trans[6][16] = settr(228,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(228,0,11,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(228,0,15,0,0,"DO", 0, 2, 0);
	trans[6][11]	= settr(223,0,16,40,0,"(!((train_stopped&&train_aligned)))", 1, 2, 0);
	trans[6][12]	= settr(224,0,16,1,0,"goto accept_S4", 0, 2, 0);
	T = trans[ 6][15] = settr(227,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(227,2,13,0,0,"ATOMIC", 1, 2, 0);
	trans[6][13]	= settr(225,0,16,41,41,"((!((portes_train_fermees&&portes_palieres_fermees))&&!((train_stopped&&train_aligned))))", 1, 2, 0); /* m: 14 -> 16,0 */
	reached6[14] = 1;
	trans[6][14]	= settr(0,0,0,0,0,"assert(!((!((portes_train_fermees&&portes_palieres_fermees))&&!((train_stopped&&train_aligned)))))",0,0,0);
	trans[6][18]	= settr(230,0,19,1,0,"break", 0, 2, 0);
	trans[6][19]	= settr(231,0,20,1,0,"(1)", 0, 2, 0);
	trans[6][20]	= settr(232,0,0,42,42,"-end-", 0, 3500, 0);

	/* proctype 5: :init: */

	trans[5] = (Trans **) emalloc(19*sizeof(Trans *));

	trans[5][1]	= settr(195,0,11,43,43,"printf('\\n')", 0, 2, 0); /* m: 2 -> 0,11 */
	reached5[2] = 1;
	trans[5][2]	= settr(0,0,0,0,0,"printf('========================================================\\n')",0,0,0);
	trans[5][3]	= settr(0,0,0,0,0,"printf('  SYSTÈME DE CONTRÔLE DE PORTES PALIÈRES - DÉMARRAGE\\n')",0,0,0);
	trans[5][4]	= settr(0,0,0,0,0,"printf('========================================================\\n')",0,0,0);
	trans[5][5]	= settr(0,0,0,0,0,"printf('\\n')",0,0,0);
	T = trans[ 5][11] = settr(205,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(205,2,6,0,0,"ATOMIC", 0, 2, 0);
	trans[5][6]	= settr(200,2,7,44,44,"(run SAET())", 0, 2, 0);
	trans[5][7]	= settr(201,2,8,45,45,"(run DOF_Bord())", 0, 2, 0);
	trans[5][8]	= settr(202,2,9,46,46,"(run DOF_Sol())", 0, 2, 0);
	trans[5][9]	= settr(203,2,10,47,47,"(run Controleur_Portes_Train())", 0, 2, 0);
	trans[5][10]	= settr(204,0,12,48,48,"(run Controleur_Portes_Palieres())", 0, 2, 0);
	trans[5][12]	= settr(206,0,13,49,0,"((_nr_pr==1))", 1, 2, 0);
	trans[5][13]	= settr(207,0,18,50,50,"printf('\\n')", 0, 2, 0); /* m: 14 -> 0,18 */
	reached5[14] = 1;
	trans[5][14]	= settr(0,0,0,0,0,"printf('========================================================\\n')",0,0,0);
	trans[5][15]	= settr(0,0,0,0,0,"printf('  CYCLE OPÉRATIONNEL TERMINÉ AVEC SUCCÈS\\n')",0,0,0);
	trans[5][16]	= settr(0,0,0,0,0,"printf('========================================================\\n')",0,0,0);
	trans[5][17]	= settr(0,0,0,0,0,"printf('\\n')",0,0,0);
	trans[5][18]	= settr(212,0,0,51,51,"-end-", 0, 3500, 0);

	/* proctype 4: Controleur_Portes_Palieres */

	trans[4] = (Trans **) emalloc(31*sizeof(Trans *));

	trans[4][28]	= settr(192,0,27,1,0,".(goto)", 0, 2, 0);
	T = trans[4][27] = settr(191,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(191,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(191,0,14,0,0,"DO", 0, 2, 0);
	trans[4][1]	= settr(165,0,2,52,0,"((((lumiere_palieres==1)&&!(portes_palieres_fermees))&&!(portes_palieres_ouvertes)))", 1, 2, 0);
	trans[4][2]	= settr(166,0,11,53,0,"printf('  [Ctrl-Palières] Détection : Portes en ouverture...\\n')", 0, 2, 0);
	T = trans[ 4][11] = settr(175,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(175,0,3,0,0,"sub-sequence", 0, 2, 0);
	trans[4][3]	= settr(167,0,8,54,54,"i = 2", 0, 2, 0);
	trans[4][9]	= settr(173,0,8,1,0,".(goto)", 0, 2, 0);
	T = trans[4][8] = settr(172,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(172,0,4,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(172,0,6,0,0,"DO", 0, 2, 0);
	trans[4][4]	= settr(168,0,8,55,55,"((i>0))", 0, 2, 0); /* m: 5 -> 8,0 */
	reached4[5] = 1;
	trans[4][5]	= settr(0,0,0,0,0,"i = (i-1)",0,0,0);
	trans[4][6]	= settr(170,0,12,2,0,"else", 0, 2, 0);
	trans[4][7]	= settr(171,0,12,1,0,"goto :b10", 0, 2, 0); /* m: 12 -> 0,13 */
	reached4[12] = 1;
	trans[4][10]	= settr(174,0,12,1,0,"break", 0, 2, 0);
	trans[4][12]	= settr(176,0,13,56,56,"printf('  [Ctrl-Palières] Ouverture complète détectée\\n')", 0, 2, 0);
	trans[4][13]	= settr(177,0,27,57,57,"status_portes_palieres!OPEN_CONFIRMED", 1, 7, 0);
	trans[4][14]	= settr(178,0,15,58,0,"((((lumiere_palieres==1)&&!(portes_palieres_ouvertes))&&!(portes_palieres_fermees)))", 1, 2, 0);
	trans[4][15]	= settr(179,0,24,59,0,"printf('  [Ctrl-Palières] Détection : Portes en fermeture...\\n')", 0, 2, 0);
	T = trans[ 4][24] = settr(188,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(188,0,16,0,0,"sub-sequence", 0, 2, 0);
	trans[4][16]	= settr(180,0,21,60,60,"i = 2", 0, 2, 0);
	trans[4][22]	= settr(186,0,21,1,0,".(goto)", 0, 2, 0);
	T = trans[4][21] = settr(185,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(185,0,17,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(185,0,19,0,0,"DO", 0, 2, 0);
	trans[4][17]	= settr(181,0,21,61,61,"((i>0))", 0, 2, 0); /* m: 18 -> 21,0 */
	reached4[18] = 1;
	trans[4][18]	= settr(0,0,0,0,0,"i = (i-1)",0,0,0);
	trans[4][19]	= settr(183,0,25,2,0,"else", 0, 2, 0);
	trans[4][20]	= settr(184,0,25,1,0,"goto :b11", 0, 2, 0); /* m: 25 -> 0,26 */
	reached4[25] = 1;
	trans[4][23]	= settr(187,0,25,1,0,"break", 0, 2, 0);
	trans[4][25]	= settr(189,0,26,62,62,"printf('  [Ctrl-Palières] Fermeture complète détectée\\n')", 0, 2, 0);
	trans[4][26]	= settr(190,0,27,63,63,"status_portes_palieres!CLOSE_CONFIRMED", 1, 7, 0);
	trans[4][29]	= settr(193,0,30,1,0,"break", 0, 2, 0);
	trans[4][30]	= settr(194,0,0,64,64,"-end-", 0, 3500, 0);

	/* proctype 3: Controleur_Portes_Train */

	trans[3] = (Trans **) emalloc(31*sizeof(Trans *));

	trans[3][28]	= settr(162,0,27,1,0,".(goto)", 0, 2, 0);
	T = trans[3][27] = settr(161,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(161,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(161,0,14,0,0,"DO", 0, 2, 0);
	trans[3][1]	= settr(135,0,2,65,0,"((((lumiere_train==1)&&!(portes_train_fermees))&&!(portes_train_ouvertes)))", 1, 2, 0);
	trans[3][2]	= settr(136,0,11,66,0,"printf('  [Ctrl-Train] Détection : Portes en ouverture...\\n')", 0, 2, 0);
	T = trans[ 3][11] = settr(145,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(145,0,3,0,0,"sub-sequence", 0, 2, 0);
	trans[3][3]	= settr(137,0,8,67,67,"i = 2", 0, 2, 0);
	trans[3][9]	= settr(143,0,8,1,0,".(goto)", 0, 2, 0);
	T = trans[3][8] = settr(142,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(142,0,4,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(142,0,6,0,0,"DO", 0, 2, 0);
	trans[3][4]	= settr(138,0,8,68,68,"((i>0))", 0, 2, 0); /* m: 5 -> 8,0 */
	reached3[5] = 1;
	trans[3][5]	= settr(0,0,0,0,0,"i = (i-1)",0,0,0);
	trans[3][6]	= settr(140,0,12,2,0,"else", 0, 2, 0);
	trans[3][7]	= settr(141,0,12,1,0,"goto :b7", 0, 2, 0); /* m: 12 -> 0,13 */
	reached3[12] = 1;
	trans[3][10]	= settr(144,0,12,1,0,"break", 0, 2, 0);
	trans[3][12]	= settr(146,0,13,69,69,"printf('  [Ctrl-Train] Ouverture complète détectée\\n')", 0, 2, 0);
	trans[3][13]	= settr(147,0,27,70,70,"status_portes_train!OPEN_CONFIRMED", 1, 6, 0);
	trans[3][14]	= settr(148,0,15,71,0,"((((lumiere_train==1)&&!(portes_train_ouvertes))&&!(portes_train_fermees)))", 1, 2, 0);
	trans[3][15]	= settr(149,0,24,72,0,"printf('  [Ctrl-Train] Détection : Portes en fermeture...\\n')", 0, 2, 0);
	T = trans[ 3][24] = settr(158,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(158,0,16,0,0,"sub-sequence", 0, 2, 0);
	trans[3][16]	= settr(150,0,21,73,73,"i = 2", 0, 2, 0);
	trans[3][22]	= settr(156,0,21,1,0,".(goto)", 0, 2, 0);
	T = trans[3][21] = settr(155,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(155,0,17,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(155,0,19,0,0,"DO", 0, 2, 0);
	trans[3][17]	= settr(151,0,21,74,74,"((i>0))", 0, 2, 0); /* m: 18 -> 21,0 */
	reached3[18] = 1;
	trans[3][18]	= settr(0,0,0,0,0,"i = (i-1)",0,0,0);
	trans[3][19]	= settr(153,0,25,2,0,"else", 0, 2, 0);
	trans[3][20]	= settr(154,0,25,1,0,"goto :b8", 0, 2, 0); /* m: 25 -> 0,26 */
	reached3[25] = 1;
	trans[3][23]	= settr(157,0,25,1,0,"break", 0, 2, 0);
	trans[3][25]	= settr(159,0,26,75,75,"printf('  [Ctrl-Train] Fermeture complète détectée\\n')", 0, 2, 0);
	trans[3][26]	= settr(160,0,27,76,76,"status_portes_train!CLOSE_CONFIRMED", 1, 6, 0);
	trans[3][29]	= settr(163,0,30,1,0,"break", 0, 2, 0);
	trans[3][30]	= settr(164,0,0,77,77,"-end-", 0, 3500, 0);

	/* proctype 2: DOF_Sol */

	trans[2] = (Trans **) emalloc(106*sizeof(Trans *));

	trans[2][1]	= settr(30,0,2,78,78,"cmd_bord_to_sol?cmd", 1, 504, 0);
	trans[2][2]	= settr(31,0,4,79,79,"assert((cmd==OPEN_CMD))", 0, 2, 0); /* m: 3 -> 0,4 */
	reached2[3] = 1;
	trans[2][3]	= settr(0,0,0,0,0,"printf('[DOF-Sol] Commande OPEN_CMD reçue\\n')",0,0,0);
	trans[2][4]	= settr(33,0,5,80,0,"assert((train_aligned&&train_stopped))", 1, 2, 0);
	trans[2][5]	= settr(34,0,6,81,0,"assert((portes_train_fermees&&portes_palieres_fermees))", 1, 2, 0);
	trans[2][6]	= settr(35,0,7,82,0,"printf('[DOF-Sol] Vérifications de sécurité : OK\\n')", 0, 2, 0);
	trans[2][7]	= settr(36,0,8,83,0,"printf('[DOF-Sol]   - Train aligné : %d\\n',train_aligned)", 1, 2, 0);
	trans[2][8]	= settr(37,0,9,84,0,"printf('[DOF-Sol]   - Train arrêté : %d\\n',train_stopped)", 1, 2, 0);
	trans[2][9]	= settr(38,0,10,85,0,"printf('[DOF-Sol]   - Portes fermées : %d\\n',(portes_train_fermees&&portes_palieres_fermees))", 1, 2, 0);
	trans[2][10]	= settr(39,0,11,86,86,"ack_sol_to_bord!ACK", 1, 5, 0);
	trans[2][11]	= settr(40,0,13,87,87,"printf('[DOF-Sol] Accusé de réception envoyé\\n')", 0, 2, 0); /* m: 12 -> 0,13 */
	reached2[12] = 1;
	trans[2][12]	= settr(0,0,0,0,0,"printf('\\n[DOF-Sol] === DÉBUT OUVERTURE PORTES TRAIN ===\\n')",0,0,0);
	trans[2][13]	= settr(42,0,14,88,88,"lumiere_train = 1", 1, 2, 0);
	trans[2][14]	= settr(43,0,15,89,89,"portes_train_fermees = 0", 1, 2, 0);
	trans[2][15]	= settr(44,0,25,90,90,"printf('[DOF-Sol] Indicateur JAUNE activé pour portes train\\n')", 0, 2, 0); /* m: 16 -> 0,25 */
	reached2[16] = 1;
	trans[2][16]	= settr(0,0,0,0,0,"printf('[DOF-Sol] Commande d'ouverture envoyée aux portes train\\n')",0,0,0);
	T = trans[ 2][25] = settr(54,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(54,0,17,0,0,"sub-sequence", 0, 2, 0);
	trans[2][17]	= settr(46,0,22,91,91,"i = 2", 0, 2, 0);
	trans[2][23]	= settr(52,0,22,1,0,".(goto)", 0, 2, 0);
	T = trans[2][22] = settr(51,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(51,0,18,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(51,0,20,0,0,"DO", 0, 2, 0);
	trans[2][18]	= settr(47,0,22,92,92,"((i>0))", 0, 2, 0); /* m: 19 -> 22,0 */
	reached2[19] = 1;
	trans[2][19]	= settr(0,0,0,0,0,"i = (i-1)",0,0,0);
	trans[2][20]	= settr(49,0,26,2,0,"else", 0, 2, 0);
	trans[2][21]	= settr(50,0,26,1,0,"goto :b1", 0, 2, 0); /* m: 26 -> 0,27 */
	reached2[26] = 1;
	trans[2][24]	= settr(53,0,26,1,0,"break", 0, 2, 0);
	trans[2][26]	= settr(55,0,27,93,93,"printf('\\n[DOF-Sol] === DÉBUT OUVERTURE PORTES PALIÈRES ===\\n')", 0, 2, 0);
	trans[2][27]	= settr(56,0,28,94,94,"lumiere_palieres = 1", 1, 2, 0);
	trans[2][28]	= settr(57,0,29,95,95,"portes_palieres_fermees = 0", 1, 2, 0);
	trans[2][29]	= settr(58,0,39,96,96,"printf('[DOF-Sol] Indicateur JAUNE activé pour portes palières\\n')", 0, 2, 0); /* m: 30 -> 0,39 */
	reached2[30] = 1;
	trans[2][30]	= settr(0,0,0,0,0,"printf('[DOF-Sol] Commande d'ouverture envoyée aux portes palières\\n')",0,0,0);
	T = trans[ 2][39] = settr(68,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(68,0,31,0,0,"sub-sequence", 0, 2, 0);
	trans[2][31]	= settr(60,0,36,97,97,"i = 2", 0, 2, 0);
	trans[2][37]	= settr(66,0,36,1,0,".(goto)", 0, 2, 0);
	T = trans[2][36] = settr(65,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(65,0,32,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(65,0,34,0,0,"DO", 0, 2, 0);
	trans[2][32]	= settr(61,0,36,98,98,"((i>0))", 0, 2, 0); /* m: 33 -> 36,0 */
	reached2[33] = 1;
	trans[2][33]	= settr(0,0,0,0,0,"i = (i-1)",0,0,0);
	trans[2][34]	= settr(63,0,40,2,0,"else", 0, 2, 0);
	trans[2][35]	= settr(64,0,40,1,0,"goto :b2", 0, 2, 0); /* m: 40 -> 0,41 */
	reached2[40] = 1;
	trans[2][38]	= settr(67,0,40,1,0,"break", 0, 2, 0);
	trans[2][40]	= settr(69,0,41,99,99,"printf('\\n[DOF-Sol] Attente des confirmations d'ouverture...\\n')", 0, 2, 0);
	trans[2][41]	= settr(70,0,42,100,100,"status_portes_train?OPEN_CONFIRMED", 1, 506, 0);
	trans[2][42]	= settr(71,0,43,101,0,"printf('[DOF-Sol] ✓ Confirmation reçue : Portes TRAIN complètement ouvertes\\n')", 0, 2, 0);
	trans[2][43]	= settr(72,0,44,102,102,"status_portes_palieres?OPEN_CONFIRMED", 1, 507, 0);
	trans[2][44]	= settr(73,0,45,103,0,"printf('[DOF-Sol] ✓ Confirmation reçue : Portes PALIÈRES complètement ouvertes\\n')", 0, 2, 0);
	trans[2][45]	= settr(74,0,46,104,104,"lumiere_train = 2", 1, 2, 0);
	trans[2][46]	= settr(75,0,47,105,105,"lumiere_palieres = 2", 1, 2, 0);
	trans[2][47]	= settr(76,0,48,106,106,"portes_train_ouvertes = 1", 1, 2, 0);
	trans[2][48]	= settr(77,0,49,107,107,"portes_palieres_ouvertes = 1", 1, 2, 0);
	trans[2][49]	= settr(78,0,61,108,108,"printf('\\n[DOF-Sol] === TOUTES LES PORTES SONT OUVERTES ===\\n')", 0, 2, 0); /* m: 50 -> 0,61 */
	reached2[50] = 1;
	trans[2][50]	= settr(0,0,0,0,0,"printf('[DOF-Sol] Indicateurs lumineux VERTS activés\\n')",0,0,0);
	trans[2][51]	= settr(0,0,0,0,0,"printf('[DOF-Sol] Les passagers peuvent embarquer/débarquer\\n')",0,0,0);
	trans[2][52]	= settr(0,0,0,0,0,"printf('\\n[DOF-Sol] Phase d'embarquement (60 secondes)...\\n')",0,0,0);
	T = trans[ 2][61] = settr(90,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(90,0,53,0,0,"sub-sequence", 0, 2, 0);
	trans[2][53]	= settr(82,0,58,109,109,"i = 60", 0, 2, 0);
	trans[2][59]	= settr(88,0,58,1,0,".(goto)", 0, 2, 0);
	T = trans[2][58] = settr(87,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(87,0,54,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(87,0,56,0,0,"DO", 0, 2, 0);
	trans[2][54]	= settr(83,0,58,110,110,"((i>0))", 0, 2, 0); /* m: 55 -> 58,0 */
	reached2[55] = 1;
	trans[2][55]	= settr(0,0,0,0,0,"i = (i-1)",0,0,0);
	trans[2][56]	= settr(85,0,62,2,0,"else", 0, 2, 0);
	trans[2][57]	= settr(86,0,62,1,0,"goto :b3", 0, 2, 0); /* m: 62 -> 0,64 */
	reached2[62] = 1;
	trans[2][60]	= settr(89,0,62,1,0,"break", 0, 2, 0);
	trans[2][62]	= settr(91,0,64,111,111,"printf('\\n[DOF-Sol] === DÉBUT DE LA SÉQUENCE DE FERMETURE ===\\n')", 0, 2, 0); /* m: 63 -> 0,64 */
	reached2[63] = 1;
	trans[2][63]	= settr(0,0,0,0,0,"printf('\\n[DOF-Sol] === DÉBUT FERMETURE PORTES TRAIN ===\\n')",0,0,0);
	trans[2][64]	= settr(93,0,65,112,112,"lumiere_train = 1", 1, 2, 0);
	trans[2][65]	= settr(94,0,66,113,113,"portes_train_ouvertes = 0", 1, 2, 0);
	trans[2][66]	= settr(95,0,76,114,114,"printf('[DOF-Sol] Indicateur JAUNE activé pour portes train\\n')", 0, 2, 0); /* m: 67 -> 0,76 */
	reached2[67] = 1;
	trans[2][67]	= settr(0,0,0,0,0,"printf('[DOF-Sol] Commande de fermeture envoyée aux portes train\\n')",0,0,0);
	T = trans[ 2][76] = settr(105,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(105,0,68,0,0,"sub-sequence", 0, 2, 0);
	trans[2][68]	= settr(97,0,73,115,115,"i = 2", 0, 2, 0);
	trans[2][74]	= settr(103,0,73,1,0,".(goto)", 0, 2, 0);
	T = trans[2][73] = settr(102,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(102,0,69,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(102,0,71,0,0,"DO", 0, 2, 0);
	trans[2][69]	= settr(98,0,73,116,116,"((i>0))", 0, 2, 0); /* m: 70 -> 73,0 */
	reached2[70] = 1;
	trans[2][70]	= settr(0,0,0,0,0,"i = (i-1)",0,0,0);
	trans[2][71]	= settr(100,0,77,2,0,"else", 0, 2, 0);
	trans[2][72]	= settr(101,0,77,1,0,"goto :b4", 0, 2, 0); /* m: 77 -> 0,78 */
	reached2[77] = 1;
	trans[2][75]	= settr(104,0,77,1,0,"break", 0, 2, 0);
	trans[2][77]	= settr(106,0,78,117,117,"printf('\\n[DOF-Sol] === DÉBUT FERMETURE PORTES PALIÈRES ===\\n')", 0, 2, 0);
	trans[2][78]	= settr(107,0,79,118,118,"lumiere_palieres = 1", 1, 2, 0);
	trans[2][79]	= settr(108,0,80,119,119,"portes_palieres_ouvertes = 0", 1, 2, 0);
	trans[2][80]	= settr(109,0,90,120,120,"printf('[DOF-Sol] Indicateur JAUNE activé pour portes palières\\n')", 0, 2, 0); /* m: 81 -> 0,90 */
	reached2[81] = 1;
	trans[2][81]	= settr(0,0,0,0,0,"printf('[DOF-Sol] Commande de fermeture envoyée aux portes palières\\n')",0,0,0);
	T = trans[ 2][90] = settr(119,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(119,0,82,0,0,"sub-sequence", 0, 2, 0);
	trans[2][82]	= settr(111,0,87,121,121,"i = 2", 0, 2, 0);
	trans[2][88]	= settr(117,0,87,1,0,".(goto)", 0, 2, 0);
	T = trans[2][87] = settr(116,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(116,0,83,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(116,0,85,0,0,"DO", 0, 2, 0);
	trans[2][83]	= settr(112,0,87,122,122,"((i>0))", 0, 2, 0); /* m: 84 -> 87,0 */
	reached2[84] = 1;
	trans[2][84]	= settr(0,0,0,0,0,"i = (i-1)",0,0,0);
	trans[2][85]	= settr(114,0,91,2,0,"else", 0, 2, 0);
	trans[2][86]	= settr(115,0,91,1,0,"goto :b5", 0, 2, 0); /* m: 91 -> 0,92 */
	reached2[91] = 1;
	trans[2][89]	= settr(118,0,91,1,0,"break", 0, 2, 0);
	trans[2][91]	= settr(120,0,92,123,123,"printf('\\n[DOF-Sol] Attente des confirmations de fermeture...\\n')", 0, 2, 0);
	trans[2][92]	= settr(121,0,93,124,124,"status_portes_train?CLOSE_CONFIRMED", 1, 506, 0);
	trans[2][93]	= settr(122,0,94,125,0,"printf('[DOF-Sol] ✓ Confirmation reçue : Portes TRAIN complètement fermées\\n')", 0, 2, 0);
	trans[2][94]	= settr(123,0,95,126,126,"status_portes_palieres?CLOSE_CONFIRMED", 1, 507, 0);
	trans[2][95]	= settr(124,0,96,127,0,"printf('[DOF-Sol] ✓ Confirmation reçue : Portes PALIÈRES complètement fermées\\n')", 0, 2, 0);
	trans[2][96]	= settr(125,0,97,128,128,"lumiere_train = 0", 1, 2, 0);
	trans[2][97]	= settr(126,0,98,129,129,"lumiere_palieres = 0", 1, 2, 0);
	trans[2][98]	= settr(127,0,99,130,130,"portes_train_fermees = 1", 1, 2, 0);
	trans[2][99]	= settr(128,0,100,131,131,"portes_palieres_fermees = 1", 1, 2, 0);
	trans[2][100]	= settr(129,0,102,132,132,"printf('\\n[DOF-Sol] === TOUTES LES PORTES SONT FERMÉES ===\\n')", 0, 2, 0); /* m: 101 -> 0,102 */
	reached2[101] = 1;
	trans[2][101]	= settr(0,0,0,0,0,"printf('[DOF-Sol] Indicateurs lumineux ROUGES activés\\n')",0,0,0);
	trans[2][102]	= settr(131,0,103,133,133,"signal_depart!DEPART_OK", 1, 8, 0);
	trans[2][103]	= settr(132,0,105,134,134,"printf('[DOF-Sol] Signal DEPART_OK envoyé au SAET\\n')", 0, 2, 0); /* m: 104 -> 0,105 */
	reached2[104] = 1;
	trans[2][104]	= settr(0,0,0,0,0,"printf('[DOF-Sol] Retour en mode ATTENTE\\n')",0,0,0);
	trans[2][105]	= settr(134,0,0,135,135,"-end-", 0, 3500, 0);

	/* proctype 1: DOF_Bord */

	trans[1] = (Trans **) emalloc(8*sizeof(Trans *));

	trans[1][1]	= settr(23,0,2,136,136,"cmd_saet_to_bord?cmd", 1, 503, 0);
	trans[1][2]	= settr(24,0,4,137,137,"printf('[DOF-Bord] Commande reçue du SAET : %e\\n',cmd)", 0, 2, 0); /* m: 3 -> 0,4 */
	reached1[3] = 1;
	trans[1][3]	= settr(0,0,0,0,0,"printf('[DOF-Bord] Transmission de la commande au DOF-Sol\\n')",0,0,0);
	trans[1][4]	= settr(26,0,5,138,138,"cmd_bord_to_sol!cmd", 1, 4, 0);
	trans[1][5]	= settr(27,0,6,139,139,"ack_sol_to_bord?ACK", 1, 505, 0);
	trans[1][6]	= settr(28,0,7,140,0,"printf('[DOF-Bord] Accusé de réception reçu du DOF-Sol\\n')", 0, 2, 0);
	trans[1][7]	= settr(29,0,0,141,141,"-end-", 0, 3500, 0);

	/* proctype 0: SAET */

	trans[0] = (Trans **) emalloc(24*sizeof(Trans *));

	trans[0][1]	= settr(0,0,2,142,0,"printf('\\n[SAET] Train entre dans la zone d'approche\\n')", 0, 2, 0);
	trans[0][2]	= settr(1,0,3,143,143,"train_aligned = 1", 1, 2, 0);
	trans[0][3]	= settr(2,0,4,144,144,"train_stopped = 1", 1, 2, 0);
	trans[0][4]	= settr(3,0,14,145,145,"printf('[SAET] Train aligné et arrêté dans la zone sécuritaire\\n')", 0, 2, 0); /* m: 5 -> 0,14 */
	reached0[5] = 1;
	trans[0][5]	= settr(0,0,0,0,0,"printf('[SAET] Attente de stabilisation (3 secondes)...\\n')",0,0,0);
	T = trans[ 0][14] = settr(13,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(13,0,6,0,0,"sub-sequence", 0, 2, 0);
	trans[0][6]	= settr(5,0,11,146,146,"i = 3", 0, 2, 0);
	trans[0][12]	= settr(11,0,11,1,0,".(goto)", 0, 2, 0);
	T = trans[0][11] = settr(10,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(10,0,7,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(10,0,9,0,0,"DO", 0, 2, 0);
	trans[0][7]	= settr(6,0,11,147,147,"((i>0))", 0, 2, 0); /* m: 8 -> 11,0 */
	reached0[8] = 1;
	trans[0][8]	= settr(0,0,0,0,0,"i = (i-1)",0,0,0);
	trans[0][9]	= settr(8,0,15,2,0,"else", 0, 2, 0);
	trans[0][10]	= settr(9,0,15,1,0,"goto :b0", 0, 2, 0); /* m: 15 -> 0,16 */
	reached0[15] = 1;
	trans[0][13]	= settr(12,0,15,1,0,"break", 0, 2, 0);
	trans[0][15]	= settr(14,0,16,148,148,"printf('[SAET] Envoi de la commande OPEN_CMD\\n')", 0, 2, 0);
	trans[0][16]	= settr(15,0,17,149,149,"cmd_saet_to_bord!OPEN_CMD", 1, 3, 0);
	trans[0][17]	= settr(16,0,18,150,0,"printf('[SAET] Attente du signal DEPART_OK...\\n')", 0, 2, 0);
	trans[0][18]	= settr(17,0,19,151,151,"signal_depart?DEPART_OK", 1, 508, 0);
	trans[0][19]	= settr(18,0,20,152,0,"printf('[SAET] Signal DEPART_OK reçu - Train autorisé à repartir\\n')", 0, 2, 0);
	trans[0][20]	= settr(19,0,21,153,153,"train_stopped = 0", 1, 2, 0);
	trans[0][21]	= settr(20,0,22,154,154,"train_aligned = 0", 1, 2, 0);
	trans[0][22]	= settr(21,0,23,155,0,"printf('[SAET] Train quitte la station\\n\\n')", 0, 2, 0);
	trans[0][23]	= settr(22,0,0,156,156,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(3*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
