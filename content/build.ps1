Param ([Parameter(Mandatory=$True)][string]$Version)
$ErrorActionPreference = "Stop"
$SolutionName = "Axoom.MyLibrary"

pushd "$(Split-Path -Path $MyInvocation.MyCommand.Definition -Parent)/src"

dotnet clean "$SolutionName.sln"
dotnet msbuild /t:Restore /t:Build /p:Configuration=Release /p:Version=$Version "$SolutionName.sln"
dotnet test --configuration Release --no-build "$SolutionName.UnitTests/$SolutionName.UnitTests.csproj"

popd
