cls
$subnets=Import-Csv c:\scriptinput\subnet.csv
foreach ($subnet in $subnets)
	{
	set-cslissubnet -Subnet $subnet.subnet -Description $subnet.description -HouseNumber $subnet.HouseNumber `
	-StreetName $subnet.StreetName  -StreetSuffix $subnet.StreetSuffix -City $subnet.City -State $subnet.state `
	-PostalCode $subnet.PostalCode -Country $subnet.country -Location $subnet.Location  -CompanyName $subnet.CompanyName 
	
	Publish-CsLisConfiguration
#	
	}