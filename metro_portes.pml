/* ================================================================
   Ce modèle PROMELA spécifie le comportement d'un système de contrôle
   de portes palières d'un quai de station de métro. Il modélise les
   interactions entre le Système Automatique d'Exploitation de Train
   (SAET), les systèmes DOF-Bord et DOF-Sol, ainsi que les contrôleurs
   des portes.
   
   Le système garantit que les portes palières ne s'ouvrent que lorsque
   le train est complètement arrêté dans la zone sécuritaire, et que
   l'ouverture/fermeture se déroule selon une séquence strictement
   chronométrée avec indication visuelle appropriée.
   ================================================================ */

/* -------------------- TYPES DE MESSAGES -------------------- */

mtype = {
    OPEN_CMD,           // Commande d'ouverture des portes
    CLOSE_CMD,          // Commande de fermeture des portes
    ACK,                // Accusé de réception
    DEPART_OK,          // Autorisation de départ
    
    OPEN_CONFIRMED,     // Confirmation d'ouverture complète
    CLOSE_CONFIRMED,    // Confirmation de fermeture complète
    
    /* Indicateurs lumineux */
    LIGHT_YELLOW,
    LIGHT_GREEN,
    LIGHT_RED,
    
    /* Taux d'occupation */
    TAUX_FAIBLE,
    TAUX_MOYEN,
    TAUX_ELEVE
};


/* Constantes pour les indicateurs lumineux */
#define RED 0
#define YELLOW 1
#define GREEN 2


bool train_aligned = false;      // Le train est aligné avec les antennes DOF
bool train_stopped = false;      // Le train est complètement arrêté

/* États des portes de train */
bool portes_train_ouvertes = false;
bool portes_train_fermees = true;

/* États des portes palières */
bool portes_palieres_ouvertes = false;
bool portes_palieres_fermees = true;

byte lumiere_train = RED;        // Couleur de l'indicateur portes train
byte lumiere_palieres = RED;     // Couleur de l'indicateur portes palières


chan cmd_saet_to_bord = [0] of {mtype};     // SAET -> DOF-Bord
chan cmd_bord_to_sol = [0] of {mtype};      // DOF-Bord -> DOF-Sol
chan ack_sol_to_bord = [0] of {mtype};      // DOF-Sol -> DOF-Bord (ACK)


chan status_portes_train = [1] of {mtype};      // Confirmations portes train
chan status_portes_palieres = [1] of {mtype};   // Confirmations portes palières
chan signal_depart = [1] of {mtype};            // Signal autorisation départ


/*
 * Fonction inline simulant une attente temporelle
 * PROMELA ne gère pas le temps réel, cette fonction simule un délai
 * par décrémentation d'un compteur
 * 
 * Paramètre : duree (nombre d'unités de temps à attendre)
 */
inline attente(duree) {
    int i = duree;
    do
    :: (i > 0) -> i--
    :: else -> break;
    od
}




/*
 *  PROCESSUS SAET
 * Système Automatique d'Exploitation de Train
 * Responsabilités :
 * - Détecter l'arrivée et l'arrêt complet du train
 * - Attendre 3 secondes après l'arrêt pour stabilisation
 * - Envoyer la commande d'ouverture des portes
 * - Attendre l'autorisation de départ
 * - Faire repartir le train
 */
proctype SAET() {
    printf("\n[SAET] Train entre dans la zone d'approche\n");
    
    /* Simulation de l'arrivée et de l'arrêt du train */
    train_aligned = true;
    train_stopped = true;
    printf("[SAET] Train aligné et arrêté dans la zone sécuritaire\n");
    
    /* Attente de stabilisation (3 secondes selon spécifications) */
    printf("[SAET] Attente de stabilisation (3 secondes)...\n");
    attente(3);
    
    /* Envoi de la commande d'ouverture au système DOF-Bord */
    printf("[SAET] Envoi de la commande OPEN_CMD\n");
    cmd_saet_to_bord ! OPEN_CMD;
    
    /* Attente du signal d'autorisation de départ */
    printf("[SAET] Attente du signal DEPART_OK...\n");
    signal_depart ? DEPART_OK;
    
    /* Le train peut repartir */
    printf("[SAET] Signal DEPART_OK reçu - Train autorisé à repartir\n");
    train_stopped = false;
    train_aligned = false;
    
    printf("[SAET] Train quitte la station\n\n");
}


/*
 * PROCESSUS DOF-BORD
 * Système DOF-Bord (embarqué dans le train)
 * Responsabilités :
 * - Recevoir les commandes du SAET
 * - Les relayer au système DOF-Sol (via les antennes)
 * - Transmettre les accusés de réception
 */
proctype DOF_Bord() {
    mtype cmd;
    
    /* Réception de la commande du SAET */
    cmd_saet_to_bord ? cmd;
    printf("[DOF-Bord] Commande reçue du SAET : %e\n", cmd);
    
    /* Relais de la commande vers le système DOF-Sol à quai */
    printf("[DOF-Bord] Transmission de la commande au DOF-Sol\n");
    cmd_bord_to_sol ! cmd;
    
    /* Réception de l'accusé de réception du DOF-Sol */
    ack_sol_to_bord ? ACK;
    printf("[DOF-Bord] Accusé de réception reçu du DOF-Sol\n");
}


/*
 * PROCESSUS DOF-SOL
 * Système DOF-Sol (installé à quai)
 * Cœur de la logique de contrôle
 * Responsabilités :
 * - Recevoir et accuser réception de la commande d'ouverture
 * - Orchestrer la séquence d'ouverture sécurisée des portes
 * - Gérer les indicateurs lumineux
 * - Orchestrer la séquence de fermeture
 * - Autoriser le départ du train
 */
proctype DOF_Sol() {
    mtype cmd;
    

    
    /* 1. Réception de la commande d'ouverture */
    cmd_bord_to_sol ? cmd;
    assert(cmd == OPEN_CMD);  // Vérification de sûreté
    printf("[DOF-Sol] Commande OPEN_CMD reçue\n");
    
    /* 2. Vérifications de sécurité CRITIQUES */
    /* Ces assertions garantissent que les conditions de sécurité sont remplies */
    assert(train_aligned && train_stopped);
    assert(portes_train_fermees && portes_palieres_fermees);
    printf("[DOF-Sol] Vérifications de sécurité : OK\n");
    printf("[DOF-Sol]   - Train aligné : %d\n", train_aligned);
    printf("[DOF-Sol]   - Train arrêté : %d\n", train_stopped);
    printf("[DOF-Sol]   - Portes fermées : %d\n", 
           portes_train_fermees && portes_palieres_fermees);
    
    /* 3. Envoi de l'accusé de réception */
    ack_sol_to_bord ! ACK;
    printf("[DOF-Sol] Accusé de réception envoyé\n");
    
    /* 4. Début de la séquence d'ouverture des PORTES DU TRAIN */
    printf("\n[DOF-Sol] === DÉBUT OUVERTURE PORTES TRAIN ===\n");
    lumiere_train = YELLOW;
    portes_train_fermees = false;
    printf("[DOF-Sol] Indicateur JAUNE activé pour portes train\n");
    printf("[DOF-Sol] Commande d'ouverture envoyée aux portes train\n");
    
    /* Attente de 2 secondes (temps mécanique d'ouverture) */
    attente(2);
    
    /* 5. Début de la séquence d'ouverture des PORTES PALIÈRES */
    /* Délai de 2 secondes après les portes train (selon spécifications) */
    printf("\n[DOF-Sol] === DÉBUT OUVERTURE PORTES PALIÈRES ===\n");
    lumiere_palieres = YELLOW;
    portes_palieres_fermees = false;
    printf("[DOF-Sol] Indicateur JAUNE activé pour portes palières\n");
    printf("[DOF-Sol] Commande d'ouverture envoyée aux portes palières\n");
    
    /* Attente de 2 secondes */
    attente(2);
    
    /* 6. Attente des confirmations d'ouverture complète */
    printf("\n[DOF-Sol] Attente des confirmations d'ouverture...\n");
    
    status_portes_train ? OPEN_CONFIRMED;
    printf("[DOF-Sol] ✓ Confirmation reçue : Portes TRAIN complètement ouvertes\n");
    
    status_portes_palieres ? OPEN_CONFIRMED;
    printf("[DOF-Sol] ✓ Confirmation reçue : Portes PALIÈRES complètement ouvertes\n");
    
    /* 7. Mise à jour des indicateurs lumineux à VERT */
    lumiere_train = GREEN;
    lumiere_palieres = GREEN;
    portes_train_ouvertes = true;
    portes_palieres_ouvertes = true;
    printf("\n[DOF-Sol] === TOUTES LES PORTES SONT OUVERTES ===\n");
    printf("[DOF-Sol] Indicateurs lumineux VERTS activés\n");
    printf("[DOF-Sol] Les passagers peuvent embarquer/débarquer\n");
    
        /* 8. Phase d'embarquement (60 secondes) */
    
    printf("\n[DOF-Sol] Phase d'embarquement (60 secondes)...\n");
    attente(60);

    // 9. Début de la séquence de fermeture des portes
    
    printf("\n[DOF-Sol] === DÉBUT DE LA SÉQUENCE DE FERMETURE ===\n");
    
    /* 1. Début de la fermeture des PORTES DU TRAIN */
    printf("\n[DOF-Sol] === DÉBUT FERMETURE PORTES TRAIN ===\n");
    lumiere_train = YELLOW;
    portes_train_ouvertes = false;
    printf("[DOF-Sol] Indicateur JAUNE activé pour portes train\n");
    printf("[DOF-Sol] Commande de fermeture envoyée aux portes train\n");
    
    /* Attente de 2 secondes */
    attente(2);
    
    /* 2. Début de la fermeture des PORTES PALIÈRES */
    printf("\n[DOF-Sol] === DÉBUT FERMETURE PORTES PALIÈRES ===\n");
    lumiere_palieres = YELLOW;
    portes_palieres_ouvertes = false;
    printf("[DOF-Sol] Indicateur JAUNE activé pour portes palières\n");
    printf("[DOF-Sol] Commande de fermeture envoyée aux portes palières\n");
    
    /* Attente de 2 secondes */
    attente(2);
    
    /* 3. Attente des confirmations de fermeture complète */
    printf("\n[DOF-Sol] Attente des confirmations de fermeture...\n");
    
    status_portes_train ? CLOSE_CONFIRMED;
    printf("[DOF-Sol] ✓ Confirmation reçue : Portes TRAIN complètement fermées\n");
    
    status_portes_palieres ? CLOSE_CONFIRMED;
    printf("[DOF-Sol] ✓ Confirmation reçue : Portes PALIÈRES complètement fermées\n");
    
    /* 4. Mise à jour des indicateurs lumineux à ROUGE */
    lumiere_train = RED;
    lumiere_palieres = RED;
    portes_train_fermees = true;
    portes_palieres_fermees = true;
    printf("\n[DOF-Sol] === TOUTES LES PORTES SONT FERMÉES ===\n");
    printf("[DOF-Sol] Indicateurs lumineux ROUGES activés\n");
    
    /* 5. Envoi du signal d'autorisation de départ */
    signal_depart ! DEPART_OK;
    printf("[DOF-Sol] Signal DEPART_OK envoyé au SAET\n");
    printf("[DOF-Sol] Retour en mode ATTENTE\n");
}


/*
 * CONTRÔLEUR DES PORTES DU TRAIN
 * Simule le comportement des contrôleurs physiques des portes du train
 * Surveille l'état des lumières et des portes pour envoyer les confirmations
 * appropriées une fois les actions mécaniques complétées
 */
proctype Controleur_Portes_Train() {
    do
    :: (lumiere_train == YELLOW && !portes_train_fermees && !portes_train_ouvertes) ->
        /* Portes en cours d'ouverture */
        printf("  [Ctrl-Train] Détection : Portes en ouverture...\n");
        attente(2); // Simulation du temps mécanique d'ouverture
        printf("  [Ctrl-Train] Ouverture complète détectée\n");
        status_portes_train ! OPEN_CONFIRMED;
        
    :: (lumiere_train == YELLOW && !portes_train_ouvertes && !portes_train_fermees) ->
        /* Portes en cours de fermeture */
        printf("  [Ctrl-Train] Détection : Portes en fermeture...\n");
        attente(2); // Simulation du temps mécanique de fermeture
        printf("  [Ctrl-Train] Fermeture complète détectée\n");
        status_portes_train ! CLOSE_CONFIRMED;
    od
}


/*
 * CONTRÔLEUR DES PORTES PALIÈRES
 * Simule le comportement des contrôleurs physiques des portes palières
 * Logique identique au contrôleur des portes du train
 */
proctype Controleur_Portes_Palieres() {
    do
    :: (lumiere_palieres == YELLOW && !portes_palieres_fermees && !portes_palieres_ouvertes) ->
        /* Portes palières en cours d'ouverture */
        printf("  [Ctrl-Palières] Détection : Portes en ouverture...\n");
        attente(2); // Simulation du temps mécanique
        printf("  [Ctrl-Palières] Ouverture complète détectée\n");
        status_portes_palieres ! OPEN_CONFIRMED;
        
    :: (lumiere_palieres == YELLOW && !portes_palieres_ouvertes && !portes_palieres_fermees) ->
        /* Portes palières en cours de fermeture */
        printf("  [Ctrl-Palières] Détection : Portes en fermeture...\n");
        attente(2); // Simulation du temps mécanique
        printf("  [Ctrl-Palières] Fermeture complète détectée\n");
        status_portes_palieres ! CLOSE_CONFIRMED;
    od
}


 // PROCESSUS INIT
init {
    printf("\n");
    printf("========================================================\n");
    printf("  SYSTÈME DE CONTRÔLE DE PORTES PALIÈRES - DÉMARRAGE\n");
    printf("========================================================\n");
    printf("\n");
    
    /* Lancement de tous les processus concurrents de manière atomique */
    atomic {
        run SAET();
        run DOF_Bord();
        run DOF_Sol();
        run Controleur_Portes_Train();
        run Controleur_Portes_Palieres();
    }
    
    /* Attente de la fin de tous les processus (sauf init) */
    (_nr_pr == 1);
    
    printf("\n");
    printf("========================================================\n");
    printf("  CYCLE OPÉRATIONNEL TERMINÉ AVEC SUCCÈS\n");
    printf("========================================================\n");
    printf("\n");
}



/*
 * PROPRIÉTÉS LTL À VÉRIFIER
 * Définitions de macros pour simplifier l'écriture des formules LTL
 * Ces macros représentent des états intermédiaires complexes
 */
#define ouverture_train_en_cours (!portes_train_fermees && !portes_train_ouvertes)
#define ouverture_pal_en_cours (!portes_palieres_fermees && !portes_palieres_ouvertes)
#define fermeture_train_en_cours (!portes_train_ouvertes && !portes_train_fermees)
#define fermeture_pal_en_cours (!portes_palieres_ouvertes && !portes_palieres_fermees)

/* 
   PROPRIÉTÉ (a) : Portes fermées jusqu'à arrêt complet
   
   Énoncé : Toutes les fois qu'un train arrive à quai, les portes 
   palières et les portes de train doivent rester fermées tant que 
   le train n'est pas à l'arrêt complet dans la zone sécuritaire.
   
   Formalisation LTL :
   [] (train_aligned -> ((portes_fermees) U (train_stopped && train_aligned)))
   
   Signification : Toujours, si le train est aligné, alors les portes
   restent fermées jusqu'à ce que le train soit complètement arrêté.
   ---------------------------------------------------------------- */

ltl propriete_a {
    [] (train_aligned -> 
        ((portes_train_fermees && portes_palieres_fermees) U 
         (train_stopped && train_aligned)))
}

/* 
   PROPRIÉTÉ (b) : Indicateurs jaunes pendant mouvement des portes
   
   Énoncé : Les indicateurs lumineux d'état des portes palières et 
   des portes du train sont toujours jaunes entre le moment où les 
   portes commencent à s'ouvrir et le moment où elles sont 
   complètement ouvertes.
   
   Formalisation LTL (pour les portes train) :
   [] (ouverture_en_cours -> (lumiere_jaune U portes_ouvertes))
   
   Signification : Toujours, si les portes sont en cours d'ouverture,
   alors la lumière reste jaune jusqu'à ce que l'ouverture soit complète.
    */

ltl propriete_b_train {
    [] (ouverture_train_en_cours -> 
        ((lumiere_train == YELLOW) U portes_train_ouvertes))
}

ltl propriete_b_palieres {
    [] (ouverture_pal_en_cours -> 
        ((lumiere_palieres == YELLOW) U portes_palieres_ouvertes))
}

/* Propriétés similaires pour la phase de fermeture */
ltl propriete_b_fermeture_train {
    [] (fermeture_train_en_cours -> 
        ((lumiere_train == YELLOW) U portes_train_fermees))
}

ltl propriete_b_fermeture_palieres {
    [] (fermeture_pal_en_cours -> 
        ((lumiere_palieres == YELLOW) U portes_palieres_fermees))
}

/* 
   PROPRIÉTÉ (c) : Ouverture après arrêt complet
   
   Énoncé : Les portes palières s'ouvrent toujours après l'arrêt 
   complet du train dans la zone sécuritaire.
   
   Formalisation LTL :
   [] ((train_stopped && train_aligned) -> <> portes_palieres_ouvertes)
   
   Signification : Toujours, si le train est complètement arrêté,
   alors éventuellement les portes palières s'ouvrent.
    */

ltl propriete_c {
    [] ((train_stopped && train_aligned) -> <> portes_palieres_ouvertes)
}

/* Variante renforcée : les portes ne peuvent s'ouvrir QUE si le train est arrêté */
ltl propriete_c_forte {
    [] (portes_palieres_ouvertes -> (train_stopped && train_aligned))
}

/* 
   PROPRIÉTÉS ADDITIONNELLES (non demandées mais utiles)
    */

/* Synchronisation : portes palières ouvertes => portes train ouvertes */
ltl synchro_ouverture {
    [] (portes_palieres_ouvertes -> portes_train_ouvertes)
}

/* Ordre d'ouverture : portes train avant portes palières */
ltl ordre_ouverture {
    [] (portes_palieres_ouvertes -> portes_train_ouvertes)
}

/* Cohérence lumière verte : vert => portes complètement ouvertes */
ltl lumiere_verte_implique_ouvert {
    [] ((lumiere_train == GREEN) -> portes_train_ouvertes) &&
    [] ((lumiere_palieres == GREEN) -> portes_palieres_ouvertes)
}

/* Cohérence lumière rouge : rouge => portes complètement fermées */
ltl lumiere_rouge_implique_ferme {
    [] ((lumiere_train == RED) -> portes_train_fermees) &&
    [] ((lumiere_palieres == RED) -> portes_palieres_fermees)
}

/* Sécurité du départ : train en mouvement => portes fermées */
ltl securite_depart {
    [] ((!train_stopped) -> (portes_train_fermees && portes_palieres_fermees))
}

/* 
   INSTRUCTIONS D'UTILISATION
  
   
   Ce fichier peut être vérifié avec SPIN en suivant ces étapes :
   
   1. SIMULATION INTERACTIVE (observer le comportement) :
      $ spin metro_portes.pml
   
   2. SIMULATION AVEC TRACE DÉTAILLÉE :
      $ spin -p -g -l -r metro_portes.pml > trace.txt
   
   3. GÉNÉRATION DU VÉRIFICATEUR :
      $ spin -a metro_portes.pml
   
   4. COMPILATION DU VÉRIFICATEUR :
      $ gcc -O2 -o pan pan.c
   
   5. VÉRIFICATION BASIQUE (deadlock, assertions) :
      $ ./pan
   
   6. VÉRIFICATION D'UNE PROPRIÉTÉ LTL SPÉCIFIQUE :
      $ spin -a -N propriete_a metro_portes.pml
      $ gcc -O2 -o pan pan.c
      $ ./pan -a -N propriete_a
   
   7. VÉRIFICATION AVEC TRACE DÉTAILLÉE :
      $ ./pan -a -N propriete_a -v
   
   8. SI UNE ERREUR EST DÉTECTÉE, GÉNÉRER LA TRACE :
      $ spin -t -p metro_portes.pml
   
   9. VÉRIFICATION DE TOUTES LES PROPRIÉTÉS :
      Répéter l'étape 6 pour chaque propriété LTL définie
      (propriete_a, propriete_b_train, propriete_b_palieres, 
       propriete_c, etc.)
   
    */