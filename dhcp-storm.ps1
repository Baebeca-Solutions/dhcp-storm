<#
 @author		Sebastian Lutz
 @copyright		Baebeca Solutions
 @email			lutz@baebeca.de
 @pgp			0x5AD0240C
 @link			https://www.baebeca.de
 @link-github	https://github.com/Baebeca-Solutions/dhcp-storm
 @customer		-
 @project		dhcp-storm
 @license		Boost Software License 1.0 (http://www.boost.org/LICENSE_1_0.txt)
#>

#check args
if ($args[0]) { 
    $count = $args[0];
    echo "Info: count given, use $count";
} else {
    echo "Info: no count given, use 1";
    $count = 1;
}
echo "";

#get architecture
$arch = (Get-Process -Id $PID).StartInfo.EnvironmentVariables["PROCESSOR_ARCHITECTURE"].ToLower();

for ($i=1; $i -le $count; $i++) {
	$num_1=get-random -minimum 10 -maximum 99
    $num_2=get-random -minimum 10 -maximum 99
    $num_3=get-random -minimum 10 -maximum 99
    $num_4=get-random -minimum 10 -maximum 99
    $num_5=get-random -minimum 10 -maximum 99
    $num_6=get-random -minimum 10 -maximum 99
    $spacer = ":"

    $mac = "$num_1$spacer$num_2$spacer$num_3$spacer$num_4$spacer$num_5$spacer$num_6"
    echo "Create DHCP request ($i/$count) for MAC: $mac";
    echo "";

    if ($arch -eq 'x86') {
        ./bin/dhcptest-0.5-win32.exe --mac $mac --quiet --query
    } elseif ($arch -eq 'amd64') {
        ./bin/dhcptest-0.5-win64.exe --mac $mac --quiet  --query
    } else {
        echo "Unknown System Architecture - arch: $arch";
        exit;
    }

    echo "";
    echo "";
    echo "-------------";
}
	
pause