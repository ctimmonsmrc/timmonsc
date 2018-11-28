##############################################################
# Purpose: Enable Enterprise Voice Users for Voice Mail      #
# Date: November 28, 2018                                    #
# Author: Craig Timmons                                      #
# Dependancies: Load Quest Active Roles AD Management Module #
##############################################################

# In the next line change the name and file location
$users=Import-Csv c:\scriptinput\170dir.csv

# Enter the mailbox policy name i.e. NA-CHS
$mailboxPolicy = "ENTER UM Mailbox Policy"

Foreach ($user in $users)
	{
	$info=Get-QADUser $user.name
	Enable-UMMailbox -Identity $info.mail -PinExpired:$false -UMMailboxPolicy $mailboxPolicy  -Extensions $user.ext -SIPResourceIdentifier $info.mail -Pin "1111"   
	}