# Requirements
- Install Dependencies
<br> - If Debian
```
sudo apt install mutt
sudo apt install ssmtp
```
<br> - else if Redhat / CentOS 
```
sudo yum install mutt
sudo yum install ssmtp
```
- Configure Mail Server
you gonna need to use email and password to add the sender email, i am using gmail and google had disabled Allow less secure apps, so u gonna need to follows this link to create app password to use your mail https://support.google.com/mail/answer/185833?hl=en
```
sudo nano /etc/ssmtp/ssmtp.conf
```
And Add/edit the follwing with the right data
```
UseSTARTTLS=YES
FromLineOverride=YES
root=admin@example.com
mailhub=smtp.gmail.com:587
AuthUser=username@gmail.com
AuthPass=password
```
- Configure the script
<br> - replace all the place holders with your wanted data
# How To Use:
- Just Run ./error_reporter.sh and happy debugging
