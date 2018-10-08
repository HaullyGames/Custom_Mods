$foldersCFG = @(`
    "Bluedog_DB" `
    ,"Bluedog_DB_Extras" `
    ,"PlayYourWay" `
    ,"SETIprobeParts" `
    ,"RSSVE" `
	,"UnmannedBeforeManned"`
    )

$foldersALL = @(`
	"KSP_FOV" `
    )

foreach($folder in $foldersCFG)
{
    $path = [System.Environment]::GetEnvironmentVariable("KSPGAMEDATA","Machine") + "\" + $folder
	robocopy $path .\$folder *.cfg /MIR /FFT /Z /XA:H /W:5
}

foreach($folder in $foldersALL)
{
    $path = [System.Environment]::GetEnvironmentVariable("KSPGAMEDATA","Machine") + "\" + $folder
	robocopy $path .\$folder /MIR /FFT /Z /XA:H /W:5
}