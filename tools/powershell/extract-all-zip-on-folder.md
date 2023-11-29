# How to extract all *.zip on folder in Powershell

Run this powershell script :
# Spécifiez le chemin du dossier contenant les fichiers ZIP
$sourceFolder = "C:\Users\LaurentSEGUIN\Downloads\aa-fva"

# Spécifiez le chemin du dossier où vous souhaitez extraire les fichiers
$destinationFolder = "C:\Users\LaurentSEGUIN\Downloads\test-aa-fva"

# Créez le dossier de destination s'il n'existe pas
New-Item -ItemType Directory -Force -Path $destinationFolder

# Recherchez tous les fichiers ZIP dans le dossier source et ses sous-dossiers
$zipFiles = Get-ChildItem -Path $sourceFolder -Recurse -Filter *.zip

# Parcourez chaque fichier ZIP et extrayez son contenu dans le dossier de destination
foreach ($zipFile in $zipFiles) {
    # Utilisez Expand-Archive pour extraire le contenu du fichier ZIP
    Expand-Archive -Path $zipFile.FullName -DestinationPath $destinationFolder -Force
}

Write-Host "Extraction terminée."


> If you are having some errors about UnauthorizedAccess, try to launch Powershell as an admin, or use `Set-ExecutionPolicy Bypass -Scope Process`
```powershell

```
