This is a project for Udacity's Full Stack Nanodegree: Item Catalog Project

Features

Facebook Login
CRUD Item/Catalog operations
Only users may edit/delete/add new items
JSON Endpoints
Request	What you get
/catalog/JSON	Get all Categories
/catalog/category ID/items/item ID/JSON	Get a single item
/catalog/category ID/items/JSON	Get all items that belongs to the given catgeory
Quick start

To run this file, you'll need Vagrant and VirtualBox installed.

VirtualBox can be downloaded here: https://www.virtualbox.org/wiki/Downloads Vagrant can be found here: https://www.vagrantup.com/downloads.html

Once you have Vagrant and VirtualBox up and running, open a command prompt and navigate to vagrant/ inside this directory, and run the following commands:

vagrant up
vagrant ssh
cd /vagrant/catalog
python items.py (to populate database)
python project.py
Go to http://localhost:5000 to see app running