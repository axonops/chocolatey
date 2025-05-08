$ErrorActionPreference = 'Stop' # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/axonops/axonops-workbench/releases/download/v0.9.22/AxonOps.Workbench-0.9.22-win-x64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url64bit      = $url64

  softwareName  = 'AxonOpsWorkbench*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

  checksum64    = 'c11b4293f13d6a1670ab77a3c1364488a66dfeda380694c9bae0903a0f6f3610'
  checksumType64= 'sha256'

  # MSI
  silentArgs   = '/quiet /norestart'
}

Install-ChocolateyPackage @packageArgs

# code: language=powershell