cls
#################################################################################
# The format of the CSV should have a header of "Name","Number" and "Ext"       #
# The name will be the samaccountname.                                          #
# The number will be the 10 digit number used in the Lineuri                    #
# The Ext will be the the four (4) digit extension number                       #
# In the next line change the name and file location                            #
#################################################################################

$users=Import-Csv c:\scriptinput\170dir.csv
# Enter Name of DialPlan
$DP="ENTER VOICEPOLICY NAME HERE"
# Enter Name of Voice Policy. 
# Frequently this will be "NA-Eastern-AllCalls" or "NA-Western-AllCalls"
$VP="ENTER VOICEPOLICY NAME HERE"
foreach ($user in $users)
	{
	$Lineuri="tel:+1"+$user.number+";ext="+$user.ext
	Set-CsUser $user.name -EnterpriseVoiceEnabled $true -LineURI $Lineuri -DomainController HEXsrvads01.mcjunkinredman.com 
	Grant-CsDialPlan -PolicyName $DP -Identity $user.name
	Grant-CsVoicePolicy -PolicyName $VP -Identity $USER.name
	Set-CsClientPin -Identity $user.name -Pin 1111
	}
##################################################	
# Note No other actions should be performed when # 
# using this script during a site implementaton  #
##################################################