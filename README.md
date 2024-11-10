    ██████╗ ██████╗ ███╗   ███╗██████╗ ████████╗ █████╗   
    ██╔════╝██╔═══██╗████╗ ████║██╔══██╗╚══██╔══╝██╔══██╗ 
    ██║     ██║   ██║██╔████╔██║██████╔╝   ██║   ███████║ 
    ██║     ██║   ██║██║╚██╔╝██║██╔═══╝    ██║   ██╔══██║ 
    ╚██████╗╚██████╔╝██║ ╚═╝ ██║██║        ██║   ██║  ██║ 
    ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝        ╚═╝   ╚═╝  ╚═╝  

Logiciel de gestion de comptabilité de CLUB1.

Stockage des transactions
-------------------------

Il permet de consulter et d'ajouter des entrées dans la table des transactions.
Cette dernière est un fichier TSV qui doit être à cet empalcement :

    /var/compta/transactions.tsv

TSV signifie que les données d'une entrée sont séparées par des tabulations (tab).
En l'occurence, une entrée de transaction doit contenir les données suivantes :

    id date montant compte effectué catégorie intitulé

Ce fichier devrait être accessible en lecture par tout le monde,
mais l'écriture devrait être limité au groupe `compta`.

Interface
---------

Bien qu'utilisant une CLI, ce logiciel essaye de faciliter la manipulation ou la lecture au maximum. Pour cela, il se contente de poser des questions.

L'utilisation la plus simple consiste à lancer la commande principale :

    compta

Cette dernière va proposer un menu, qui est équivalent à lancer directement l'une ou l'autre des deux commandes suivantes.

### voir

    compta-voir

Pour afficher le contenu du fichier de transaction avec des colonnes et des options de filtrage.

### ajouter

    compta-ajouter

Formulaire d'ajout de transaction.


Mise en place
-------------

Les trois commandes doivent être ajouté au PATH.
`compta-ajouter` devrait être reservé aux membres du groupe `compta`
car elle permet d'écrire dansle fichier de transaction.
