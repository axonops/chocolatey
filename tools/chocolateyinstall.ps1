$ErrorActionPreference = 'Stop' # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/axonops/axonops-workbench/releases/download/v0.9.15/AxonOps.Workbench-0.9.15-win-x64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url64bit      = $url64

  softwareName  = 'AxonOpsWorkbench*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

  checksum64    = '63f0b9c7d6290a49a58503a68efa5c5cdcb6007030b6ce2ce89302aceb728413'
  checksumType64= 'sha256'

  # MSI
  silentArgs   = '/quiet /norestart'
}

Install-ChocolateyPackage @packageArgs

# code: language=powershell