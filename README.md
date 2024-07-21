# ash
![Static Badge](https://img.shields.io/badge/License-MIT-green)
[![Coverage Status](https://coveralls.io/repos/github/tanabe5/ash/badge.svg?branch=main)](https://coveralls.io/github/tanabe5/ash?branch=main)
[![Rust Report Card](https://rust-reportcard.xuri.me/badge/github.com/tanabe5/ash)](https://rust-reportcard.xuri.me/report/github.com/tanabe5/ash)

ファイルを各種フォーマットに圧縮するツール

## Description
圧縮ツール．zip,tar,jarなど．  
統一的なインタフェースでそれぞれのアーカイブフォーマットを扱うことができる．

## Usage
```sh
Usage: ash [OPTIONS] [ARGUMENTS]...

Arguments:
  [ARGUMENTS]...  List of files or directories to be processed.

Options:
  -m, --mode <MODE>          Mode of operation. [default: auto] [possible values: auto, archive, extract, list]
  -o, --output <DEST>        Output file in archive mode, or output directory in extraction mode
      --to-archive-name-dir  extract files to DEST/ARCHIVE_NAME directory (extract mode).
  -n, --no-recursive         No recursive directory (archive mode).
  -v, --verbose              Display verbose output.
      --overwrite            Overwrite existing files.
  -h, --help                 Print help
  -V, --version              Print version
```

## Planned to be implemented
-mで指定できるmodeにencryptを追加し，ファイルの暗号化機能を実装予定．パスワードを付けて，ファイルを圧縮できる．

$ ash -m encrypt [ARGUMENTS]...  
Enter password:

## Install
```sh
brew install tap tanabe5/tap/ash
```

## Docker
```sh
docker run -it --rm -v $PWD:/workdir ghcr.io/tanabe5/ash:0.1.0 [OPTIONS] [ARGUMENTS]...
```

## About

### Logo
![logo](ashlogo.png)

