#!/bin/bash

if [$2 == ""]; then
	echo "Incorrect Number of args. Run script using the following form:'./TarCp.sh <#> <Filename>'"
	exit 0
fi

CpNum="CP$1"
InputName=$2
#Outputformat is OutputName="${CpNum}_<Lastname>_<LDAPAcctName>_<GitHubId>.tar"
OutputName="${CpNum}_Battle_cbattle1_ClayBattle.tar"

tar cvvf $OutputName $InputName
gzip $OutputName

echo "Ensure .tar.gz isn't empty:"
ls -l *.tar.gz
