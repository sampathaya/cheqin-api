h1. Hoptoad API

An unofficial Ruby library for interacting with the "Hoptoad API":http://hoptoadapp.com/pages/api

h2. Usage

<pre>
<code>
Hoptoad.account = 'myaccount'
Hoptoad.auth_token = 'abcdeghijklmnopqrstuvwxyz'
Hoptoad.secure = true # if your account is SSL enabled

# find an individual error:
Hoptoad::Error.find(12345)

# or get a list of errors using:
Hoptoad::Error.find(:all)
Hoptoad::Error.find(:all, { :page => 2 })
</code>
</pre>


h2. Requirements

* HTTParty
* Hashie

h2. Acknowledgements

* "Hoptoad":http://hoptoadapp.com

h2. Contributors

Matias Käkelä (SSL Support)
Jordan Brough (Notices)