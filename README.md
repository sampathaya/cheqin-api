Cheqin.me API client
===========

This is the client gem for accessing cheqin.net property management system

Usage
-----

First, you should set the authentication token.

    Cheqin.auth_token = 'abcdefg'

If your account uses ssl then turn it on:

    Cheqin.secure = true

Optionally, you can configure through a single method:

    Cheqin.configure(:auth_token => 'abcdefg', :secure => true)

Once you've configured authentication, you can make calls against the API.  If no token or authentication is given, a CheqinError exception will be raised.

load hotel
--------------

    hotel = Cheqin::Hotel.find(id , params)

Get theme
--------------
	
	hotel.color_info

Get hotel images
--------------
	hotel.images

Requirements
------------

* HTTParty
* Hashie

Forked from 
------------

* Matias Käkelä (SSL Support)
* Jordan Brough (Notices)

Redesigned by
------------
Artellectual.com
