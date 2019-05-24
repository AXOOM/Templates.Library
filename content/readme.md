# MyVendor.MyLibrary

my description

Run `build.ps1` to compile the source code and create NuGet packages.
This script takes a version number as an input argument. The source code itself contains no version numbers. Instead version numbers should be determined at build time using [GitVersion](http://gitversion.readthedocs.io/).

## Deployment

MyVendor.MyLibrary is deployed using [AppVeyor](https://www.appveyor.com/).

See [appveyor.yml](appveyor.yml).
