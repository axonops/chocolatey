$ErrorActionPreference = 'Stop' # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/axonops/axonops-workbench-cassandra/releases/download/1.0.0-beta-20240828/AxonOps.Workbench-1.0.0-beta-20240828-win-x64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64

  softwareName  = 'AxonOpsWorkbench*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

  checksum64    = 'ca027829685482aa02c2f36e92cd71e92c6e8a852545d22cb82d246fc2012da1'
  checksumType64= 'sha256'

  # MSI
  silentArgs   = '/s'           # InstallShield
}

Install-ChocolateyPackage @packageArgs

# code: language=powershell