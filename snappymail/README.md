# Snappymail (A fork from Rainloop)
based on the docker-image from kouinkouin

Before running the image, customize the .env-file corresponding your domain.

You can access snappymail by requesting to URLs

https://mail.domain.tld (Standard-Access)
https://mail.domain.tld/?admin (Admin-Access)

Snappymail will install a random Admin-password, which you can get with the following command:

```
sudo docker exec -it snappymail cat /snappymail/data/_data_/_default_/admin_password.txt

```
