$AAs=import-csv c:\scriptinput\AA_Resource_Accounts.csv
foreach ($aa in $AAs)
	{
		New-CsHybridApplicationEndpoint -OU $aa.ou -ApplicationId $aa.ApplicationID -SipAddress $aa.NewSIPaddress -displayname $aa.newdisplayname -lineuri $aa.Lineuri
		
	}
# SIG # Begin signature block
# MIIRrAYJKoZIhvcNAQcCoIIRnTCCEZkCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQULamC6JVwvhHnpQ+Ih9rRi5iy
# Gvmggg+MMIIHBTCCBO2gAwIBAgITHAAAlQDbj+tr4VUgbgAHAACVADANBgkqhkiG
# 9w0BAQsFADBTMRMwEQYKCZImiZPyLGQBGRYDY29tMR4wHAYKCZImiZPyLGQBGRYO
# bWNqdW5raW5yZWRtYW4xHDAaBgNVBAMTE01SQ0dsb2JhbC1Jc3N1aW5nQ0EwHhcN
# MTgxMjE0MTQ1OTU4WhcNMjMxMjE0MTUwOTU4WjAbMRkwFwYDVQQDExBNUkNHbG9i
# YWxTaWduaW5nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC+bgmEbLOrVB1y
# /5ZHUkSmKFoHB2B6LD/GcOiGGWhhem7jnVOlj87DshGjG7rBDAKtncR0sSrDFpww
# aJM5bKO7yWmdUk6lmfKFDdk/7KHmE1g1PKG1QCCASi1Lh6SL3B7/l3JefT3vmqTl
# I0cBWQT3W0DBl0nab5jAKwb7TgOwgQIDAQABo4IDjDCCA4gwPQYJKwYBBAGCNxUH
# BDAwLgYmKwYBBAGCNxUIhuHAEoaeziyHoZsBg4/9KYaPwVmBE4HDg36x7XECAWQC
# AQIwEwYDVR0lBAwwCgYIKwYBBQUHAwMwCwYDVR0PBAQDAgeAMAwGA1UdEwEB/wQC
# MAAwGwYJKwYBBAGCNxUKBA4wDDAKBggrBgEFBQcDAzAdBgNVHQ4EFgQUFYrjwBKZ
# fDFK+rKvxvd0+V06q9EwHwYDVR0jBBgwFoAUk/LJV4Gpd6JsR4wvYQCLXGuiW9Mw
# ggEzBgNVHR8EggEqMIIBJjCCASKgggEeoIIBGoaByWxkYXA6Ly8vQ049TVJDR2xv
# YmFsLUlzc3VpbmdDQSg3KSxDTj1jaHNzcnZkc2NhMDEsQ049Q0RQLENOPVB1Ymxp
# YyUyMEtleSUyMFNlcnZpY2VzLENOPVNlcnZpY2VzLENOPUNvbmZpZ3VyYXRpb24s
# REM9bWNqdW5raW5yZWRtYW4sREM9Y29tP2NlcnRpZmljYXRlUmV2b2NhdGlvbkxp
# c3Q/YmFzZT9vYmplY3RDbGFzcz1jUkxEaXN0cmlidXRpb25Qb2ludIZMaHR0cDov
# L2Noc3NydmRzY2EwMS5tY2p1bmtpbnJlZG1hbi5jb20vQ2VydEVucm9sbC9NUkNH
# bG9iYWwtSXNzdWluZ0NBKDcpLmNybDCCAYEGCCsGAQUFBwEBBIIBczCCAW8wgbkG
# CCsGAQUFBzAChoGsbGRhcDovLy9DTj1NUkNHbG9iYWwtSXNzdWluZ0NBLENOPUFJ
# QSxDTj1QdWJsaWMlMjBLZXklMjBTZXJ2aWNlcyxDTj1TZXJ2aWNlcyxDTj1Db25m
# aWd1cmF0aW9uLERDPW1janVua2lucmVkbWFuLERDPWNvbT9jQUNlcnRpZmljYXRl
# P2Jhc2U/b2JqZWN0Q2xhc3M9Y2VydGlmaWNhdGlvbkF1dGhvcml0eTB4BggrBgEF
# BQcwAoZsaHR0cDovL2Noc3NydmRzY2EwMS5tY2p1bmtpbnJlZG1hbi5jb20vQ2Vy
# dEVucm9sbC9jaHNzcnZkc2NhMDEubWNqdW5raW5yZWRtYW4uY29tX01SQ0dsb2Jh
# bC1Jc3N1aW5nQ0EoNykuY3J0MDcGCCsGAQUFBzABhitodHRwOi8vY2hzc3J2ZHNj
# YTAwLm1janVua2lucmVkbWFuLmNvbS9vY3NwMA0GCSqGSIb3DQEBCwUAA4ICAQAC
# gFhkQ/0hKQtiJZ1XDOVqBqNyDWJRATKOQFevx6qoXd1Put85M7VcCWSX+BzutgmT
# BKVz0FGJoswIK3dFfG7LLqc8ZVSV8N684PbYBJtvV2oZLE5lKod0wC2rcxtGb3RX
# rjaKyh8BHtwC7dGft5fEeF4Sa2o4JKMPnI32u27biyYEiEy/4K7QmQM0sn6D/Qae
# Wc9cJupi54MrWrP2StVrOM31wMQh7d3S3DK+M+2WBnDp1gc6YqowydvwAbLKsHx8
# OBBWtJ9rsbfKVRGQfMHIntnZrf1AQg1vPWQNPgo4mVrKGHjCuLjvza3K/kaVWyXV
# sdT7dCKrgDm1JObyI7/fKrPwTdx4XqPkNiYHKf1oX2YLf436Vz2kzzNJMsj8szk9
# 29Rd1Ry7jaij7JWDi5N88C3FSMcDrbNqxhizNvGm2++I1PzqJ4LrfI7vYl4aCma9
# 0cyDFxLcWkHkhj/ZutkAiEhw2ybtlzu9dVPNrn82R075TpboZgpXl+BqE23AXH1c
# NV8hwO4Ic7q/ipfOzasruW6aEQbaHzQv0sreAvJsvweJA6+wvRqccmnxFkFbjapv
# X8f3qRcEDrkzpIr6fPupbv5JBzfBC3n2qQZnRpwru40LJd3FAwzpxfOe2KA5Fl74
# 7T9c/RpigVUDERZPMBExKmaq5j/ZNTcOCojWBIZGWjCCCH8wggZnoAMCAQICEz8A
# AACrnHG7DLB2n4gABAAAAKswDQYJKoZIhvcNAQELBQAwTzETMBEGCgmSJomT8ixk
# ARkWA2NvbTEeMBwGCgmSJomT8ixkARkWDm1janVua2lucmVkbWFuMRgwFgYDVQQD
# Ew9NUkNHbG9iYWxSb290Q0EwHhcNMTgxMDI5MDcwOTUzWhcNMjgxMDI2MDcwOTUz
# WjBTMRMwEQYKCZImiZPyLGQBGRYDY29tMR4wHAYKCZImiZPyLGQBGRYObWNqdW5r
# aW5yZWRtYW4xHDAaBgNVBAMTE01SQ0dsb2JhbC1Jc3N1aW5nQ0EwggIiMA0GCSqG
# SIb3DQEBAQUAA4ICDwAwggIKAoICAQCruXJBeV0N/g5pShCoYdbyOWSdBSukXUYp
# iPpdZmMRRIzHU+OkQyS9RtXOJ5liYU723g7bVTT54iNah3uawEr/jTsgoQQ+aqcD
# Ap0XS59BiYTm/u4449uUaQotvAKFc1X4ZxoJ+PEhKYGnyPLLLjqGrl6mOHEjFxNn
# KOQHsdIuSNPhXYffZK//gGf0lge/blJIMGTCfCSxUuCNgfXFH/Cg7rdPr7iGN2Ku
# BjuKjte4VNaoLO1YZ5Qhd/okEXvyMujdvEivcEhnfy/O9nYdS/oVxBgD8j/afqVm
# khrZHMfhlT93Amcl4parOX8MuQ/YC5Z/NKGbEsKHrmiu6mFYQezSf97udf+jyykx
# igvPDG8ftUs2C4K2UgcT3Ao+318tFYMR0OFmHWe/Y6XPdxXn/uXvdWn2HDY89kbB
# 7CgD3GUjweZPqpbZY9rNEhv/rBeCqXBJxlbKZbrrepPyyuge51sK7hJC4qn10BN4
# Xpbd0WbUwMehuCvvAU4zO0Mbg7bTala3N0neMWUuAt7NY6WsrAHxaV00bXg2Vihl
# g4el70UCn5l4h7arzMI0U8LDkrmySUAGQXC2Bc+4+BkKb8VEwcJBuhgVDdKcDaJj
# DWkjr8DEdAws+xtUFVKjNpMrVi0F8P4JSdnZNpcbvoSN1nVeS+G1lV/w3lbii3+i
# JbLF/J7loQIDAQABo4IDTjCCA0owEgYJKwYBBAGCNxUBBAUCAwcABzAjBgkrBgEE
# AYI3FQIEFgQUjwKZF7LJpLv7jnvGXH2bHjTpzPkwHQYDVR0OBBYEFJPyyVeBqXei
# bEeML2EAi1xrolvTMD4GCSsGAQQBgjcVBwQxMC8GJysGAQQBgjcVCIbhwBKGns4s
# h6GbAYOP/SmGj8FZgROFyOpnhr6GZAIBZAIBAzALBgNVHQ8EBAMCAYYwDwYDVR0T
# AQH/BAUwAwEB/zAfBgNVHSMEGDAWgBSDS4UB3dWdpll1Stns8aegDV0WbDCCASsG
# A1UdHwSCASIwggEeMIIBGqCCARagggEShoHFbGRhcDovLy9DTj1NUkNHbG9iYWxS
# b290Q0EoNCksQ049Y2hzc3J2ZHNjYTAwLENOPUNEUCxDTj1QdWJsaWMlMjBLZXkl
# MjBTZXJ2aWNlcyxDTj1TZXJ2aWNlcyxDTj1Db25maWd1cmF0aW9uLERDPW1janVu
# a2lucmVkbWFuLERDPWNvbT9jZXJ0aWZpY2F0ZVJldm9jYXRpb25MaXN0P2Jhc2U/
# b2JqZWN0Q2xhc3M9Y1JMRGlzdHJpYnV0aW9uUG9pbnSGSGh0dHA6Ly9jaHNzcnZk
# c2NhMDAubWNqdW5raW5yZWRtYW4uY29tL0NlcnRFbnJvbGwvTVJDR2xvYmFsUm9v
# dENBKDQpLmNybDCCAUAGCCsGAQUFBwEBBIIBMjCCAS4wgbUGCCsGAQUFBzAChoGo
# bGRhcDovLy9DTj1NUkNHbG9iYWxSb290Q0EsQ049QUlBLENOPVB1YmxpYyUyMEtl
# eSUyMFNlcnZpY2VzLENOPVNlcnZpY2VzLENOPUNvbmZpZ3VyYXRpb24sREM9bWNq
# dW5raW5yZWRtYW4sREM9Y29tP2NBQ2VydGlmaWNhdGU/YmFzZT9vYmplY3RDbGFz
# cz1jZXJ0aWZpY2F0aW9uQXV0aG9yaXR5MHQGCCsGAQUFBzAChmhodHRwOi8vY2hz
# c3J2ZHNjYTAwLm1janVua2lucmVkbWFuLmNvbS9DZXJ0RW5yb2xsL2Noc3NydmRz
# Y2EwMC5tY2p1bmtpbnJlZG1hbi5jb21fTVJDR2xvYmFsUm9vdENBKDQpLmNydDAN
# BgkqhkiG9w0BAQsFAAOCAgEACrDCM6mkdFJBD7jPIwQjXQJ5LbZEDjwe1vPDRO11
# Y7EFpz43vR89R4ZQEi8Hzn/MHNmaIk9Stke0MAb7aMWgD1XKRPPF9GasTkY+NjMh
# s67bPlTA4HCWEaDEq7d/p7ZfwaAZZg2Ev0jyMmIhLNCWQ8WNAPWcmOF+Eh+tGDhE
# W4Dn0H5y9LHFCXg45+y2iQUtpLK0iGrRYXM+uAoka2NTlu+2/Y8t4fJML9h6pbmj
# rmY5WNV6X5S9MfvJlLL13emO6+2o+OiLTUYRkCwZvem7YuTA0Ag6JYS42LZ/INSo
# JtOUzdVOVcRLbh26vGBnkNgcmzbQGw/b167+eR9yVN4vn9GZ9szCKo00+Qr54L0f
# 6JNSa3ujffJI6PnnLl4YvMKxiJJA9IgzuwU5X/1ZZbRZ6YLfKQF60D5EJOWivqwW
# Ntpwq+WVPO+Yak0O5uvjHUDisPkCk20bqJUd6crmMFSpL8DPBRkN5zTr0/4qdUiZ
# 6hkw6R6udFVRAl3WcYMhjnH7Fns6zaNNd+QxM4kP6tbTEn2QwrUv87lOrWN9BGSC
# YOf4NztcuiFd76yR9w0nIedLTKJfa9wvjeo6X8vrZUNEkkPoiIM5JOdzMjkKgIk8
# kzt6kGVkm61iJrdeY1qb6c3tLjk0uZBVZavabiHizVG+lOn2u8B5H8ej//DKGGfD
# sUUxggGKMIIBhgIBATBqMFMxEzARBgoJkiaJk/IsZAEZFgNjb20xHjAcBgoJkiaJ
# k/IsZAEZFg5tY2p1bmtpbnJlZG1hbjEcMBoGA1UEAxMTTVJDR2xvYmFsLUlzc3Vp
# bmdDQQITHAAAlQDbj+tr4VUgbgAHAACVADAJBgUrDgMCGgUAoHgwGAYKKwYBBAGC
# NwIBDDEKMAigAoAAoQKAADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAjBgkqhkiG9w0BCQQxFgQUCMk2nkcA
# 2yJqmK+m/q/ROyiHtwkwDQYJKoZIhvcNAQEBBQAEgYBBYbgqx8J0a7VoGe1thQH7
# lhEJy1l34GePpsWFIYvE1gAwijSAgoFr+jeSE68GiSkopggjz/di/OkDkhvyZ2PP
# NjZjlyteYu6TWBEmzqZZzYC+R2wz3X7ddPC0XUCZnsnoGnmaaCoAj+z7cwUNuurZ
# G3ZTWwqB0IbCpzpgEg3nDQ==
# SIG # End signature block
