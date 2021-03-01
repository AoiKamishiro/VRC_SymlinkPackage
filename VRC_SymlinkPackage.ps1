param(
    [Parameter(Mandatory = $true)]
    [String] $TargetReposDir,

    [Parameter(Mandatory = $true)]
    [String] $SourcePackageDir
)

$SourceAssetsItems = Get-ChildItem $SourcePackageDir"\Assets" | Select-Object Name
$SourcePackagesItems = Get-ChildItem $SourcePackageDir"\Packages" | Select-Object Name

$SourceAssetsItems | ForEach-Object {
    $Target = $TargetReposDir + "\Assets\" + $_.Name
    $Source = $SourcePackageDir + "\Assets\" + $_.Name
    New-Item -Type SymbolicLink $Target -Value $Source
}
$SourcePackagesItems | ForEach-Object {
    $Target = $TargetReposDir + "\Packages\" + $_.Name
    $Source = $SourcePackageDir + "\Packages\" + $_.Name
    New-Item -Type SymbolicLink $Target -Value $Source
}