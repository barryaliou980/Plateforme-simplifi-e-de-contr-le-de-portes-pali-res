	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM securite_depart */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM lumiere_rouge_implique_ferme */
;
		
	case 5: // STATE 1
		goto R999;

	case 6: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM lumiere_verte_implique_ouvert */
;
		
	case 7: // STATE 1
		goto R999;

	case 8: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM ordre_ouverture */
;
		
	case 9: // STATE 1
		goto R999;

	case 10: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM synchro_ouverture */
;
		
	case 11: // STATE 1
		goto R999;

	case 12: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM propriete_c_forte */
;
		
	case 13: // STATE 1
		goto R999;

	case 14: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM propriete_c */
;
		;
		;
		;
		
	case 17: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM propriete_b_fermeture_palieres */
;
		;
		;
		
	case 19: // STATE 3
		goto R999;
;
		;
		;
		
	case 21: // STATE 13
		goto R999;

	case 22: // STATE 20
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM propriete_b_fermeture_train */
;
		;
		;
		
	case 24: // STATE 3
		goto R999;
;
		;
		;
		
	case 26: // STATE 13
		goto R999;

	case 27: // STATE 20
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM propriete_b_palieres */
;
		;
		;
		
	case 29: // STATE 3
		goto R999;
;
		;
		;
		
	case 31: // STATE 13
		goto R999;

	case 32: // STATE 20
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM propriete_b_train */
;
		;
		;
		
	case 34: // STATE 3
		goto R999;
;
		;
		;
		
	case 36: // STATE 13
		goto R999;

	case 37: // STATE 20
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM propriete_a */
;
		;
		;
		
	case 39: // STATE 3
		goto R999;
;
		;
		;
		
	case 41: // STATE 13
		goto R999;

	case 42: // STATE 20
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */
;
		
	case 43: // STATE 1
		goto R999;

	case 44: // STATE 6
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 45: // STATE 7
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 46: // STATE 8
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 47: // STATE 9
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 48: // STATE 10
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;
;
		;
		;
		
	case 50: // STATE 13
		goto R999;

	case 51: // STATE 18
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Controleur_Portes_Palieres */
;
		;
		;
		;
		
	case 54: // STATE 3
		;
		((P4 *)_this)->_12_9_i = trpt->bup.oval;
		;
		goto R999;

	case 55: // STATE 5
		;
		((P4 *)_this)->_12_9_i = trpt->bup.oval;
		;
		goto R999;
;
		
	case 56: // STATE 12
		goto R999;

	case 57: // STATE 13
		;
		_m = unsend(now.status_portes_palieres);
		;
		goto R999;
;
		;
		;
		;
		
	case 60: // STATE 16
		;
		((P4 *)_this)->_12_10_i = trpt->bup.oval;
		;
		goto R999;

	case 61: // STATE 18
		;
		((P4 *)_this)->_12_10_i = trpt->bup.oval;
		;
		goto R999;
;
		
	case 62: // STATE 25
		goto R999;

	case 63: // STATE 26
		;
		_m = unsend(now.status_portes_palieres);
		;
		goto R999;

	case 64: // STATE 30
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Controleur_Portes_Train */
;
		;
		;
		;
		
	case 67: // STATE 3
		;
		((P3 *)_this)->_11_7_i = trpt->bup.oval;
		;
		goto R999;

	case 68: // STATE 5
		;
		((P3 *)_this)->_11_7_i = trpt->bup.oval;
		;
		goto R999;
;
		
	case 69: // STATE 12
		goto R999;

	case 70: // STATE 13
		;
		_m = unsend(now.status_portes_train);
		;
		goto R999;
;
		;
		;
		;
		
	case 73: // STATE 16
		;
		((P3 *)_this)->_11_8_i = trpt->bup.oval;
		;
		goto R999;

	case 74: // STATE 18
		;
		((P3 *)_this)->_11_8_i = trpt->bup.oval;
		;
		goto R999;
;
		
	case 75: // STATE 25
		goto R999;

	case 76: // STATE 26
		;
		_m = unsend(now.status_portes_train);
		;
		goto R999;

	case 77: // STATE 30
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC DOF_Sol */

	case 78: // STATE 1
		;
		XX = 1;
		unrecv(now.cmd_bord_to_sol, XX-1, 0, ((P2 *)_this)->cmd, 1);
		((P2 *)_this)->cmd = trpt->bup.oval;
		;
		;
		goto R999;
;
		
	case 79: // STATE 2
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 86: // STATE 10
		;
		_m = unsend(now.ack_sol_to_bord);
		;
		goto R999;
;
		
	case 87: // STATE 11
		goto R999;

	case 88: // STATE 13
		;
		now.lumiere_train = trpt->bup.oval;
		;
		goto R999;

	case 89: // STATE 14
		;
		now.portes_train_fermees = trpt->bup.oval;
		;
		goto R999;
;
		
	case 90: // STATE 15
		goto R999;

	case 91: // STATE 17
		;
		((P2 *)_this)->_10_2_i = trpt->bup.oval;
		;
		goto R999;

	case 92: // STATE 19
		;
		((P2 *)_this)->_10_2_i = trpt->bup.oval;
		;
		goto R999;
;
		
	case 93: // STATE 26
		goto R999;

	case 94: // STATE 27
		;
		now.lumiere_palieres = trpt->bup.oval;
		;
		goto R999;

	case 95: // STATE 28
		;
		now.portes_palieres_fermees = trpt->bup.oval;
		;
		goto R999;
;
		
	case 96: // STATE 29
		goto R999;

	case 97: // STATE 31
		;
		((P2 *)_this)->_10_3_i = trpt->bup.oval;
		;
		goto R999;

	case 98: // STATE 33
		;
		((P2 *)_this)->_10_3_i = trpt->bup.oval;
		;
		goto R999;
;
		
	case 99: // STATE 40
		goto R999;

	case 100: // STATE 41
		;
		XX = 1;
		unrecv(now.status_portes_train, XX-1, 0, 8, 1);
		;
		;
		goto R999;
;
		;
		
	case 102: // STATE 43
		;
		XX = 1;
		unrecv(now.status_portes_palieres, XX-1, 0, 8, 1);
		;
		;
		goto R999;
;
		;
		
	case 104: // STATE 45
		;
		now.lumiere_train = trpt->bup.oval;
		;
		goto R999;

	case 105: // STATE 46
		;
		now.lumiere_palieres = trpt->bup.oval;
		;
		goto R999;

	case 106: // STATE 47
		;
		now.portes_train_ouvertes = trpt->bup.oval;
		;
		goto R999;

	case 107: // STATE 48
		;
		now.portes_palieres_ouvertes = trpt->bup.oval;
		;
		goto R999;
;
		
	case 108: // STATE 49
		goto R999;

	case 109: // STATE 53
		;
		((P2 *)_this)->_10_4_i = trpt->bup.oval;
		;
		goto R999;

	case 110: // STATE 55
		;
		((P2 *)_this)->_10_4_i = trpt->bup.oval;
		;
		goto R999;
;
		
	case 111: // STATE 62
		goto R999;

	case 112: // STATE 64
		;
		now.lumiere_train = trpt->bup.oval;
		;
		goto R999;

	case 113: // STATE 65
		;
		now.portes_train_ouvertes = trpt->bup.oval;
		;
		goto R999;
;
		
	case 114: // STATE 66
		goto R999;

	case 115: // STATE 68
		;
		((P2 *)_this)->_10_5_i = trpt->bup.oval;
		;
		goto R999;

	case 116: // STATE 70
		;
		((P2 *)_this)->_10_5_i = trpt->bup.oval;
		;
		goto R999;
;
		
	case 117: // STATE 77
		goto R999;

	case 118: // STATE 78
		;
		now.lumiere_palieres = trpt->bup.oval;
		;
		goto R999;

	case 119: // STATE 79
		;
		now.portes_palieres_ouvertes = trpt->bup.oval;
		;
		goto R999;
;
		
	case 120: // STATE 80
		goto R999;

	case 121: // STATE 82
		;
		((P2 *)_this)->_10_6_i = trpt->bup.oval;
		;
		goto R999;

	case 122: // STATE 84
		;
		((P2 *)_this)->_10_6_i = trpt->bup.oval;
		;
		goto R999;
;
		
	case 123: // STATE 91
		goto R999;

	case 124: // STATE 92
		;
		XX = 1;
		unrecv(now.status_portes_train, XX-1, 0, 7, 1);
		;
		;
		goto R999;
;
		;
		
	case 126: // STATE 94
		;
		XX = 1;
		unrecv(now.status_portes_palieres, XX-1, 0, 7, 1);
		;
		;
		goto R999;
;
		;
		
	case 128: // STATE 96
		;
		now.lumiere_train = trpt->bup.oval;
		;
		goto R999;

	case 129: // STATE 97
		;
		now.lumiere_palieres = trpt->bup.oval;
		;
		goto R999;

	case 130: // STATE 98
		;
		now.portes_train_fermees = trpt->bup.oval;
		;
		goto R999;

	case 131: // STATE 99
		;
		now.portes_palieres_fermees = trpt->bup.oval;
		;
		goto R999;
;
		
	case 132: // STATE 100
		goto R999;

	case 133: // STATE 102
		;
		_m = unsend(now.signal_depart);
		;
		goto R999;
;
		
	case 134: // STATE 103
		goto R999;

	case 135: // STATE 105
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC DOF_Bord */

	case 136: // STATE 1
		;
		XX = 1;
		unrecv(now.cmd_saet_to_bord, XX-1, 0, ((P1 *)_this)->cmd, 1);
		((P1 *)_this)->cmd = trpt->bup.oval;
		;
		;
		goto R999;
;
		
	case 137: // STATE 2
		goto R999;

	case 138: // STATE 4
		;
		_m = unsend(now.cmd_bord_to_sol);
		;
		goto R999;

	case 139: // STATE 5
		;
		XX = 1;
		unrecv(now.ack_sol_to_bord, XX-1, 0, 10, 1);
		;
		;
		goto R999;
;
		;
		
	case 141: // STATE 7
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC SAET */
;
		;
		
	case 143: // STATE 2
		;
		now.train_aligned = trpt->bup.oval;
		;
		goto R999;

	case 144: // STATE 3
		;
		now.train_stopped = trpt->bup.oval;
		;
		goto R999;
;
		
	case 145: // STATE 4
		goto R999;

	case 146: // STATE 6
		;
		((P0 *)_this)->_8_1_i = trpt->bup.oval;
		;
		goto R999;

	case 147: // STATE 8
		;
		((P0 *)_this)->_8_1_i = trpt->bup.oval;
		;
		goto R999;
;
		
	case 148: // STATE 15
		goto R999;

	case 149: // STATE 16
		;
		_m = unsend(now.cmd_saet_to_bord);
		;
		goto R999;
;
		;
		
	case 151: // STATE 18
		;
		XX = 1;
		unrecv(now.signal_depart, XX-1, 0, 9, 1);
		;
		;
		goto R999;
;
		;
		
	case 153: // STATE 20
		;
		now.train_stopped = trpt->bup.oval;
		;
		goto R999;

	case 154: // STATE 21
		;
		now.train_aligned = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 156: // STATE 23
		;
		p_restor(II);
		;
		;
		goto R999;
	}

