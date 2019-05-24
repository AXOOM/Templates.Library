# AXOOM Library Template

[![NuGet package](https://img.shields.io/nuget/v/Axoom.Templates.Library.svg)](https://www.nuget.org/packages/Axoom.Templates.Library/)
[![Build status](https://img.shields.io/appveyor/ci/AXOOM/templates-library.svg)](https://ci.appveyor.com/project/AXOOM/templates-library)

This template helps you create reusable [.NET Standard](https://docs.microsoft.com/dotnet/standard/net-standard) libraries for distribution and consumption via [NuGet](http://nuget.org/).

If this is not your goal one of our other templates may be a better match:
- [AXOOM Service Template](https://github.com/AXOOM/Templates.Service)
- [AXOOM WebService Template](https://github.com/AXOOM/Templates.WebService)
- [AXOOM Portal App Template](https://github.com/AXOOM/Templates.PortalApp)


# Using the template

Download and install the [.NET Core SDK](https://www.microsoft.com/net/download) on your machine. You can then install the template by running the following:

    dotnet new --install Axoom.Templates.Library::*

To use the template to create a new project:

    dotnet new axoom-lib --name "MyVendor.MyLibrary" --author "My Company" --description "my description"
    cd MyVendor.MyLibrary
    git init

In the commands above replace
- `MyVendor.MyLibrary` with the .NET namespace and NuGet package name you wish to use,
- `My Name` with the name of your company and
- `my description` with a brief (single sentence) description of the library.

You can now open the generated project using your favorite IDE. We recommend [Visual Studio](https://www.visualstudio.com/downloads/), [Visual Studio Code](https://code.visualstudio.com/Download) or [Rider](https://www.jetbrains.com/rider/).


# Walkthrough

The following is a detailed walkthrough of the project structure generated by the template. To follow along you can either use the output of `dotnet new` or this repository.

The [`content/`](content/) directory in this repository contains the payload that is instantiated by the template. The file [`content/.template.config/template.json`](content/.template.config/template.json) instructs the templating engine which placeholders to replace. The following descriptions all refer to files and directories below this directory.

## Formatting and encoding

The [`.gitignore`](content/.gitignore) file prevents build artifacts, per-user settings and IDE-specific temp files from being checked into version control.

The [`.gitattributes`](content/.gitattributes) file disable's Git's automatic End of Line (EOL) conversion between Windows and Linux. This ensures that files are binary-identical on all platforms.

We use [EditorConfig](http://editorconfig.org/) to define and maintain consistent coding styles between different editors and IDEs. Our [`.editorconfig`](content/.editorconfig) file also ensures a consistent EOL style and charset encoding based on file type.

## Versioning

We decided to use [GitVersion](http://gitversion.readthedocs.io/) to extract version information from our git commits. 
Hence, we make use of git tags to create a release whereas all other commits are pre-releases by default. The source code itself contains no version numbers.
The [`GitVersion.yml`](content/GitVersion.yml) file configures GitVersion to extract a version number like the following from an untagged commit:
```
0.1.1-pre0045-20180404094115
```
| Version Part     | Description                                                                                               |
| ---------------- | --------------------------------------------------------------------------------------------------------- |
| `0.1.1`          | The latest tag with a bumped patch version                                                                |
| `pre0045`        | Indicates, that it's a prerelease (of `0.1.1`) and 45 commits have been made since the last tag (`0.1.0`) |
| `20180404094115` | The Timestamp _04/04/2018 09:41:15_                                                                       |

Whereas `0.1.1` is extracted from a commit with tag `0.1.1`.

## Project structure

[`src/`](content/src/) contains the C# project structure.

- [`Library`](content/src/Library/): The library project.
- [`UnitTests`](content/src/UnitTests/): Unit tests for the library.

## Building

TODO: Build scripts

[`release/`](content/release/)

[`deploy/`](content/deploy/)
