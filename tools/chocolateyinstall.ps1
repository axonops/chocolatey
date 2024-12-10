$ErrorActionPreference = 'Stop' # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/axonops/axonops-workbench/releases/download/v0.9.2/AxonOps.Workbench-0.9.2-win-x64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url64bit      = $url64

  softwareName  = 'AxonOpsWorkbench*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

  checksum64    = '1da567dba0b28e2acf2232f1bb8a3a85c76692fc749697426befd024d15238de'
  checksumType64= 'sha256'

  # MSI
  silentArgs   = '/quiet /norestart'
}

Install-ChocolateyPackage @packageArgs

# code: language=powershell