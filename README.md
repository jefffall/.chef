Where do the pems come from?

chef-validator.pem is downloaded from your chef server. You can log into the Chef Manage webpage. Go to Admnistration and select 
your org.
You will see a reset validation key. This key is only offered once in a web based window to cut and paste. So keep it somewhere
safe. Put this key into ~/.chef

Now go to USERS by clicking USERS
Click a username
if you click reset key you will get a new user key. Copy this and make it your user key to put into ~/.chef

You will need to create a trusted_certs directory if your chefserver is not in DNS. I named my chefserver chefserver and I put it in 
to /etc/hosts like below:


127.0.0.1       localhost
255.255.255.255 broadcasthost
::1             localhost
10.216.38.216   chefserver

Becuase I am running my chef server on a Macbook Pro under Virtualbox and my local netowrk will give me a local IP address for
dhcp if I bridge the adapter to the local netowrk adapter.

So then you need a self signed certificate.

you can run
knife ssl check 

to debug any crt problems:

knife ssl check
Connecting to host chefserver:443
Successfully verified certificates from `chefserver'

When you are done try a 
knife node list

knife node list
client-1-dhcp.yourcompany.com


