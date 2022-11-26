$path = ".\2hu\simplified"
$destinationPath = "..\assets\backgrounds"
$maps = Get-ChildItem -Path $path -Directory | Select-Object Name

Foreach ($map in $maps) 
{
    $mapName = $map.Name

    $mapPath = "$path\$mapName\_composite.png"
    $destPath = "$destinationPath\$mapName.png"

    Write-Host "Copying $mapPath to $destPath"
    Copy-Item $mapPath -Destination $destPath
}