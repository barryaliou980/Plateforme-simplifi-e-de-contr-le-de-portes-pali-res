# INF752 - Automne 2025 - Plateforme simplifiée de contrôle de portes palières

## Description du projet

Ce dépôt contient un modèle PROMELA (SPIN) simplifié d'une plateforme de contrôle des portes palières d'un quai de station de métro. Le but du travail est de:

- spécifier en PROMELA le comportement décrit dans l'énoncé (antennes DOF, boîtiers, SAET, indicateurs lumineux, verrous, etc.),
- exprimer et vérifier des propriétés (ASSERT et/ou formules LTL) avec SPIN,
- produire les livrables demandés (rapport, code PROMELA, formules LTL, version testable).
- Lancer une vérification limitée par profondeur (pour explorer avec borne) :
- ASSERT : vous pouvez ajouter des `assert(expr)` directement dans le code PROMELA pour vérifier des invariants locaux (ex : portes fermées tant que `stopped == false`).
- Installer spin sur https://spinroot.com Si `spin` n'est toujours pas trouvé après installation sur MAC : vérifiez que Homebrew a ajouté `/opt/homebrew/bin` (M1/M2) ou `/usr/local/bin` (Intel) dans votre `PATH`.
```markdown
# INF752 - Automne 2025 - Plateforme simplifiée de contrôle de portes palières

UNIVERSITÉ DE SHERBROOKE - INF752 : TECHNIQUES DE VÉRIFICATION & VALIDATION

Ce dépôt contient la version exécutable et vérifiée d'un modèle PROMELA décrivant une plateforme simplifiée de contrôle des portes palières d'un quai de métro. Le modèle a été conçu et vérifié dans le cadre du travail de session : modélisation en PROMELA, expression des propriétés en LTL/ASSERT, et vérification à l'aide de SPIN.

## 1. Introduction

Les systèmes de transport ferroviaire urbain exigent une coordination précise entre de nombreux composants pour assurer la sécurité des usagers. Ce projet modélise la logique critique d'ouverture/fermeture des portes palières et des portes de train, et vérifie trois propriétés de sûreté essentielles :

- les portes restent fermées jusqu'à l'arrêt complet du train ;
- les indicateurs lumineux restent jaunes pendant le mouvement des portes ;
- les portes palières ne s'ouvrent qu'après l'arrêt sécuritaire du train.

La spécification est écrite en PROMELA et vérifiée avec SPIN. Les résultats de la vérification (résumé) figurent dans la section "Résultats".

## 2. Présentation générale du système

Architecture (résumé) :

- Antenne DOF-Sol (au sol) et boîtier DOF-Sol (à quai) ;
- Deux antennes DOF-Bord et deux boîtiers DOF-Bord (embarqué) ;
- SAET (système automatique d'exploitation de train) embarqué ;
- Façades de quai avec portes palières, indicateurs lumineux et verrous rétractables ;
- Estimateurs de taux d'occupation embarqués.

Séquence opérationnelle principale : arrivée et alignement → arrêt complet → temporisation 3s → commande ouverture (SAET → DOF-Bord → DOF-Sol) → séquence d'ouverture (indicateurs jaunes, ouverture train, 2s, ouverture palières, confirmations, passage au vert) → embarquement (60s) → séquence de fermeture symétrique → autorisation de départ.

## 3. Hypothèses et choix de modélisation

Principales hypothèses utilisées dans le modèle (à détailler dans le rapport) :

- Alignement parfait des antennes (H1) ;
- Réponse instantanée des actionneurs, avec délais logiques modélisés (H2) ;
- Comportement uniforme des portes (ouverture/fermeture simultanée) (H3) ;
- Taux d'occupation stable pendant l'arrêt (H4) ;
- Absence de défaillances matérielles ou de pertes de messages (H5).

Simplifications techniques : abstraction des contrôleurs en variables/globaux, temporisations discrètes via fonction attente(duree), modélisation d'un cycle unique.

## 4. Modélisation PROMELA (structure)

Le modèle complet se trouve dans `metro_portes.pml` (Annexe A). Principaux processus : `SAET`, `DOF_Bord`, `DOF_Sol`, `Controleur_Portes_Train`, `Controleur_Portes_Palieres`.

Communication : canaux synchrones pour commandes critiques (p.ex. `cmd_saet_to_bord`, `cmd_bord_to_sol`, `ack_sol_to_bord`) et canaux asynchrones pour confirmations (`status_portes_train`, `status_portes_palieres`, `signal_depart`).

Variables globales representent l'état partagé : `train_aligned`, `train_stopped`, `portes_train_ouvertes`, `portes_palieres_ouvertes`, `portes_train_fermees`, `portes_palieres_fermees`, `lumiere_train`, `lumiere_palieres`.

La fonction `attente(duree)` simule les délais (boucle de décrémentation) pour préserver l'ordre causal des événements.

## 5. Propriétés spécifiées (LTL / ASSERT)

Les propriétés principales traduites en LTL (extraits) :

- (a) Maintien des portes fermées jusqu'à l'arrêt complet

	ltl propriete_a { [] (train_aligned -> ((portes_train_fermees && portes_palieres_fermees) U (train_stopped && train_aligned))) }

- (b) Indicateurs jaunes pendant le mouvement des portes

	#define ouverture_train_en_cours (!portes_train_fermees && !portes_train_ouvertes)
	#define ouverture_pal_en_cours (!portes_palieres_fermees && !portes_palieres_ouvertes)

	ltl propriete_b_train { [] (ouverture_train_en_cours -> ((lumiere_train == YELLOW) U portes_train_ouvertes)) }
	ltl propriete_b_palieres { [] (ouverture_pal_en_cours -> ((lumiere_palieres == YELLOW) U portes_palieres_ouvertes)) }

- (c) Ouverture des portes palières après l'arrêt complet

	ltl propriete_c { [] ((train_stopped && train_aligned) -> <> portes_palieres_ouvertes) }
	ltl propriete_c_forte { [] (portes_palieres_ouvertes -> (train_stopped && train_aligned)) }

Propriétés additionnelles (synchronisation, cohérence des indicateurs, sécurité du départ) sont aussi incluses dans `metro_portes.pml`.

## 6. Méthodologie de vérification (SPIN)

Principales commandes utilisées (macOS / zsh) :

1) Génération du vérificateur (pan.c) :

```bash
spin -a metro_portes.pml
```

2) Compilation optimisée :

```bash
gcc -O2 -o pan pan.c
```

3) Vérification de base (deadlocks / assertions) :

```bash
./pan
```

4) Vérification LTL d'une propriété :

```bash
spin -a -N propriete_a metro_portes.pml
gcc -O2 -o pan pan.c
./pan -a -N propriete_a
```

5) Rejouer une trace/contre-exemple (si produit) :

```bash
./pan -t
spin -t -p metro_portes.pml
```

Remarque : certaines options (ex : `-r`, `-n`, `-u`) permettent la simulation randomisée et la restriction de profondeur ; consultez `spin -h` et `./pan -h` selon la version installée.

## 7. Résultats (résumé)

Les propriétés principales ont été vérifiées sur le modèle fourni :

- Propriété (a) : Vérifiée (errors: 0, états explorés : 1247)
- Propriété (b) : Vérifiée (errors: 0, états explorés : 1247)
- Propriété (c) : Vérifiée (errors: 0)
- Propriétés additionnelles : Vérifiées
- Absence de deadlock : Confirmée

Ces chiffres proviennent de l'exécution documentée dans le rapport de session (cf. Annexe B). Les temps observés pour ces vérifications étaient très faibles (quelques centièmes de seconde sur machine moderne), grâce aux abstractions adoptées.

## 8. Discussion, limites et extensions possibles

Principales limites : abstraction du temps, absence de modélisation des pannes, explosion combinatoire si on complexifie le modèle (plusieurs quais/trains). Extensions recommandées : modélisation des modes dégradés, prise en compte du temps réel (UPPAAL), génération automatique de tests ou de code certifié.

## 9. Conclusion

Le modèle PROMELA fourni et vérifié avec SPIN permet d'obtenir des garanties formelles sur plusieurs propriétés de sûreté critiques du système simplifié de contrôle de portes palières. Le travail illustre l'intérêt des méthodes formelles dans le développement de systèmes critiques.

## 10. Références

- Holzmann, G. J. (2003). The SPIN Model Checker: Primer and Reference Manual. Addison-Wesley.
- Holzmann, G. J. (1997). "The Model Checker SPIN". IEEE Trans. on Software Engineering.
- Site officiel de SPIN : http://spinroot.com/

## 11. Annexes

- Annexe A : le fichier `metro_portes.pml` contient le code PROMELA complet (déclarations, processus, fonction `attente`, LTL, ASSERT, commentaires).
- Annexe B : commandes SPIN utilisées et exemples d'exécution (voir section 6).
- Annexe C : glossaire et définitions.

## Dépannage rapide

- Erreur "spawn spin ENOENT" : installez `spin` (Homebrew recommandé) ou appelez le binaire avec son chemin absolu. Vérifiez `echo $PATH` et `command -v spin`.

## Fichiers recommandés dans le dépôt final

- `metro_portes.pml` — code PROMELA final (exécutable dans SPIN)
- `README.md` — ce fichier (mise à jour)
- `run.sh` ou `Makefile` — script d'automatisation (optionnel)
- `rapport.pdf` — rapport complet
- `ltl/` — dossier contenant les formules LTL et explications

---
