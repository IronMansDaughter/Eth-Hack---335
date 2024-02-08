param($netprefix,$dns)

for ($prefix=1;$prefix -lt 255;$prefix++){
    $IP="$netprefix.$prefix"
    $DNS_Name=Resolve-DnsName -DnsOnly $IP -Server $dns -ErrorAction Ignore | Select-Object -ExpandProperty Namehost

    if ($DNS_Name -ne $null){
    echo "$IP  $DNS_Name"
    }

}
