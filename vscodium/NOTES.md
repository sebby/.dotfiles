# Synchronisation des extensions VSCodium

## Exporter la liste des extensions

- Liste simple : `codium --list-extensions > extensions.txt`
- Liste avec versions : `codium --list-extensions --show-versions > extensions.txt`

## Réinstaller depuis la liste

- `cat extensions.txt | xargs -L 1 codium --install-extension`

## Avec Local Sync (extension)

- Exporter : `Ctrl+Shift+P` → "Local Sync: Export Settings"
- Importer : `Ctrl+Shift+P` → "Local Sync: Import Settings"
- Fichiers dans : `~/.config/VSCodium/User/sync/`

## Copie manuelle du dossier

- Dossier extensions : `~/.vscode-oss/extensions/`
- Sauvegarder : `cp -r ~/.vscode-oss/extensions/ ~/backup/`
- Restaurer : `cp -r ~/backup/* ~/.vscode-oss/extensions/`

## Sauvegarder aussi les settings

- Settings : `~/.config/VSCodium/User/settings.json`
- Keybindings : `~/.config/VSCodium/User/keybindings.json`
