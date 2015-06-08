# Setting development environment #

First you'll need the basic development environment. Find a simple tutorial on Android developers guide documentation: http://developer.android.com/sdk/installing.html#Installing

Basically you'll need three things:
  1. eclipse IDE
  1. Android SDK
  1. ADT plugin for eclipse (we currently use version 12.0.0.v201106281929-138431)

Now set the environment and connect to SVN repository.

  1. File->New->Other->Android->Android Project
  1. Project name: CookIt
  1. Build target: Create new AVD: Android 2.3.3, API Level: 10
  1. Package name: com.cookit

Other fields just leave with default values.

  1. Click Next
  1. Do not create test project, click Finish
  1. Click RMB on new project->Team->Share Projects
  1. Select 'Create new repository location', click Next
  1. URL: https://cook-it.googlecode.com/svn/ (http://cook-it.googlecode.com/svn/ to read only)
  1. User: your-email-address
  1. Password: Encrypted password from project page, click Next
  1. URL: https://cook-it.googlecode.com/svn/trunk (http://cook-it.googlecode.com/svn/trunk for read only)
  1. Click Finish
  1. On warning message confirm to go forward
  1. The content of the repository is different from your newly created project, so do not commit anything now! (click 'Cancel' when the commit dialog appears)

You can use the google-project-hosting plugin for eclipse to maange the issues right from the development environment. Just install the plugin from update site:
http://svn.codespot.com/a/eclipselabs.org/projecthosting-connector-for-mylyn/update/

# Database environment #

A nice and platform-independent SQLite database client:
https://addons.mozilla.org/en-US/firefox/addon/sqlite-manager/

You can use
```
trunk/data/test/example.db
```
to play with it.