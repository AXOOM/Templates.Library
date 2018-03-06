Param ([string]$Version = "0.1-debug")
$ErrorActionPreference = "Stop"
pushd $(Split-Path -Path $MyInvocation.MyCommand.Definition -Parent)

dotnet test --configuration Release --no-build Axoom.MyLibrary.UnitTests/Axoom.MyLibrary.UnitTests.csproj

popd
