﻿$ErrorActionPreference = 'Stop' # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/axonops/axonops-workbench/releases/download/v0.9.10/AxonOps.Workbench-0.9.10-win-x64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url64bit      = $url64

  softwareName  = 'AxonOpsWorkbench*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

  checksum64    = '260b53459245e93b6a702c5470759708488707e5d34744776715e43d51752840'
  checksumType64= 'sha256'

  # MSI
  silentArgs   = '/quiet /norestart'
}

Install-ChocolateyPackage @packageArgs

# code: language=powershell