# Stow 
> Outil pour synchroniser mon repository dotfiles

## Comment l'utiliser ?

Pour ajouter un nouveau lien symbolique:
le flag `-n` permet de simuler la commande
``` bash
stow -nvSt ~ DOSSIER_APPLICATION
```
Pour supprimer le lien symbolique :
``` bash
stow -nvDt ~ DOSSIER_APPLICATION
```
Le DOSSIER_APPLICATION doit contenir la structure depuis le dossier HOME
par ex pour le Atuin application, il faut avoir cette structure `atuin/.config/atuin`.

## Vidéos
https://www.youtube.com/watch?v=CFzEuBGPPPg


