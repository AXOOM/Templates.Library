Param ([Parameter(Mandatory=$True)][string]$Version)
$ErrorActionPreference = "Stop"
pushd $(Split-Path -Path $MyInvocation.MyCommand.Definition -Parent)

.\src\build-dotnet.ps1 $Version

popd
