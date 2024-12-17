:local sysname [/system identity get name]
:local time [system/clock/get time]

:local botID bot7358974222:AAE8w-2dBes_baWaKH87xodCtkkPSTkasSE
:local ChatID -1002200341338
:local Thread 47

:local message

############################################################

:if ($leaseBound = 1) do={
    /ip dhcp-server lease;
    :foreach i in=[find server=lan10] do={
        :local dhcpip
        :set dhcpip [ get $i address ];
        :local clientid
        :set clientid [get $i host-name];
        :if ($leaseActIP = $dhcpip) do={
            :set message ($sysname . "%0A". $time . "%0A". "New%20IP%20"  . ":%20" . $dhcpip . "%20" . $clientid);
            /log error $message;
            /tool fetch url="https://api.telegram.org/$botID/sendMessage\?chat_id=$ChatID&&message_thread_id=$Thread&text=$message"
        }
    }
}