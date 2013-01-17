# Notdienst-Touch Web Application, version - 1.0.0
Setup pow server: http://pow.cx/manual.html

Run these commands to git things up and running

````
bundle
cp config/application.example.yml config/application.yml
rake db:setup
rake db:seed_fu
````
Heroku Staging 
To collaborate on the heroku staging app https://devcenter.heroku.com/articles/collab#collaborating-on-an-app
The heroku app is named: 

````
git@heroku.com:safe-forest-8379.git
````
To enable HTTP Authentication (recommended - to hide from google and customers)
````
heroku config:add RACK_ENV=staging RAILS_ENV=staging --app safe-forest-8379
````
To setup ENV VARS on Heroku run locally first: 
````
rake figaro:heroku[safe-forest-8379]
````
To seed test accounts and data
````
heroku run rake db:seed_fu --app safe-forest-8379
````
To test Offline functionality on Heroku Staging
````
heroku config:add RACK_ENV=production RAILS_ENV=production --app safe-forest-8379
````
To test Offline functionality (or just production in general) locally
````
RAILS_ENV=production rake db:setup
RAILS_ENV=production rake db:seed_fu
````

.powenv uncomment:
````
export RAILS_ENV=production
````

production.rb set:
````
config.force_ssl = false
````

Show hidden files in TextMate, Go to TextMate > Preferences... Click Advanced Select Folder References

Replace the following:

File Pattern
````
!(/\.(?!\W*)[^/]*|\.(gitkeep|DS_Store|tmproj|o|pyc)|/Icon\r|/svn-commit(\.[2-9])?\.tmp)$
 ````

Folder Pattern
````
!.*/(.git|CVS|_darcs|_MTN|\{arch\}|blib|.*~\.nib|.*\.(framework|app|pbproj|pbxproj|xcode(proj)?|bundle))$
````

Requires Ruby 1.9.2 or later to run.