# modeling-sandbox
Sandbox for experimenting with statistical modeling


# Installation

The modeling sandbox is a Vagrant virtual machine that is scripted to contain all that is needed 
to run analyses on Zeppelin. You will need to install Vagrant (https://www.vagrantup.com/) on your 
system along with virtual machine software, such as Oracle's VirtualBox on Windows.

To setup the machine, simply run 

```
vagrant up
```
On the first run, it will setup the virtual machine with the sandbox environment. Later you will need 
to run this command every time you have booted up your machine, to start the virtual machine. 

If installation was successful, you should see
```
Installation complete!

Access Zeppelin at: http://localhost:8080
User: admin
Pass: admin
```
At that stage, you can start developing by opening [Zeppelin on your browser](http://localhost:8080/). As shown by the 
message line above, the username and password are both ```admin```.

# References

The Vagrant box is inspired by [arjones/vagrant-spark-zeppelin](https://github.com/arjones/vagrant-spark-zeppelin)

The TelCo dataset for churn is from [navdeep-G/customer-churn](https://github.com/navdeep-G/customer-churn/blob/master/data/TelcoChurn.csv)
