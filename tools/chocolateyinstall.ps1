$ErrorActionPreference = 'Stop' # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/axonops/axonops-workbench-cassandra/releases/download/0.1.1-internal-20240912-09/AxonOps.Workbench-0.1.1-internal-20240912-09-win-x64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64

  softwareName  = 'AxonOpsWorkbench*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

  checksum64    = 'b058acc175a1096ac2510568c147aafd6825321cab919c555a462c282bbfb2af'
  checksumType64= 'sha256'

  # MSI
  silentArgs   = '/s'           # InstallShield
}

Install-ChocolateyPackage @packageArgs

# code: language=powershell