# dhcp-storm
A DHCP Server testing tool.  
You are able to create automatic DHCP request with random MAC Address from Windows Powershell evironment.

# Usage
Allow Powershell Scripts  
Start Powershell as Administrator and run the following statement

    Set-ExecutionPolicy Unrestricted 

Then you can start dhcp-storm.ps1

    .\dhcp-storm.ps1 [count dhcp request = 1]
    
    
# Requirements    

**Powershell Execution Policy**  
if needed you must allow powershell scripts

    # Start Powershell as Administrator and run the following statement
    $ Set-ExecutionPolicy Unrestricted 
    
**Local Windows Firewall**  
if needed you must allow outgoing bootp traffic from dhcptest (./bin) to your network    
    
# License
dhcp-storm is available under the Boost Software License 1.0

dhcp-storm is a extension from common "dhcptest" project  
Github: https://github.com/CyberShadow/dhcptest  
Blog: http://blog.thecybershadow.net/2013/01/10/dhcp-test-client/  