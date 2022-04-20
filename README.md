# Mysql-Keda


Simple configuration and installation of Mysql database with integration to Keda for the verification of scalability following an event.

In this case the trigger assumes the output value of a query, whose static value assumes the reference threshold for the generation of an event.

To generate a scaleUP or scaleDOWN event you need to connect to the DB and manually change the necessary values ​​in the trigger_uno column.


__________________________________

<b>GENERIC INFO</b>

Keda is a plug-in integrated in kubernetes starting from version 1.20

you can find out if it is installed in your version of microk8s by typing the following command:

state of the microk8 | grep keda

if your output looks like this:

keda # Kubernetes based event-based autoscaling

you can enable it by simply typing:

microk8s enable keda

__________________________________

<b>N.B</b>

If you need to install on edge devices with ARM, keda does not currently support this architecture, but should be integrated starting with version 2.7

if you want to stay updated on the topic you can follow the following number:

https://github.com/kedacore/keda/issues/779#issuecomment-1063133713

__________________________________

<b>NOTICE</b>

The whole project was run using the "default" kubernetes base nampespace.<br>
If you intend to use scripts you must insert the option "-n your-namespace" in the commands

<b>HOW TO INSTALL</b>

1 - install or run microk8s cluster<br>
2 - run script ./install.sh for install config & mysql<br>
3 - run mysql-string.sh for insert mysql connection string on Keda HPA Service

<b>UNINSTALL</b>

1 - run ./uninstall.sh


