PrologCloud
===========

Web IDE for XSB Prolog

A senior thesis project undertaken to meet graduation requirements for The Honors College at Stony Brook University. A work in progress. Some rough notes can be found at https://hackpad.com/Prolog-Cloud-yBuKYR8QLDo.

Dependencies:

- Vagrant

To run:

1. `vagrant up`
2. `vagrant ssh`
3. `cd /var/www/javaback`
4. `java JavaCallsProlog`
5. Open new terminal tab and navigate to PrologCloud directory
6. `vagrant ssh`
7. `cd /var/www/`
8. `gunicorn -b 0.0.0.0:8000 app:app`
9. Access web application at `localhost:8080`
