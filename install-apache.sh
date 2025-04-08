

#!/bin/bash
sudo apt-get update -y
sudo apt install apache2 -y
echo “<h1>my server connecting ——server details…</h1><p><strong> Hostname</strong>${hostname}
</p><p><strong>IP_ADDRESS</strong>$(hostname -I | cut -d' ' -f1)</p>” > /var/www/html/index.html
sudo systemctl restart apache2
