#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM securite_depart */
	case 3: // STATE 1 - _spin_nvr.tmp:134 - [(!((!(!(train_stopped))||(portes_train_fermees&&portes_palieres_fermees))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[17][1] = 1;
		if (!( !(( !( !(((int)now.train_stopped)))||(((int)now.portes_train_fermees)&&((int)now.portes_palieres_fermees))))))
			continue;
		/* merge: assert(!(!((!(!(train_stopped))||(portes_train_fermees&&portes_palieres_fermees)))))(0, 2, 6) */
		reached[17][2] = 1;
		spin_assert( !( !(( !( !(((int)now.train_stopped)))||(((int)now.portes_train_fermees)&&((int)now.portes_palieres_fermees))))), " !( !(( !( !(train_stopped))||(portes_train_fermees&&portes_palieres_fermees))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[17][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:139 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[17][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM lumiere_rouge_implique_ferme */
	case 5: // STATE 1 - _spin_nvr.tmp:125 - [((!((!((lumiere_palieres==0))||portes_palieres_fermees))||!((!((lumiere_train==0))||portes_train_fermees))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][1] = 1;
		if (!(( !(( !((((int)now.lumiere_palieres)==0))||((int)now.portes_palieres_fermees)))|| !(( !((((int)now.lumiere_train)==0))||((int)now.portes_train_fermees))))))
			continue;
		/* merge: assert(!((!((!((lumiere_palieres==0))||portes_palieres_fermees))||!((!((lumiere_train==0))||portes_train_fermees)))))(0, 2, 6) */
		reached[16][2] = 1;
		spin_assert( !(( !(( !((((int)now.lumiere_palieres)==0))||((int)now.portes_palieres_fermees)))|| !(( !((((int)now.lumiere_train)==0))||((int)now.portes_train_fermees))))), " !(( !(( !((lumiere_palieres==0))||portes_palieres_fermees))|| !(( !((lumiere_train==0))||portes_train_fermees))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[16][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 6: // STATE 10 - _spin_nvr.tmp:130 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM lumiere_verte_implique_ouvert */
	case 7: // STATE 1 - _spin_nvr.tmp:116 - [((!((!((lumiere_palieres==2))||portes_palieres_ouvertes))||!((!((lumiere_train==2))||portes_train_ouvertes))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][1] = 1;
		if (!(( !(( !((((int)now.lumiere_palieres)==2))||((int)now.portes_palieres_ouvertes)))|| !(( !((((int)now.lumiere_train)==2))||((int)now.portes_train_ouvertes))))))
			continue;
		/* merge: assert(!((!((!((lumiere_palieres==2))||portes_palieres_ouvertes))||!((!((lumiere_train==2))||portes_train_ouvertes)))))(0, 2, 6) */
		reached[15][2] = 1;
		spin_assert( !(( !(( !((((int)now.lumiere_palieres)==2))||((int)now.portes_palieres_ouvertes)))|| !(( !((((int)now.lumiere_train)==2))||((int)now.portes_train_ouvertes))))), " !(( !(( !((lumiere_palieres==2))||portes_palieres_ouvertes))|| !(( !((lumiere_train==2))||portes_train_ouvertes))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[15][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 8: // STATE 10 - _spin_nvr.tmp:121 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM ordre_ouverture */
	case 9: // STATE 1 - _spin_nvr.tmp:107 - [(!((!(portes_palieres_ouvertes)||portes_train_ouvertes)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][1] = 1;
		if (!( !(( !(((int)now.portes_palieres_ouvertes))||((int)now.portes_train_ouvertes)))))
			continue;
		/* merge: assert(!(!((!(portes_palieres_ouvertes)||portes_train_ouvertes))))(0, 2, 6) */
		reached[14][2] = 1;
		spin_assert( !( !(( !(((int)now.portes_palieres_ouvertes))||((int)now.portes_train_ouvertes)))), " !( !(( !(portes_palieres_ouvertes)||portes_train_ouvertes)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[14][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 10: // STATE 10 - _spin_nvr.tmp:112 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM synchro_ouverture */
	case 11: // STATE 1 - _spin_nvr.tmp:98 - [(!((!(portes_palieres_ouvertes)||portes_train_ouvertes)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][1] = 1;
		if (!( !(( !(((int)now.portes_palieres_ouvertes))||((int)now.portes_train_ouvertes)))))
			continue;
		/* merge: assert(!(!((!(portes_palieres_ouvertes)||portes_train_ouvertes))))(0, 2, 6) */
		reached[13][2] = 1;
		spin_assert( !( !(( !(((int)now.portes_palieres_ouvertes))||((int)now.portes_train_ouvertes)))), " !( !(( !(portes_palieres_ouvertes)||portes_train_ouvertes)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[13][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 12: // STATE 10 - _spin_nvr.tmp:103 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM propriete_c_forte */
	case 13: // STATE 1 - _spin_nvr.tmp:89 - [(!((!(portes_palieres_ouvertes)||(train_stopped&&train_aligned))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][1] = 1;
		if (!( !(( !(((int)now.portes_palieres_ouvertes))||(((int)now.train_stopped)&&((int)now.train_aligned))))))
			continue;
		/* merge: assert(!(!((!(portes_palieres_ouvertes)||(train_stopped&&train_aligned)))))(0, 2, 6) */
		reached[12][2] = 1;
		spin_assert( !( !(( !(((int)now.portes_palieres_ouvertes))||(((int)now.train_stopped)&&((int)now.train_aligned))))), " !( !(( !(portes_palieres_ouvertes)||(train_stopped&&train_aligned))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[12][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 14: // STATE 10 - _spin_nvr.tmp:94 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM propriete_c */
	case 15: // STATE 1 - _spin_nvr.tmp:78 - [((!(!((train_stopped&&train_aligned)))&&!(portes_palieres_ouvertes)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][1] = 1;
		if (!(( !( !((((int)now.train_stopped)&&((int)now.train_aligned))))&& !(((int)now.portes_palieres_ouvertes)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 8 - _spin_nvr.tmp:83 - [(!(portes_palieres_ouvertes))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][8] = 1;
		if (!( !(((int)now.portes_palieres_ouvertes))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 13 - _spin_nvr.tmp:85 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM propriete_b_fermeture_palieres */
	case 18: // STATE 1 - _spin_nvr.tmp:63 - [((!(!((!(portes_palieres_ouvertes)&&!(portes_palieres_fermees))))&&!(portes_palieres_fermees)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][1] = 1;
		if (!(( !( !(( !(((int)now.portes_palieres_ouvertes))&& !(((int)now.portes_palieres_fermees)))))&& !(((int)now.portes_palieres_fermees)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 3 - _spin_nvr.tmp:64 - [(((!(!((!(portes_palieres_ouvertes)&&!(portes_palieres_fermees))))&&!((lumiere_palieres==1)))&&!(portes_palieres_fermees)))] (8:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][3] = 1;
		if (!((( !( !(( !(((int)now.portes_palieres_ouvertes))&& !(((int)now.portes_palieres_fermees)))))&& !((((int)now.lumiere_palieres)==1)))&& !(((int)now.portes_palieres_fermees)))))
			continue;
		/* merge: assert(!(((!(!((!(portes_palieres_ouvertes)&&!(portes_palieres_fermees))))&&!((lumiere_palieres==1)))&&!(portes_palieres_fermees))))(0, 4, 8) */
		reached[10][4] = 1;
		spin_assert( !((( !( !(( !(((int)now.portes_palieres_ouvertes))&& !(((int)now.portes_palieres_fermees)))))&& !((((int)now.lumiere_palieres)==1)))&& !(((int)now.portes_palieres_fermees)))), " !((( !( !(( !(portes_palieres_ouvertes)&& !(portes_palieres_fermees))))&& !((lumiere_palieres==1)))&& !(portes_palieres_fermees)))", II, tt, t);
		/* merge: .(goto)(0, 9, 8) */
		reached[10][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 20: // STATE 11 - _spin_nvr.tmp:69 - [(!(portes_palieres_fermees))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][11] = 1;
		if (!( !(((int)now.portes_palieres_fermees))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 13 - _spin_nvr.tmp:70 - [((!((lumiere_palieres==1))&&!(portes_palieres_fermees)))] (16:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][13] = 1;
		if (!(( !((((int)now.lumiere_palieres)==1))&& !(((int)now.portes_palieres_fermees)))))
			continue;
		/* merge: assert(!((!((lumiere_palieres==1))&&!(portes_palieres_fermees))))(0, 14, 16) */
		reached[10][14] = 1;
		spin_assert( !(( !((((int)now.lumiere_palieres)==1))&& !(((int)now.portes_palieres_fermees)))), " !(( !((lumiere_palieres==1))&& !(portes_palieres_fermees)))", II, tt, t);
		/* merge: .(goto)(0, 17, 16) */
		reached[10][17] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 22: // STATE 20 - _spin_nvr.tmp:74 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM propriete_b_fermeture_train */
	case 23: // STATE 1 - _spin_nvr.tmp:48 - [((!(!((!(portes_train_ouvertes)&&!(portes_train_fermees))))&&!(portes_train_fermees)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][1] = 1;
		if (!(( !( !(( !(((int)now.portes_train_ouvertes))&& !(((int)now.portes_train_fermees)))))&& !(((int)now.portes_train_fermees)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 3 - _spin_nvr.tmp:49 - [(((!(!((!(portes_train_ouvertes)&&!(portes_train_fermees))))&&!((lumiere_train==1)))&&!(portes_train_fermees)))] (8:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][3] = 1;
		if (!((( !( !(( !(((int)now.portes_train_ouvertes))&& !(((int)now.portes_train_fermees)))))&& !((((int)now.lumiere_train)==1)))&& !(((int)now.portes_train_fermees)))))
			continue;
		/* merge: assert(!(((!(!((!(portes_train_ouvertes)&&!(portes_train_fermees))))&&!((lumiere_train==1)))&&!(portes_train_fermees))))(0, 4, 8) */
		reached[9][4] = 1;
		spin_assert( !((( !( !(( !(((int)now.portes_train_ouvertes))&& !(((int)now.portes_train_fermees)))))&& !((((int)now.lumiere_train)==1)))&& !(((int)now.portes_train_fermees)))), " !((( !( !(( !(portes_train_ouvertes)&& !(portes_train_fermees))))&& !((lumiere_train==1)))&& !(portes_train_fermees)))", II, tt, t);
		/* merge: .(goto)(0, 9, 8) */
		reached[9][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 25: // STATE 11 - _spin_nvr.tmp:54 - [(!(portes_train_fermees))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][11] = 1;
		if (!( !(((int)now.portes_train_fermees))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 13 - _spin_nvr.tmp:55 - [((!((lumiere_train==1))&&!(portes_train_fermees)))] (16:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][13] = 1;
		if (!(( !((((int)now.lumiere_train)==1))&& !(((int)now.portes_train_fermees)))))
			continue;
		/* merge: assert(!((!((lumiere_train==1))&&!(portes_train_fermees))))(0, 14, 16) */
		reached[9][14] = 1;
		spin_assert( !(( !((((int)now.lumiere_train)==1))&& !(((int)now.portes_train_fermees)))), " !(( !((lumiere_train==1))&& !(portes_train_fermees)))", II, tt, t);
		/* merge: .(goto)(0, 17, 16) */
		reached[9][17] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 27: // STATE 20 - _spin_nvr.tmp:59 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM propriete_b_palieres */
	case 28: // STATE 1 - _spin_nvr.tmp:33 - [((!(!((!(portes_palieres_fermees)&&!(portes_palieres_ouvertes))))&&!(portes_palieres_ouvertes)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][1] = 1;
		if (!(( !( !(( !(((int)now.portes_palieres_fermees))&& !(((int)now.portes_palieres_ouvertes)))))&& !(((int)now.portes_palieres_ouvertes)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 3 - _spin_nvr.tmp:34 - [(((!(!((!(portes_palieres_fermees)&&!(portes_palieres_ouvertes))))&&!((lumiere_palieres==1)))&&!(portes_palieres_ouvertes)))] (8:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][3] = 1;
		if (!((( !( !(( !(((int)now.portes_palieres_fermees))&& !(((int)now.portes_palieres_ouvertes)))))&& !((((int)now.lumiere_palieres)==1)))&& !(((int)now.portes_palieres_ouvertes)))))
			continue;
		/* merge: assert(!(((!(!((!(portes_palieres_fermees)&&!(portes_palieres_ouvertes))))&&!((lumiere_palieres==1)))&&!(portes_palieres_ouvertes))))(0, 4, 8) */
		reached[8][4] = 1;
		spin_assert( !((( !( !(( !(((int)now.portes_palieres_fermees))&& !(((int)now.portes_palieres_ouvertes)))))&& !((((int)now.lumiere_palieres)==1)))&& !(((int)now.portes_palieres_ouvertes)))), " !((( !( !(( !(portes_palieres_fermees)&& !(portes_palieres_ouvertes))))&& !((lumiere_palieres==1)))&& !(portes_palieres_ouvertes)))", II, tt, t);
		/* merge: .(goto)(0, 9, 8) */
		reached[8][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 30: // STATE 11 - _spin_nvr.tmp:39 - [(!(portes_palieres_ouvertes))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][11] = 1;
		if (!( !(((int)now.portes_palieres_ouvertes))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 13 - _spin_nvr.tmp:40 - [((!((lumiere_palieres==1))&&!(portes_palieres_ouvertes)))] (16:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][13] = 1;
		if (!(( !((((int)now.lumiere_palieres)==1))&& !(((int)now.portes_palieres_ouvertes)))))
			continue;
		/* merge: assert(!((!((lumiere_palieres==1))&&!(portes_palieres_ouvertes))))(0, 14, 16) */
		reached[8][14] = 1;
		spin_assert( !(( !((((int)now.lumiere_palieres)==1))&& !(((int)now.portes_palieres_ouvertes)))), " !(( !((lumiere_palieres==1))&& !(portes_palieres_ouvertes)))", II, tt, t);
		/* merge: .(goto)(0, 17, 16) */
		reached[8][17] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 32: // STATE 20 - _spin_nvr.tmp:44 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM propriete_b_train */
	case 33: // STATE 1 - _spin_nvr.tmp:18 - [((!(!((!(portes_train_fermees)&&!(portes_train_ouvertes))))&&!(portes_train_ouvertes)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][1] = 1;
		if (!(( !( !(( !(((int)now.portes_train_fermees))&& !(((int)now.portes_train_ouvertes)))))&& !(((int)now.portes_train_ouvertes)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 3 - _spin_nvr.tmp:19 - [(((!(!((!(portes_train_fermees)&&!(portes_train_ouvertes))))&&!((lumiere_train==1)))&&!(portes_train_ouvertes)))] (8:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][3] = 1;
		if (!((( !( !(( !(((int)now.portes_train_fermees))&& !(((int)now.portes_train_ouvertes)))))&& !((((int)now.lumiere_train)==1)))&& !(((int)now.portes_train_ouvertes)))))
			continue;
		/* merge: assert(!(((!(!((!(portes_train_fermees)&&!(portes_train_ouvertes))))&&!((lumiere_train==1)))&&!(portes_train_ouvertes))))(0, 4, 8) */
		reached[7][4] = 1;
		spin_assert( !((( !( !(( !(((int)now.portes_train_fermees))&& !(((int)now.portes_train_ouvertes)))))&& !((((int)now.lumiere_train)==1)))&& !(((int)now.portes_train_ouvertes)))), " !((( !( !(( !(portes_train_fermees)&& !(portes_train_ouvertes))))&& !((lumiere_train==1)))&& !(portes_train_ouvertes)))", II, tt, t);
		/* merge: .(goto)(0, 9, 8) */
		reached[7][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 35: // STATE 11 - _spin_nvr.tmp:24 - [(!(portes_train_ouvertes))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][11] = 1;
		if (!( !(((int)now.portes_train_ouvertes))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 13 - _spin_nvr.tmp:25 - [((!((lumiere_train==1))&&!(portes_train_ouvertes)))] (16:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][13] = 1;
		if (!(( !((((int)now.lumiere_train)==1))&& !(((int)now.portes_train_ouvertes)))))
			continue;
		/* merge: assert(!((!((lumiere_train==1))&&!(portes_train_ouvertes))))(0, 14, 16) */
		reached[7][14] = 1;
		spin_assert( !(( !((((int)now.lumiere_train)==1))&& !(((int)now.portes_train_ouvertes)))), " !(( !((lumiere_train==1))&& !(portes_train_ouvertes)))", II, tt, t);
		/* merge: .(goto)(0, 17, 16) */
		reached[7][17] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 37: // STATE 20 - _spin_nvr.tmp:29 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM propriete_a */
	case 38: // STATE 1 - _spin_nvr.tmp:3 - [((!(!(train_aligned))&&!((train_stopped&&train_aligned))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!(( !( !(((int)now.train_aligned)))&& !((((int)now.train_stopped)&&((int)now.train_aligned))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 3 - _spin_nvr.tmp:4 - [(((!(!(train_aligned))&&!((portes_train_fermees&&portes_palieres_fermees)))&&!((train_stopped&&train_aligned))))] (8:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][3] = 1;
		if (!((( !( !(((int)now.train_aligned)))&& !((((int)now.portes_train_fermees)&&((int)now.portes_palieres_fermees))))&& !((((int)now.train_stopped)&&((int)now.train_aligned))))))
			continue;
		/* merge: assert(!(((!(!(train_aligned))&&!((portes_train_fermees&&portes_palieres_fermees)))&&!((train_stopped&&train_aligned)))))(0, 4, 8) */
		reached[6][4] = 1;
		spin_assert( !((( !( !(((int)now.train_aligned)))&& !((((int)now.portes_train_fermees)&&((int)now.portes_palieres_fermees))))&& !((((int)now.train_stopped)&&((int)now.train_aligned))))), " !((( !( !(train_aligned))&& !((portes_train_fermees&&portes_palieres_fermees)))&& !((train_stopped&&train_aligned))))", II, tt, t);
		/* merge: .(goto)(0, 9, 8) */
		reached[6][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 40: // STATE 11 - _spin_nvr.tmp:9 - [(!((train_stopped&&train_aligned)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][11] = 1;
		if (!( !((((int)now.train_stopped)&&((int)now.train_aligned)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 13 - _spin_nvr.tmp:10 - [((!((portes_train_fermees&&portes_palieres_fermees))&&!((train_stopped&&train_aligned))))] (16:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][13] = 1;
		if (!(( !((((int)now.portes_train_fermees)&&((int)now.portes_palieres_fermees)))&& !((((int)now.train_stopped)&&((int)now.train_aligned))))))
			continue;
		/* merge: assert(!((!((portes_train_fermees&&portes_palieres_fermees))&&!((train_stopped&&train_aligned)))))(0, 14, 16) */
		reached[6][14] = 1;
		spin_assert( !(( !((((int)now.portes_train_fermees)&&((int)now.portes_palieres_fermees)))&& !((((int)now.train_stopped)&&((int)now.train_aligned))))), " !(( !((portes_train_fermees&&portes_palieres_fermees))&& !((train_stopped&&train_aligned))))", II, tt, t);
		/* merge: .(goto)(0, 17, 16) */
		reached[6][17] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 42: // STATE 20 - _spin_nvr.tmp:14 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 43: // STATE 1 - metro_portes.pml:328 - [printf('\\n')] (0:11:0 - 1)
		IfNotBlocked
		reached[5][1] = 1;
		Printf("\n");
		/* merge: printf('========================================================\\n')(11, 2, 11) */
		reached[5][2] = 1;
		Printf("========================================================\n");
		/* merge: printf('  SYSTÈME DE CONTRÔLE DE PORTES PALIÈRES - DÉMARRAGE\\n')(11, 3, 11) */
		reached[5][3] = 1;
		Printf("  SYSTÈME DE CONTRÔLE DE PORTES PALIÈRES - DÉMARRAGE\n");
		/* merge: printf('========================================================\\n')(11, 4, 11) */
		reached[5][4] = 1;
		Printf("========================================================\n");
		/* merge: printf('\\n')(11, 5, 11) */
		reached[5][5] = 1;
		Printf("\n");
		_m = 3; goto P999; /* 4 */
	case 44: // STATE 6 - metro_portes.pml:336 - [(run SAET())] (0:0:0 - 1)
		IfNotBlocked
		reached[5][6] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 7 - metro_portes.pml:337 - [(run DOF_Bord())] (0:0:0 - 1)
		IfNotBlocked
		reached[5][7] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 8 - metro_portes.pml:338 - [(run DOF_Sol())] (0:0:0 - 1)
		IfNotBlocked
		reached[5][8] = 1;
		if (!(addproc(II, 1, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 9 - metro_portes.pml:339 - [(run Controleur_Portes_Train())] (0:0:0 - 1)
		IfNotBlocked
		reached[5][9] = 1;
		if (!(addproc(II, 1, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 10 - metro_portes.pml:340 - [(run Controleur_Portes_Palieres())] (0:0:0 - 1)
		IfNotBlocked
		reached[5][10] = 1;
		if (!(addproc(II, 1, 4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 12 - metro_portes.pml:344 - [((_nr_pr==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][12] = 1;
		if (!((((int)now._nr_pr)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 13 - metro_portes.pml:346 - [printf('\\n')] (0:18:0 - 1)
		IfNotBlocked
		reached[5][13] = 1;
		Printf("\n");
		/* merge: printf('========================================================\\n')(18, 14, 18) */
		reached[5][14] = 1;
		Printf("========================================================\n");
		/* merge: printf('  CYCLE OPÉRATIONNEL TERMINÉ AVEC SUCCÈS\\n')(18, 15, 18) */
		reached[5][15] = 1;
		Printf("  CYCLE OPÉRATIONNEL TERMINÉ AVEC SUCCÈS\n");
		/* merge: printf('========================================================\\n')(18, 16, 18) */
		reached[5][16] = 1;
		Printf("========================================================\n");
		/* merge: printf('\\n')(18, 17, 18) */
		reached[5][17] = 1;
		Printf("\n");
		_m = 3; goto P999; /* 4 */
	case 51: // STATE 18 - metro_portes.pml:351 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[5][18] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Controleur_Portes_Palieres */
	case 52: // STATE 1 - metro_portes.pml:309 - [((((lumiere_palieres==1)&&!(portes_palieres_fermees))&&!(portes_palieres_ouvertes)))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		if (!((((((int)now.lumiere_palieres)==1)&& !(((int)now.portes_palieres_fermees)))&& !(((int)now.portes_palieres_ouvertes)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 2 - metro_portes.pml:311 - [printf('  [Ctrl-Palières] Détection : Portes en ouverture...\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		Printf("  [Ctrl-Palières] Détection : Portes en ouverture...\n");
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 3 - metro_portes.pml:77 - [i = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		(trpt+1)->bup.oval = ((P4 *)_this)->_12_9_i;
		((P4 *)_this)->_12_9_i = 2;
#ifdef VAR_RANGES
		logval("Controleur_Portes_Palieres:i", ((P4 *)_this)->_12_9_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 4 - metro_portes.pml:78 - [((i>0))] (8:0:1 - 1)
		IfNotBlocked
		reached[4][4] = 1;
		if (!((((P4 *)_this)->_12_9_i>0)))
			continue;
		/* merge: i = (i-1)(0, 5, 8) */
		reached[4][5] = 1;
		(trpt+1)->bup.oval = ((P4 *)_this)->_12_9_i;
		((P4 *)_this)->_12_9_i = (((P4 *)_this)->_12_9_i-1);
#ifdef VAR_RANGES
		logval("Controleur_Portes_Palieres:i", ((P4 *)_this)->_12_9_i);
#endif
		;
		/* merge: .(goto)(0, 9, 8) */
		reached[4][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 56: // STATE 12 - metro_portes.pml:313 - [printf('  [Ctrl-Palières] Ouverture complète détectée\\n')] (0:13:0 - 3)
		IfNotBlocked
		reached[4][12] = 1;
		Printf("  [Ctrl-Palières] Ouverture complète détectée\n");
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 13 - metro_portes.pml:314 - [status_portes_palieres!OPEN_CONFIRMED] (0:0:0 - 1)
		IfNotBlocked
		reached[4][13] = 1;
		if (q_full(now.status_portes_palieres))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.status_portes_palieres);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.status_portes_palieres, 0, 8, 1);
		if (q_zero(now.status_portes_palieres)) { boq = now.status_portes_palieres; };
		_m = 2; goto P999; /* 0 */
	case 58: // STATE 14 - metro_portes.pml:316 - [((((lumiere_palieres==1)&&!(portes_palieres_ouvertes))&&!(portes_palieres_fermees)))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][14] = 1;
		if (!((((((int)now.lumiere_palieres)==1)&& !(((int)now.portes_palieres_ouvertes)))&& !(((int)now.portes_palieres_fermees)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 15 - metro_portes.pml:318 - [printf('  [Ctrl-Palières] Détection : Portes en fermeture...\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[4][15] = 1;
		Printf("  [Ctrl-Palières] Détection : Portes en fermeture...\n");
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 16 - metro_portes.pml:77 - [i = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[4][16] = 1;
		(trpt+1)->bup.oval = ((P4 *)_this)->_12_10_i;
		((P4 *)_this)->_12_10_i = 2;
#ifdef VAR_RANGES
		logval("Controleur_Portes_Palieres:i", ((P4 *)_this)->_12_10_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 17 - metro_portes.pml:78 - [((i>0))] (21:0:1 - 1)
		IfNotBlocked
		reached[4][17] = 1;
		if (!((((P4 *)_this)->_12_10_i>0)))
			continue;
		/* merge: i = (i-1)(0, 18, 21) */
		reached[4][18] = 1;
		(trpt+1)->bup.oval = ((P4 *)_this)->_12_10_i;
		((P4 *)_this)->_12_10_i = (((P4 *)_this)->_12_10_i-1);
#ifdef VAR_RANGES
		logval("Controleur_Portes_Palieres:i", ((P4 *)_this)->_12_10_i);
#endif
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[4][22] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 62: // STATE 25 - metro_portes.pml:320 - [printf('  [Ctrl-Palières] Fermeture complète détectée\\n')] (0:26:0 - 3)
		IfNotBlocked
		reached[4][25] = 1;
		Printf("  [Ctrl-Palières] Fermeture complète détectée\n");
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 26 - metro_portes.pml:321 - [status_portes_palieres!CLOSE_CONFIRMED] (0:0:0 - 1)
		IfNotBlocked
		reached[4][26] = 1;
		if (q_full(now.status_portes_palieres))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.status_portes_palieres);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.status_portes_palieres, 0, 7, 1);
		if (q_zero(now.status_portes_palieres)) { boq = now.status_portes_palieres; };
		_m = 2; goto P999; /* 0 */
	case 64: // STATE 30 - metro_portes.pml:323 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][30] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Controleur_Portes_Train */
	case 65: // STATE 1 - metro_portes.pml:285 - [((((lumiere_train==1)&&!(portes_train_fermees))&&!(portes_train_ouvertes)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!((((((int)now.lumiere_train)==1)&& !(((int)now.portes_train_fermees)))&& !(((int)now.portes_train_ouvertes)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 2 - metro_portes.pml:287 - [printf('  [Ctrl-Train] Détection : Portes en ouverture...\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		Printf("  [Ctrl-Train] Détection : Portes en ouverture...\n");
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 3 - metro_portes.pml:77 - [i = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		(trpt+1)->bup.oval = ((P3 *)_this)->_11_7_i;
		((P3 *)_this)->_11_7_i = 2;
#ifdef VAR_RANGES
		logval("Controleur_Portes_Train:i", ((P3 *)_this)->_11_7_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 4 - metro_portes.pml:78 - [((i>0))] (8:0:1 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		if (!((((P3 *)_this)->_11_7_i>0)))
			continue;
		/* merge: i = (i-1)(0, 5, 8) */
		reached[3][5] = 1;
		(trpt+1)->bup.oval = ((P3 *)_this)->_11_7_i;
		((P3 *)_this)->_11_7_i = (((P3 *)_this)->_11_7_i-1);
#ifdef VAR_RANGES
		logval("Controleur_Portes_Train:i", ((P3 *)_this)->_11_7_i);
#endif
		;
		/* merge: .(goto)(0, 9, 8) */
		reached[3][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 69: // STATE 12 - metro_portes.pml:289 - [printf('  [Ctrl-Train] Ouverture complète détectée\\n')] (0:13:0 - 3)
		IfNotBlocked
		reached[3][12] = 1;
		Printf("  [Ctrl-Train] Ouverture complète détectée\n");
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 13 - metro_portes.pml:290 - [status_portes_train!OPEN_CONFIRMED] (0:0:0 - 1)
		IfNotBlocked
		reached[3][13] = 1;
		if (q_full(now.status_portes_train))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.status_portes_train);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.status_portes_train, 0, 8, 1);
		if (q_zero(now.status_portes_train)) { boq = now.status_portes_train; };
		_m = 2; goto P999; /* 0 */
	case 71: // STATE 14 - metro_portes.pml:292 - [((((lumiere_train==1)&&!(portes_train_ouvertes))&&!(portes_train_fermees)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][14] = 1;
		if (!((((((int)now.lumiere_train)==1)&& !(((int)now.portes_train_ouvertes)))&& !(((int)now.portes_train_fermees)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 15 - metro_portes.pml:294 - [printf('  [Ctrl-Train] Détection : Portes en fermeture...\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[3][15] = 1;
		Printf("  [Ctrl-Train] Détection : Portes en fermeture...\n");
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 16 - metro_portes.pml:77 - [i = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[3][16] = 1;
		(trpt+1)->bup.oval = ((P3 *)_this)->_11_8_i;
		((P3 *)_this)->_11_8_i = 2;
#ifdef VAR_RANGES
		logval("Controleur_Portes_Train:i", ((P3 *)_this)->_11_8_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 17 - metro_portes.pml:78 - [((i>0))] (21:0:1 - 1)
		IfNotBlocked
		reached[3][17] = 1;
		if (!((((P3 *)_this)->_11_8_i>0)))
			continue;
		/* merge: i = (i-1)(0, 18, 21) */
		reached[3][18] = 1;
		(trpt+1)->bup.oval = ((P3 *)_this)->_11_8_i;
		((P3 *)_this)->_11_8_i = (((P3 *)_this)->_11_8_i-1);
#ifdef VAR_RANGES
		logval("Controleur_Portes_Train:i", ((P3 *)_this)->_11_8_i);
#endif
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[3][22] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 75: // STATE 25 - metro_portes.pml:296 - [printf('  [Ctrl-Train] Fermeture complète détectée\\n')] (0:26:0 - 3)
		IfNotBlocked
		reached[3][25] = 1;
		Printf("  [Ctrl-Train] Fermeture complète détectée\n");
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 26 - metro_portes.pml:297 - [status_portes_train!CLOSE_CONFIRMED] (0:0:0 - 1)
		IfNotBlocked
		reached[3][26] = 1;
		if (q_full(now.status_portes_train))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.status_portes_train);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.status_portes_train, 0, 7, 1);
		if (q_zero(now.status_portes_train)) { boq = now.status_portes_train; };
		_m = 2; goto P999; /* 0 */
	case 77: // STATE 30 - metro_portes.pml:299 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][30] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC DOF_Sol */
	case 78: // STATE 1 - metro_portes.pml:167 - [cmd_bord_to_sol?cmd] (0:0:1 - 1)
		reached[2][1] = 1;
		if (q_zero(now.cmd_bord_to_sol))
		{	if (boq != now.cmd_bord_to_sol) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.cmd_bord_to_sol) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P2 *)_this)->cmd;
		;
		((P2 *)_this)->cmd = qrecv(now.cmd_bord_to_sol, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("DOF_Sol:cmd", ((P2 *)_this)->cmd);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmd_bord_to_sol);
		sprintf(simtmp, "%d", ((P2 *)_this)->cmd); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.cmd_bord_to_sol))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 79: // STATE 2 - metro_portes.pml:168 - [assert((cmd==OPEN_CMD))] (0:4:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		spin_assert((((P2 *)_this)->cmd==12), "(cmd==12)", II, tt, t);
		/* merge: printf('[DOF-Sol] Commande OPEN_CMD reçue\\n')(4, 3, 4) */
		reached[2][3] = 1;
		Printf("[DOF-Sol] Commande OPEN_CMD reçue\n");
		_m = 3; goto P999; /* 1 */
	case 80: // STATE 4 - metro_portes.pml:173 - [assert((train_aligned&&train_stopped))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		spin_assert((((int)now.train_aligned)&&((int)now.train_stopped)), "(train_aligned&&train_stopped)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 5 - metro_portes.pml:174 - [assert((portes_train_fermees&&portes_palieres_fermees))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		spin_assert((((int)now.portes_train_fermees)&&((int)now.portes_palieres_fermees)), "(portes_train_fermees&&portes_palieres_fermees)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 6 - metro_portes.pml:175 - [printf('[DOF-Sol] Vérifications de sécurité : OK\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		Printf("[DOF-Sol] Vérifications de sécurité : OK\n");
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 7 - metro_portes.pml:176 - [printf('[DOF-Sol]   - Train aligné : %d\\n',train_aligned)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][7] = 1;
		Printf("[DOF-Sol]   - Train aligné : %d\n", ((int)now.train_aligned));
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 8 - metro_portes.pml:177 - [printf('[DOF-Sol]   - Train arrêté : %d\\n',train_stopped)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		Printf("[DOF-Sol]   - Train arrêté : %d\n", ((int)now.train_stopped));
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 9 - metro_portes.pml:178 - [printf('[DOF-Sol]   - Portes fermées : %d\\n',(portes_train_fermees&&portes_palieres_fermees))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		Printf("[DOF-Sol]   - Portes fermées : %d\n", (((int)now.portes_train_fermees)&&((int)now.portes_palieres_fermees)));
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 10 - metro_portes.pml:182 - [ack_sol_to_bord!ACK] (0:0:0 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		if (q_full(now.ack_sol_to_bord))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ack_sol_to_bord);
		sprintf(simtmp, "%d", 10); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ack_sol_to_bord, 0, 10, 1);
		if (q_zero(now.ack_sol_to_bord)) { boq = now.ack_sol_to_bord; };
		_m = 2; goto P999; /* 0 */
	case 87: // STATE 11 - metro_portes.pml:183 - [printf('[DOF-Sol] Accusé de réception envoyé\\n')] (0:13:0 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		Printf("[DOF-Sol] Accusé de réception envoyé\n");
		/* merge: printf('\\n[DOF-Sol] === DÉBUT OUVERTURE PORTES TRAIN ===\\n')(13, 12, 13) */
		reached[2][12] = 1;
		Printf("\n[DOF-Sol] === DÉBUT OUVERTURE PORTES TRAIN ===\n");
		_m = 3; goto P999; /* 1 */
	case 88: // STATE 13 - metro_portes.pml:187 - [lumiere_train = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][13] = 1;
		(trpt+1)->bup.oval = ((int)now.lumiere_train);
		now.lumiere_train = 1;
#ifdef VAR_RANGES
		logval("lumiere_train", ((int)now.lumiere_train));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 14 - metro_portes.pml:188 - [portes_train_fermees = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][14] = 1;
		(trpt+1)->bup.oval = ((int)now.portes_train_fermees);
		now.portes_train_fermees = 0;
#ifdef VAR_RANGES
		logval("portes_train_fermees", ((int)now.portes_train_fermees));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 15 - metro_portes.pml:189 - [printf('[DOF-Sol] Indicateur JAUNE activé pour portes train\\n')] (0:25:0 - 1)
		IfNotBlocked
		reached[2][15] = 1;
		Printf("[DOF-Sol] Indicateur JAUNE activé pour portes train\n");
		/* merge: printf('[DOF-Sol] Commande d'ouverture envoyée aux portes train\\n')(25, 16, 25) */
		reached[2][16] = 1;
		Printf("[DOF-Sol] Commande d'ouverture envoyée aux portes train\n");
		_m = 3; goto P999; /* 1 */
	case 91: // STATE 17 - metro_portes.pml:77 - [i = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][17] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->_10_2_i;
		((P2 *)_this)->_10_2_i = 2;
#ifdef VAR_RANGES
		logval("DOF_Sol:i", ((P2 *)_this)->_10_2_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 18 - metro_portes.pml:78 - [((i>0))] (22:0:1 - 1)
		IfNotBlocked
		reached[2][18] = 1;
		if (!((((P2 *)_this)->_10_2_i>0)))
			continue;
		/* merge: i = (i-1)(0, 19, 22) */
		reached[2][19] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->_10_2_i;
		((P2 *)_this)->_10_2_i = (((P2 *)_this)->_10_2_i-1);
#ifdef VAR_RANGES
		logval("DOF_Sol:i", ((P2 *)_this)->_10_2_i);
#endif
		;
		/* merge: .(goto)(0, 23, 22) */
		reached[2][23] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 93: // STATE 26 - metro_portes.pml:197 - [printf('\\n[DOF-Sol] === DÉBUT OUVERTURE PORTES PALIÈRES ===\\n')] (0:27:0 - 3)
		IfNotBlocked
		reached[2][26] = 1;
		Printf("\n[DOF-Sol] === DÉBUT OUVERTURE PORTES PALIÈRES ===\n");
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 27 - metro_portes.pml:198 - [lumiere_palieres = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][27] = 1;
		(trpt+1)->bup.oval = ((int)now.lumiere_palieres);
		now.lumiere_palieres = 1;
#ifdef VAR_RANGES
		logval("lumiere_palieres", ((int)now.lumiere_palieres));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 28 - metro_portes.pml:199 - [portes_palieres_fermees = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][28] = 1;
		(trpt+1)->bup.oval = ((int)now.portes_palieres_fermees);
		now.portes_palieres_fermees = 0;
#ifdef VAR_RANGES
		logval("portes_palieres_fermees", ((int)now.portes_palieres_fermees));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 29 - metro_portes.pml:200 - [printf('[DOF-Sol] Indicateur JAUNE activé pour portes palières\\n')] (0:39:0 - 1)
		IfNotBlocked
		reached[2][29] = 1;
		Printf("[DOF-Sol] Indicateur JAUNE activé pour portes palières\n");
		/* merge: printf('[DOF-Sol] Commande d'ouverture envoyée aux portes palières\\n')(39, 30, 39) */
		reached[2][30] = 1;
		Printf("[DOF-Sol] Commande d'ouverture envoyée aux portes palières\n");
		_m = 3; goto P999; /* 1 */
	case 97: // STATE 31 - metro_portes.pml:77 - [i = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][31] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->_10_3_i;
		((P2 *)_this)->_10_3_i = 2;
#ifdef VAR_RANGES
		logval("DOF_Sol:i", ((P2 *)_this)->_10_3_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 32 - metro_portes.pml:78 - [((i>0))] (36:0:1 - 1)
		IfNotBlocked
		reached[2][32] = 1;
		if (!((((P2 *)_this)->_10_3_i>0)))
			continue;
		/* merge: i = (i-1)(0, 33, 36) */
		reached[2][33] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->_10_3_i;
		((P2 *)_this)->_10_3_i = (((P2 *)_this)->_10_3_i-1);
#ifdef VAR_RANGES
		logval("DOF_Sol:i", ((P2 *)_this)->_10_3_i);
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[2][37] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 99: // STATE 40 - metro_portes.pml:207 - [printf('\\n[DOF-Sol] Attente des confirmations d'ouverture...\\n')] (0:41:0 - 3)
		IfNotBlocked
		reached[2][40] = 1;
		Printf("\n[DOF-Sol] Attente des confirmations d'ouverture...\n");
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 41 - metro_portes.pml:209 - [status_portes_train?OPEN_CONFIRMED] (0:0:0 - 1)
		reached[2][41] = 1;
		if (q_zero(now.status_portes_train))
		{	if (boq != now.status_portes_train) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.status_portes_train) == 0) continue;

		XX=1;
		if (8 != qrecv(now.status_portes_train, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.status_portes_train-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.status_portes_train, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.status_portes_train);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.status_portes_train))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 101: // STATE 42 - metro_portes.pml:210 - [printf('[DOF-Sol] ✓ Confirmation reçue : Portes TRAIN complètement ouvertes\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[2][42] = 1;
		Printf("[DOF-Sol] ✓ Confirmation reçue : Portes TRAIN complètement ouvertes\n");
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 43 - metro_portes.pml:212 - [status_portes_palieres?OPEN_CONFIRMED] (0:0:0 - 1)
		reached[2][43] = 1;
		if (q_zero(now.status_portes_palieres))
		{	if (boq != now.status_portes_palieres) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.status_portes_palieres) == 0) continue;

		XX=1;
		if (8 != qrecv(now.status_portes_palieres, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.status_portes_palieres-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.status_portes_palieres, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.status_portes_palieres);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.status_portes_palieres))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 103: // STATE 44 - metro_portes.pml:213 - [printf('[DOF-Sol] ✓ Confirmation reçue : Portes PALIÈRES complètement ouvertes\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[2][44] = 1;
		Printf("[DOF-Sol] ✓ Confirmation reçue : Portes PALIÈRES complètement ouvertes\n");
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 45 - metro_portes.pml:216 - [lumiere_train = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][45] = 1;
		(trpt+1)->bup.oval = ((int)now.lumiere_train);
		now.lumiere_train = 2;
#ifdef VAR_RANGES
		logval("lumiere_train", ((int)now.lumiere_train));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 46 - metro_portes.pml:217 - [lumiere_palieres = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][46] = 1;
		(trpt+1)->bup.oval = ((int)now.lumiere_palieres);
		now.lumiere_palieres = 2;
#ifdef VAR_RANGES
		logval("lumiere_palieres", ((int)now.lumiere_palieres));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 47 - metro_portes.pml:218 - [portes_train_ouvertes = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][47] = 1;
		(trpt+1)->bup.oval = ((int)now.portes_train_ouvertes);
		now.portes_train_ouvertes = 1;
#ifdef VAR_RANGES
		logval("portes_train_ouvertes", ((int)now.portes_train_ouvertes));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 48 - metro_portes.pml:219 - [portes_palieres_ouvertes = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][48] = 1;
		(trpt+1)->bup.oval = ((int)now.portes_palieres_ouvertes);
		now.portes_palieres_ouvertes = 1;
#ifdef VAR_RANGES
		logval("portes_palieres_ouvertes", ((int)now.portes_palieres_ouvertes));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 49 - metro_portes.pml:220 - [printf('\\n[DOF-Sol] === TOUTES LES PORTES SONT OUVERTES ===\\n')] (0:61:0 - 1)
		IfNotBlocked
		reached[2][49] = 1;
		Printf("\n[DOF-Sol] === TOUTES LES PORTES SONT OUVERTES ===\n");
		/* merge: printf('[DOF-Sol] Indicateurs lumineux VERTS activés\\n')(61, 50, 61) */
		reached[2][50] = 1;
		Printf("[DOF-Sol] Indicateurs lumineux VERTS activés\n");
		/* merge: printf('[DOF-Sol] Les passagers peuvent embarquer/débarquer\\n')(61, 51, 61) */
		reached[2][51] = 1;
		Printf("[DOF-Sol] Les passagers peuvent embarquer/débarquer\n");
		/* merge: printf('\\n[DOF-Sol] Phase d'embarquement (60 secondes)...\\n')(61, 52, 61) */
		reached[2][52] = 1;
		Printf("\n[DOF-Sol] Phase d'embarquement (60 secondes)...\n");
		_m = 3; goto P999; /* 3 */
	case 109: // STATE 53 - metro_portes.pml:77 - [i = 60] (0:0:1 - 1)
		IfNotBlocked
		reached[2][53] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->_10_4_i;
		((P2 *)_this)->_10_4_i = 60;
#ifdef VAR_RANGES
		logval("DOF_Sol:i", ((P2 *)_this)->_10_4_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 54 - metro_portes.pml:78 - [((i>0))] (58:0:1 - 1)
		IfNotBlocked
		reached[2][54] = 1;
		if (!((((P2 *)_this)->_10_4_i>0)))
			continue;
		/* merge: i = (i-1)(0, 55, 58) */
		reached[2][55] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->_10_4_i;
		((P2 *)_this)->_10_4_i = (((P2 *)_this)->_10_4_i-1);
#ifdef VAR_RANGES
		logval("DOF_Sol:i", ((P2 *)_this)->_10_4_i);
#endif
		;
		/* merge: .(goto)(0, 59, 58) */
		reached[2][59] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 111: // STATE 62 - metro_portes.pml:231 - [printf('\\n[DOF-Sol] === DÉBUT DE LA SÉQUENCE DE FERMETURE ===\\n')] (0:64:0 - 3)
		IfNotBlocked
		reached[2][62] = 1;
		Printf("\n[DOF-Sol] === DÉBUT DE LA SÉQUENCE DE FERMETURE ===\n");
		/* merge: printf('\\n[DOF-Sol] === DÉBUT FERMETURE PORTES TRAIN ===\\n')(64, 63, 64) */
		reached[2][63] = 1;
		Printf("\n[DOF-Sol] === DÉBUT FERMETURE PORTES TRAIN ===\n");
		_m = 3; goto P999; /* 1 */
	case 112: // STATE 64 - metro_portes.pml:235 - [lumiere_train = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][64] = 1;
		(trpt+1)->bup.oval = ((int)now.lumiere_train);
		now.lumiere_train = 1;
#ifdef VAR_RANGES
		logval("lumiere_train", ((int)now.lumiere_train));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 65 - metro_portes.pml:236 - [portes_train_ouvertes = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][65] = 1;
		(trpt+1)->bup.oval = ((int)now.portes_train_ouvertes);
		now.portes_train_ouvertes = 0;
#ifdef VAR_RANGES
		logval("portes_train_ouvertes", ((int)now.portes_train_ouvertes));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 66 - metro_portes.pml:237 - [printf('[DOF-Sol] Indicateur JAUNE activé pour portes train\\n')] (0:76:0 - 1)
		IfNotBlocked
		reached[2][66] = 1;
		Printf("[DOF-Sol] Indicateur JAUNE activé pour portes train\n");
		/* merge: printf('[DOF-Sol] Commande de fermeture envoyée aux portes train\\n')(76, 67, 76) */
		reached[2][67] = 1;
		Printf("[DOF-Sol] Commande de fermeture envoyée aux portes train\n");
		_m = 3; goto P999; /* 1 */
	case 115: // STATE 68 - metro_portes.pml:77 - [i = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][68] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->_10_5_i;
		((P2 *)_this)->_10_5_i = 2;
#ifdef VAR_RANGES
		logval("DOF_Sol:i", ((P2 *)_this)->_10_5_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 69 - metro_portes.pml:78 - [((i>0))] (73:0:1 - 1)
		IfNotBlocked
		reached[2][69] = 1;
		if (!((((P2 *)_this)->_10_5_i>0)))
			continue;
		/* merge: i = (i-1)(0, 70, 73) */
		reached[2][70] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->_10_5_i;
		((P2 *)_this)->_10_5_i = (((P2 *)_this)->_10_5_i-1);
#ifdef VAR_RANGES
		logval("DOF_Sol:i", ((P2 *)_this)->_10_5_i);
#endif
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[2][74] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 117: // STATE 77 - metro_portes.pml:244 - [printf('\\n[DOF-Sol] === DÉBUT FERMETURE PORTES PALIÈRES ===\\n')] (0:78:0 - 3)
		IfNotBlocked
		reached[2][77] = 1;
		Printf("\n[DOF-Sol] === DÉBUT FERMETURE PORTES PALIÈRES ===\n");
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 78 - metro_portes.pml:245 - [lumiere_palieres = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][78] = 1;
		(trpt+1)->bup.oval = ((int)now.lumiere_palieres);
		now.lumiere_palieres = 1;
#ifdef VAR_RANGES
		logval("lumiere_palieres", ((int)now.lumiere_palieres));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 79 - metro_portes.pml:246 - [portes_palieres_ouvertes = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][79] = 1;
		(trpt+1)->bup.oval = ((int)now.portes_palieres_ouvertes);
		now.portes_palieres_ouvertes = 0;
#ifdef VAR_RANGES
		logval("portes_palieres_ouvertes", ((int)now.portes_palieres_ouvertes));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 80 - metro_portes.pml:247 - [printf('[DOF-Sol] Indicateur JAUNE activé pour portes palières\\n')] (0:90:0 - 1)
		IfNotBlocked
		reached[2][80] = 1;
		Printf("[DOF-Sol] Indicateur JAUNE activé pour portes palières\n");
		/* merge: printf('[DOF-Sol] Commande de fermeture envoyée aux portes palières\\n')(90, 81, 90) */
		reached[2][81] = 1;
		Printf("[DOF-Sol] Commande de fermeture envoyée aux portes palières\n");
		_m = 3; goto P999; /* 1 */
	case 121: // STATE 82 - metro_portes.pml:77 - [i = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][82] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->_10_6_i;
		((P2 *)_this)->_10_6_i = 2;
#ifdef VAR_RANGES
		logval("DOF_Sol:i", ((P2 *)_this)->_10_6_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 83 - metro_portes.pml:78 - [((i>0))] (87:0:1 - 1)
		IfNotBlocked
		reached[2][83] = 1;
		if (!((((P2 *)_this)->_10_6_i>0)))
			continue;
		/* merge: i = (i-1)(0, 84, 87) */
		reached[2][84] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->_10_6_i;
		((P2 *)_this)->_10_6_i = (((P2 *)_this)->_10_6_i-1);
#ifdef VAR_RANGES
		logval("DOF_Sol:i", ((P2 *)_this)->_10_6_i);
#endif
		;
		/* merge: .(goto)(0, 88, 87) */
		reached[2][88] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 123: // STATE 91 - metro_portes.pml:254 - [printf('\\n[DOF-Sol] Attente des confirmations de fermeture...\\n')] (0:92:0 - 3)
		IfNotBlocked
		reached[2][91] = 1;
		Printf("\n[DOF-Sol] Attente des confirmations de fermeture...\n");
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 92 - metro_portes.pml:256 - [status_portes_train?CLOSE_CONFIRMED] (0:0:0 - 1)
		reached[2][92] = 1;
		if (q_zero(now.status_portes_train))
		{	if (boq != now.status_portes_train) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.status_portes_train) == 0) continue;

		XX=1;
		if (7 != qrecv(now.status_portes_train, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.status_portes_train-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.status_portes_train, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.status_portes_train);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.status_portes_train))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 125: // STATE 93 - metro_portes.pml:257 - [printf('[DOF-Sol] ✓ Confirmation reçue : Portes TRAIN complètement fermées\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[2][93] = 1;
		Printf("[DOF-Sol] ✓ Confirmation reçue : Portes TRAIN complètement fermées\n");
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 94 - metro_portes.pml:259 - [status_portes_palieres?CLOSE_CONFIRMED] (0:0:0 - 1)
		reached[2][94] = 1;
		if (q_zero(now.status_portes_palieres))
		{	if (boq != now.status_portes_palieres) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.status_portes_palieres) == 0) continue;

		XX=1;
		if (7 != qrecv(now.status_portes_palieres, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.status_portes_palieres-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.status_portes_palieres, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.status_portes_palieres);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.status_portes_palieres))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 127: // STATE 95 - metro_portes.pml:260 - [printf('[DOF-Sol] ✓ Confirmation reçue : Portes PALIÈRES complètement fermées\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[2][95] = 1;
		Printf("[DOF-Sol] ✓ Confirmation reçue : Portes PALIÈRES complètement fermées\n");
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 96 - metro_portes.pml:263 - [lumiere_train = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][96] = 1;
		(trpt+1)->bup.oval = ((int)now.lumiere_train);
		now.lumiere_train = 0;
#ifdef VAR_RANGES
		logval("lumiere_train", ((int)now.lumiere_train));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 97 - metro_portes.pml:264 - [lumiere_palieres = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][97] = 1;
		(trpt+1)->bup.oval = ((int)now.lumiere_palieres);
		now.lumiere_palieres = 0;
#ifdef VAR_RANGES
		logval("lumiere_palieres", ((int)now.lumiere_palieres));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 98 - metro_portes.pml:265 - [portes_train_fermees = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][98] = 1;
		(trpt+1)->bup.oval = ((int)now.portes_train_fermees);
		now.portes_train_fermees = 1;
#ifdef VAR_RANGES
		logval("portes_train_fermees", ((int)now.portes_train_fermees));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 99 - metro_portes.pml:266 - [portes_palieres_fermees = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][99] = 1;
		(trpt+1)->bup.oval = ((int)now.portes_palieres_fermees);
		now.portes_palieres_fermees = 1;
#ifdef VAR_RANGES
		logval("portes_palieres_fermees", ((int)now.portes_palieres_fermees));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 100 - metro_portes.pml:267 - [printf('\\n[DOF-Sol] === TOUTES LES PORTES SONT FERMÉES ===\\n')] (0:102:0 - 1)
		IfNotBlocked
		reached[2][100] = 1;
		Printf("\n[DOF-Sol] === TOUTES LES PORTES SONT FERMÉES ===\n");
		/* merge: printf('[DOF-Sol] Indicateurs lumineux ROUGES activés\\n')(102, 101, 102) */
		reached[2][101] = 1;
		Printf("[DOF-Sol] Indicateurs lumineux ROUGES activés\n");
		_m = 3; goto P999; /* 1 */
	case 133: // STATE 102 - metro_portes.pml:271 - [signal_depart!DEPART_OK] (0:0:0 - 1)
		IfNotBlocked
		reached[2][102] = 1;
		if (q_full(now.signal_depart))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.signal_depart);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.signal_depart, 0, 9, 1);
		if (q_zero(now.signal_depart)) { boq = now.signal_depart; };
		_m = 2; goto P999; /* 0 */
	case 134: // STATE 103 - metro_portes.pml:272 - [printf('[DOF-Sol] Signal DEPART_OK envoyé au SAET\\n')] (0:105:0 - 1)
		IfNotBlocked
		reached[2][103] = 1;
		Printf("[DOF-Sol] Signal DEPART_OK envoyé au SAET\n");
		/* merge: printf('[DOF-Sol] Retour en mode ATTENTE\\n')(105, 104, 105) */
		reached[2][104] = 1;
		Printf("[DOF-Sol] Retour en mode ATTENTE\n");
		_m = 3; goto P999; /* 1 */
	case 135: // STATE 105 - metro_portes.pml:274 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][105] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC DOF_Bord */
	case 136: // STATE 1 - metro_portes.pml:137 - [cmd_saet_to_bord?cmd] (0:0:1 - 1)
		reached[1][1] = 1;
		if (q_zero(now.cmd_saet_to_bord))
		{	if (boq != now.cmd_saet_to_bord) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.cmd_saet_to_bord) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P1 *)_this)->cmd;
		;
		((P1 *)_this)->cmd = qrecv(now.cmd_saet_to_bord, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("DOF_Bord:cmd", ((P1 *)_this)->cmd);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cmd_saet_to_bord);
		sprintf(simtmp, "%d", ((P1 *)_this)->cmd); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.cmd_saet_to_bord))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 137: // STATE 2 - metro_portes.pml:138 - [printf('[DOF-Bord] Commande reçue du SAET : %e\\n',cmd)] (0:4:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		Printf("[DOF-Bord] Commande reçue du SAET : %e\n", ((P1 *)_this)->cmd);
		/* merge: printf('[DOF-Bord] Transmission de la commande au DOF-Sol\\n')(4, 3, 4) */
		reached[1][3] = 1;
		Printf("[DOF-Bord] Transmission de la commande au DOF-Sol\n");
		_m = 3; goto P999; /* 1 */
	case 138: // STATE 4 - metro_portes.pml:142 - [cmd_bord_to_sol!cmd] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (q_full(now.cmd_bord_to_sol))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmd_bord_to_sol);
		sprintf(simtmp, "%d", ((P1 *)_this)->cmd); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmd_bord_to_sol, 0, ((P1 *)_this)->cmd, 1);
		if (q_zero(now.cmd_bord_to_sol)) { boq = now.cmd_bord_to_sol; };
		_m = 2; goto P999; /* 0 */
	case 139: // STATE 5 - metro_portes.pml:145 - [ack_sol_to_bord?ACK] (0:0:0 - 1)
		reached[1][5] = 1;
		if (q_zero(now.ack_sol_to_bord))
		{	if (boq != now.ack_sol_to_bord) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.ack_sol_to_bord) == 0) continue;

		XX=1;
		if (10 != qrecv(now.ack_sol_to_bord, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.ack_sol_to_bord-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.ack_sol_to_bord, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ack_sol_to_bord);
		sprintf(simtmp, "%d", 10); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.ack_sol_to_bord))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 140: // STATE 6 - metro_portes.pml:146 - [printf('[DOF-Bord] Accusé de réception reçu du DOF-Sol\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		Printf("[DOF-Bord] Accusé de réception reçu du DOF-Sol\n");
		_m = 3; goto P999; /* 0 */
	case 141: // STATE 7 - metro_portes.pml:147 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC SAET */
	case 142: // STATE 1 - metro_portes.pml:97 - [printf('\\n[SAET] Train entre dans la zone d'approche\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf("\n[SAET] Train entre dans la zone d'approche\n");
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 2 - metro_portes.pml:100 - [train_aligned = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.train_aligned);
		now.train_aligned = 1;
#ifdef VAR_RANGES
		logval("train_aligned", ((int)now.train_aligned));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 144: // STATE 3 - metro_portes.pml:101 - [train_stopped = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)now.train_stopped);
		now.train_stopped = 1;
#ifdef VAR_RANGES
		logval("train_stopped", ((int)now.train_stopped));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 145: // STATE 4 - metro_portes.pml:102 - [printf('[SAET] Train aligné et arrêté dans la zone sécuritaire\\n')] (0:14:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		Printf("[SAET] Train aligné et arrêté dans la zone sécuritaire\n");
		/* merge: printf('[SAET] Attente de stabilisation (3 secondes)...\\n')(14, 5, 14) */
		reached[0][5] = 1;
		Printf("[SAET] Attente de stabilisation (3 secondes)...\n");
		_m = 3; goto P999; /* 1 */
	case 146: // STATE 6 - metro_portes.pml:77 - [i = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_8_1_i;
		((P0 *)_this)->_8_1_i = 3;
#ifdef VAR_RANGES
		logval("SAET:i", ((P0 *)_this)->_8_1_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 147: // STATE 7 - metro_portes.pml:78 - [((i>0))] (11:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		if (!((((P0 *)_this)->_8_1_i>0)))
			continue;
		/* merge: i = (i-1)(0, 8, 11) */
		reached[0][8] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_8_1_i;
		((P0 *)_this)->_8_1_i = (((P0 *)_this)->_8_1_i-1);
#ifdef VAR_RANGES
		logval("SAET:i", ((P0 *)_this)->_8_1_i);
#endif
		;
		/* merge: .(goto)(0, 12, 11) */
		reached[0][12] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 148: // STATE 15 - metro_portes.pml:109 - [printf('[SAET] Envoi de la commande OPEN_CMD\\n')] (0:16:0 - 3)
		IfNotBlocked
		reached[0][15] = 1;
		Printf("[SAET] Envoi de la commande OPEN_CMD\n");
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 16 - metro_portes.pml:110 - [cmd_saet_to_bord!OPEN_CMD] (0:0:0 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (q_full(now.cmd_saet_to_bord))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cmd_saet_to_bord);
		sprintf(simtmp, "%d", 12); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cmd_saet_to_bord, 0, 12, 1);
		if (q_zero(now.cmd_saet_to_bord)) { boq = now.cmd_saet_to_bord; };
		_m = 2; goto P999; /* 0 */
	case 150: // STATE 17 - metro_portes.pml:113 - [printf('[SAET] Attente du signal DEPART_OK...\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		Printf("[SAET] Attente du signal DEPART_OK...\n");
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 18 - metro_portes.pml:114 - [signal_depart?DEPART_OK] (0:0:0 - 1)
		reached[0][18] = 1;
		if (q_zero(now.signal_depart))
		{	if (boq != now.signal_depart) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.signal_depart) == 0) continue;

		XX=1;
		if (9 != qrecv(now.signal_depart, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.signal_depart-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.signal_depart, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.signal_depart);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.signal_depart))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 152: // STATE 19 - metro_portes.pml:117 - [printf('[SAET] Signal DEPART_OK reçu - Train autorisé à repartir\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		Printf("[SAET] Signal DEPART_OK reçu - Train autorisé à repartir\n");
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 20 - metro_portes.pml:118 - [train_stopped = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.oval = ((int)now.train_stopped);
		now.train_stopped = 0;
#ifdef VAR_RANGES
		logval("train_stopped", ((int)now.train_stopped));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 154: // STATE 21 - metro_portes.pml:119 - [train_aligned = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		(trpt+1)->bup.oval = ((int)now.train_aligned);
		now.train_aligned = 0;
#ifdef VAR_RANGES
		logval("train_aligned", ((int)now.train_aligned));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 155: // STATE 22 - metro_portes.pml:121 - [printf('[SAET] Train quitte la station\\n\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		Printf("[SAET] Train quitte la station\n\n");
		_m = 3; goto P999; /* 0 */
	case 156: // STATE 23 - metro_portes.pml:122 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

