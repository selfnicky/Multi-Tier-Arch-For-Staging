#!/bin/bash

sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd

# Using a heredoc to avoid escaping issues
sudo bash -c 'cat << EOF > /var/www/html/index.html
<html>
  <body style="background-color: #47D34F;">
    <h1>
      <p>Welcome to Kids Connect Daycare Center!!!.<br>
      This traffic is served from: <span style="color: purple;">${HOSTNAME}</span>
      </p>
    </h1>
  </body>
</html>
EOF'
