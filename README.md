      ██████╗ ██████╗ ███╗   ███╗██████╗ ████████╗ █████╗     
     ██╔════╝██╔═══██╗████╗ ████║██╔══██╗╚══██╔══╝██╔══██╗    
     ██║     ██║   ██║██╔████╔██║██████╔╝   ██║   ███████║    
     ██║     ██║   ██║██║╚██╔╝██║██╔═══╝    ██║   ██╔══██║    
     ╚██████╗╚██████╔╝██║ ╚═╝ ██║██║        ██║   ██║  ██║    
      ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝        ╚═╝   ╚═╝  ╚═╝ de CLUB1   

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

L'interface principale est 100% interactive. Il n'y a aucun argument ou options nécessaire à son utilisation.

    compta

C'est une "sur-couche" interactive pour les commandes suivantes, qui elles ne sont pas interactives.

### voir

    compta-voir

Pour afficher et filtrer la liste des transactions.

### ajouter

    compta-ajouter

Ajoute une transaction.

### effectuer

    compta-effectuer

Indique qu'une transaction a été "effectuée".


Mise en place
-------------

Les trois commandes doivent être ajouté au PATH.
`compta-ajouter` et `compta-effectuer` devrait être reservé aux membres du groupe `compta`
car elle permet d'écrire dansle fichier de transaction.


Fontes
------

La fonte *figlet* utilisée pour la commande interactive s'appelle `ANSI Shadow` -- [archive sur le repo Github de xero](https://github.com/xero/figlet-fonts/blob/master/ANSI%20Shadow.flf)

La fonte *figlet* utilisée pour les sous-commandes s'apelle `Calvin S` -- [archive sur le repo Github de xero](https://github.com/xero/figlet-fonts/blob/master/Calvin%20S.flf)
