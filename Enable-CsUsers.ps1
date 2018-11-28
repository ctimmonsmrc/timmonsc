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
# SIG # Begin signature block
# MIITKgYJKoZIhvcNAQcCoIITGzCCExcCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUwDqNpmzqZyfMyKUGptqpKsYf
# CGqgghCJMIIIAjCCBeqgAwIBAgITHAAAhjSYA9q3/NzA3AAGAACGNDANBgkqhkiG
# 9w0BAQsFADBTMRMwEQYKCZImiZPyLGQBGRYDY29tMR4wHAYKCZImiZPyLGQBGRYO
# bWNqdW5raW5yZWRtYW4xHDAaBgNVBAMTE01SQ0dsb2JhbC1Jc3N1aW5nQ0EwHhcN
# MTgwOTE5MTEzOTE4WhcNMTkwOTE5MTEzOTE4WjCBnjETMBEGCgmSJomT8ixkARkW
# A2NvbTEeMBwGCgmSJomT8ixkARkWDm1janVua2lucmVkbWFuMQ0wCwYDVQQLDARf
# TVJNMRAwDgYDVQQLEwdFYXN0ZXJuMR0wGwYDVQQLExQzOTggQ0hBUkxFU1RPTiAt
# LSBXVjEOMAwGA1UECxMFVXNlcnMxFzAVBgNVBAMTDlRpbW1vbnMsIENyYWlnMIIB
# IjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqfMPiHZyhXXFI9HgCysy8urR
# hnnvxQfbNNy1YNoKCRp8rwhaT++c95sY/CxDQv/ifpW/fp3DEG36/AEcxfnvneeJ
# tIJgav1IIJbdDSpExTsbNA3w6FblVPH7DEtFq6nzTkiIVv9EAcZU3NivG7MFqY9U
# Y2v11uRQxidIf9tZtOPjGxvMxTpQ5fC2RkysHg927cj93VxgCfHaZzFby8azzSfk
# EFBZSbZaPftzg2VW7cP6dLMQlGhTbH2tg9nYb47kQ8WYaPPiRSkdnGy9slIeK/Qh
# KR08LeMU3pS+SmriRAvNza7SRoSTP1LUyxPFlgN2V/BIXC0LYGIYTDtlz2d31QID
# AQABo4IDgTCCA30wCwYDVR0PBAQDAgeAMCUGCSsGAQQBgjcUAgQYHhYAQwBvAGQA
# ZQBTAGkAZwBuAGkAbgBnMB0GA1UdDgQWBBQoXBKBTSRPzHep69inXiP8asvRIjAf
# BgNVHSMEGDAWgBQu7v8+O4U8YMmc1V8bJQyNREo/jDCCATMGA1UdHwSCASowggEm
# MIIBIqCCAR6gggEahoHJbGRhcDovLy9DTj1NUkNHbG9iYWwtSXNzdWluZ0NBKDUp
# LENOPWNoc3NydmRzY2EwMSxDTj1DRFAsQ049UHVibGljJTIwS2V5JTIwU2Vydmlj
# ZXMsQ049U2VydmljZXMsQ049Q29uZmlndXJhdGlvbixEQz1tY2p1bmtpbnJlZG1h
# bixEQz1jb20/Y2VydGlmaWNhdGVSZXZvY2F0aW9uTGlzdD9iYXNlP29iamVjdENs
# YXNzPWNSTERpc3RyaWJ1dGlvblBvaW50hkxodHRwOi8vY2hzc3J2ZHNjYTAxLm1j
# anVua2lucmVkbWFuLmNvbS9DZXJ0RW5yb2xsL01SQ0dsb2JhbC1Jc3N1aW5nQ0Eo
# NSkuY3JsMIIBgQYIKwYBBQUHAQEEggFzMIIBbzCBuQYIKwYBBQUHMAKGgaxsZGFw
# Oi8vL0NOPU1SQ0dsb2JhbC1Jc3N1aW5nQ0EsQ049QUlBLENOPVB1YmxpYyUyMEtl
# eSUyMFNlcnZpY2VzLENOPVNlcnZpY2VzLENOPUNvbmZpZ3VyYXRpb24sREM9bWNq
# dW5raW5yZWRtYW4sREM9Y29tP2NBQ2VydGlmaWNhdGU/YmFzZT9vYmplY3RDbGFz
# cz1jZXJ0aWZpY2F0aW9uQXV0aG9yaXR5MHgGCCsGAQUFBzAChmxodHRwOi8vY2hz
# c3J2ZHNjYTAxLm1janVua2lucmVkbWFuLmNvbS9DZXJ0RW5yb2xsL2Noc3NydmRz
# Y2EwMS5tY2p1bmtpbnJlZG1hbi5jb21fTVJDR2xvYmFsLUlzc3VpbmdDQSg2KS5j
# cnQwNwYIKwYBBQUHMAGGK2h0dHA6Ly9jaHNzcnZkc2NhMDAubWNqdW5raW5yZWRt
# YW4uY29tL29jc3AwEwYDVR0lBAwwCgYIKwYBBQUHAwMwNgYDVR0RBC8wLaArBgor
# BgEEAYI3FAIDoB0MG2NyYWlnLnRpbW1vbnNAbXJjZ2xvYmFsLmNvbTANBgkqhkiG
# 9w0BAQsFAAOCAgEAKvDIRbqaTmr+fz5bBPzznCQzQZjlmmJDs8obzGOZ80TU1hB2
# 2GI6Y7EWInFNzXifQLt0pZCvdrVGAaHUC5t3CP5mfaHqBrinv/YA64BxLgI42+/B
# gShAV935BrImMyawnadq4318SL71X0pkwn7FnCRCGC+VdGT6CIOn0qJx+EeiS1z8
# ABd1MgJl0KItXFpFlqkIRiCLLp4PYLcfUNW1H7R5ZZWr5fScJGcB3ax3uLqJYK+4
# LomAUR6H5nMkGWXxlkTJLu/TuvLYWofX8z0sSpGDjSP/AUBJE2l4aiYPO2AJKs4Y
# PBbTEAEFO8cV3r6hoi7A+IKU5pQszad5iBr6fVeYhandZUZbQYOfovm1vzYiwlcb
# 1UZXX2eTCrVXMUrTDQk7NkODg5PVrFFsdJVMOgykQYyjkaby1Av9HUirgGXDI3qN
# pFguBkIDgM/rzmNWzlZ1R+hT2K+6jbqEpGAwV2gPGFdQXFmPIx5bSUyNK20BAR8R
# VfXVFKc91vrQlkSRjj/SxiPfwoH+P6LB8EdYBz8oJkvXNJ5eTccbTFlBMSgWkykI
# pFVoY6YPtclbkNPDM6favRsFLNS4vqwPhLpdaDRf2Xb5V7w5QDB4aMaFyTGouOch
# rUZD+xka753mwjE2zyrvqxDnxm1h2+OGLxfaxNd/a2a42Bb8sFQ5GygTPYQwggh/
# MIIGZ6ADAgECAhM/AAAAjsqPhMC5kZOvAAQAAACOMA0GCSqGSIb3DQEBCwUAME8x
# EzARBgoJkiaJk/IsZAEZFgNjb20xHjAcBgoJkiaJk/IsZAEZFg5tY2p1bmtpbnJl
# ZG1hbjEYMBYGA1UEAxMPTVJDR2xvYmFsUm9vdENBMB4XDTE4MDcxOTA4MTIyMloX
# DTI4MDcxNjA4MTIyMlowUzETMBEGCgmSJomT8ixkARkWA2NvbTEeMBwGCgmSJomT
# 8ixkARkWDm1janVua2lucmVkbWFuMRwwGgYDVQQDExNNUkNHbG9iYWwtSXNzdWlu
# Z0NBMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA0gSlM0vPAuaSpoSA
# glcRv3mmJnyO0YzPhgpY/lwyPcYPXI0g3Coc9C6x2sBuVmKuy/Cdx+aDHC1+eqzy
# J6XM65I9Ix+7LLV+ctkUviBNBDDkqj8yUG9KLzOXRRAc3nozoaYKTIrhyyUKej5w
# tTIydX/y5dATxwZcv0oFwrBnC+F9mUbYeIbAF2nvtHv1qihPNFTR4JSJJSPfCiIT
# 5skVhHisF/8QHxSZhtpeRvAMbhSx1WYhgBwLwBv9belDaTSEyhc2aeu4MJhsU58s
# 8+0sSNxSmDeCsCW9t10c63Rezn0g/vDhASyM1uhwdE4Zhp+H1/4zD63jSjNLv1fq
# HQWPE4bW4by46qpFya8XvqXGZ2YNPYRN2rZer8Gr3nAbX0QPjDDTwsnDGjcyxAyd
# dUqAbItugDB2KposPDTK/XfKoFY0T+mBZJ9oSFpKEiRPUqAGe76jUEe359BX+qX5
# 7Snv1YYNgUoBfrBco2r5/VQXLv8ZPRXteomwWYlx8BOJKSbERH2ReseaZF5LTUVd
# la3uTYNSYH/gvGPa3W7cLCjj05k9Xu6XputM2PlnCw6NFsy7a8lrZSOq49vDKlfy
# z0WzXGaKePyKRlvHeGzHCKEkYVCmaMPxMzd2HwU+vCu9cbl4Z8C1hPCRer/9a31h
# NS+FliZtqFEn2ibNZT/mY99lY4sCAwEAAaOCA04wggNKMBIGCSsGAQQBgjcVAQQF
# AgMFAAYwIwYJKwYBBAGCNxUCBBYEFG2DvEb7p9o7h/Uqc19OEXZKyPj2MB0GA1Ud
# DgQWBBQu7v8+O4U8YMmc1V8bJQyNREo/jDA+BgkrBgEEAYI3FQcEMTAvBicrBgEE
# AYI3FQiG4cAShp7OLIehmwGDj/0pho/BWYEThcjqZ4a+hmQCAWQCAQMwCwYDVR0P
# BAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wHwYDVR0jBBgwFoAUg0uFAd3VnaZZdUrZ
# 7PGnoA1dFmwwggErBgNVHR8EggEiMIIBHjCCARqgggEWoIIBEoaBxWxkYXA6Ly8v
# Q049TVJDR2xvYmFsUm9vdENBKDQpLENOPWNoc3NydmRzY2EwMCxDTj1DRFAsQ049
# UHVibGljJTIwS2V5JTIwU2VydmljZXMsQ049U2VydmljZXMsQ049Q29uZmlndXJh
# dGlvbixEQz1tY2p1bmtpbnJlZG1hbixEQz1jb20/Y2VydGlmaWNhdGVSZXZvY2F0
# aW9uTGlzdD9iYXNlP29iamVjdENsYXNzPWNSTERpc3RyaWJ1dGlvblBvaW50hkho
# dHRwOi8vY2hzc3J2ZHNjYTAwLm1janVua2lucmVkbWFuLmNvbS9DZXJ0RW5yb2xs
# L01SQ0dsb2JhbFJvb3RDQSg0KS5jcmwwggFABggrBgEFBQcBAQSCATIwggEuMIG1
# BggrBgEFBQcwAoaBqGxkYXA6Ly8vQ049TVJDR2xvYmFsUm9vdENBLENOPUFJQSxD
# Tj1QdWJsaWMlMjBLZXklMjBTZXJ2aWNlcyxDTj1TZXJ2aWNlcyxDTj1Db25maWd1
# cmF0aW9uLERDPW1janVua2lucmVkbWFuLERDPWNvbT9jQUNlcnRpZmljYXRlP2Jh
# c2U/b2JqZWN0Q2xhc3M9Y2VydGlmaWNhdGlvbkF1dGhvcml0eTB0BggrBgEFBQcw
# AoZoaHR0cDovL2Noc3NydmRzY2EwMC5tY2p1bmtpbnJlZG1hbi5jb20vQ2VydEVu
# cm9sbC9jaHNzcnZkc2NhMDAubWNqdW5raW5yZWRtYW4uY29tX01SQ0dsb2JhbFJv
# b3RDQSg0KS5jcnQwDQYJKoZIhvcNAQELBQADggIBAEDlcZVPH5df2jFwnlQlK+GK
# LY7Wb5WJv0hWq26rdfYSAPK7Bwyf9Rt1fXmxrb8nE+IvZF6uleRaBbanx+xAVK5c
# l+HZ3OylWcV+edTT0zOtDHbIoAAXv9pOh43E9XZ0Z7NX6BNDe4vJAy/MOTuQ5fwy
# iXimNNONPqHXlgX6+/5g/+IWK4IVDPF2z0c/UxpenWrjUcavec8+zepUr96TkFcr
# cLGuTLPiYQPUZ4Pk5RG9GSoYv4blo7ai/Qq+KDRnrXCMfi0DGqD+1VU0T6tkzo6G
# uaZJ5Jkem42e6b0j1R+3mPWBu64CctHU6SHCKgZ6qhXgoLEyhjgXfIua3OgADFAn
# uFP4O6Ht3c28tOs/r5tJfl+Len0X9bP0E2nld6FnJUEakhrwIv1InQ6dYZl6s9SB
# 6TwLJJml0qRuy9ZkWdOJNLQyDmS46txI4vHoSFZvL8EsPvxvwuuie1N49O/I2ByB
# bLOWpRW+7tkkJvu0yLmJXXhCHtDxtTIjdr5fSvKzsIrUIoXVZ3UmsMQTmQcaMnn8
# A2XuQ+8tPfMNzrNsxUTT2pRL1bYFt5FT0ZZKMHTA/DilnAEsqzysEDIRHe3yuR2u
# +QUusEpN5tPM0AKFImzibHjwrCIKL3+H49XZGhl5Tu7VVyqc2MB/CpgdfhudXu8g
# 8PsIajiX/rq5RP6byJ+qMYICCzCCAgcCAQEwajBTMRMwEQYKCZImiZPyLGQBGRYD
# Y29tMR4wHAYKCZImiZPyLGQBGRYObWNqdW5raW5yZWRtYW4xHDAaBgNVBAMTE01S
# Q0dsb2JhbC1Jc3N1aW5nQ0ECExwAAIY0mAPat/zcwNwABgAAhjQwCQYFKw4DAhoF
# AKB4MBgGCisGAQQBgjcCAQwxCjAIoAKAAKECgAAwGQYJKoZIhvcNAQkDMQwGCisG
# AQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwIwYJKoZIhvcN
# AQkEMRYEFCYchiieYQpFUW+atLhDELdU5YtiMA0GCSqGSIb3DQEBAQUABIIBAEL3
# 6LdaXoa8PdPgKg8OsUI2Ss+0cMo7vu5pt6Z7Xib9FPKycW96idY39hW7DlviQKLD
# BQ8STCVCzjFZJGCWm3tVcfOJ5olMBjttTu2V5Z3DQbLEaTpBhhNtVJrwyn0bu4RR
# /6Ydv/2XQK2hVohEq3ORkcz78vrXFrcaRSvthBBrMVTMoocUU3Zn4uBe1vnJX0uy
# MWnAmQRXX9OC1C6jW4vAUW23RYsgKk2VFruMgsUmFIUN1Dz+O+tgC3R/6kuAmzO5
# g+bIPP/TEY/pFPuNe7xnaYx88XDIxRJx6JQhdpiCu1m6PE5PQzJrbDFf1WvArenz
# hSfiqZPbIi6wuyBMPzU=
# SIG # End signature block
