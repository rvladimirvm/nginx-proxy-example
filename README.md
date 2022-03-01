# NGINX PROXY EXAMPLE
This is a simple example how to configure an **Nginx** server as proxy reverse to serve some applications using **docker-compose** ando some services.

## How works it?

- In the */includes* directory you will found basic configurations to proxy and ssl. 
- In **nginx.conf** file you have all configurations and how route the petitions and redirect to secure ports (If you need).
- In the **docker-compose** and **Dockerfile** files you will have basic configurations to run this.
- **page_not_found.html** is the default page to show when the server not found the resource or something went wrong.


## How generate SSL certificates

To generate the certificates we'll use **OpenSSL**:

`openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout app.key -out app.cr`

If you are using linux, you need add `sudo` to the begin and uncomment the line 9 in the Dockerfile. In **nginx.conf** you need uncomment the lines with the routes to the ssl certificates.
