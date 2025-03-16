$ErrorActionPreference = 'Stop' # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/axonops/axonops-workbench/releases/download/v0.9.6/AxonOps.Workbench-0.9.6-win-x64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url64bit      = $url64

  softwareName  = 'AxonOpsWorkbench*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

  checksum64    = '80cfa004d7a9f3c874259ceb4d8c57c1df7f3cfe8948becf8cfcacfaa5da1fee'
  checksumType64= 'sha256'

  # MSI
  silentArgs   = '/quiet /norestart'
}

Install-ChocolateyPackage @packageArgs

# code: language=powershell