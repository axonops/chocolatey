$ErrorActionPreference = 'Stop' # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/axonops/axonops-workbench-cassandra/releases/download/0.1.1-internal-20240917-02/AxonOps.Workbench-0.1.1-internal-20240917-02-win-x64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64

  softwareName  = 'AxonOpsWorkbench*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

  checksum64    = 'ba3ff6396575c7208ce7309eb93d70f5b18a8163b449171bcbdef1a9b640f181'
  checksumType64= 'sha256'

  # MSI
  silentArgs   = '/s'           # InstallShield
}

Install-ChocolateyPackage @packageArgs

# code: language=powershell