Import-module "$PSScriptRoot\RenumberObjectIds.dll"  
#Specify your licensed ID-Ranges in $IDFrom values and the needed values in $IDTo
$IDFrom1 = 1111111
$IDFrom2 = 2222222
$IDFrom3 = 3333333
$IDFrom4 = 4444444
$IDFrom5 = 5555555
$IDFrom6 = 6666666
$IDFrom7 = 7777777
$IDTo1 = 50000
$IDTo2 = 50100
$IDTo3 = 50300
$IDTo4 = 50400
$IDTo5 = 50500
$IDTo6 = 50600
$IDTo7 = 50700

$Source = "C:\AL\src"
$Destination = "C:\AL\target"

$RenumberList = @{}  
0..100 | % { $RenumberList += @{ ($IDFrom1+$_) = ($IDTo1+$_) } }
0..200 | % { $RenumberList += @{ ($IDFrom2+$_) = ($IDTo2+$_) } }
0..100 | % { $RenumberList += @{ ($IDFrom3+$_) = ($IDTo3+$_) } }
0..100 | % { $RenumberList += @{ ($IDFrom4+$_) = ($IDTo4+$_) } }
0..100 | % { $RenumberList += @{ ($IDFrom5+$_) = ($IDTo5+$_) } }
0..100 | % { $RenumberList += @{ ($IDFrom6+$_) = ($IDTo6+$_) } }
0..100 | % { $RenumberList += @{ ($IDFrom7+$_) = ($IDTo7+$_) } }
  
Renumber-NavObjectIds -SourceFolder $Source -DestinationFolder $Destination -RenumberList $RenumberList -Verbose