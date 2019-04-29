#cloud-config

coreos:
  units:
    - name: "docker-webserver.service"
      command: "start"
      content: |
        [Unit]
        Description=Webserver container
        Author=Petr Pliska
        After=docker.service
        [Service]
        Restart=always
        ExecStart=/usr/bin/docker run --name webserver --publish 80:80 httpd
        ExecStop=/usr/bin/docker stop --time 5 webserver