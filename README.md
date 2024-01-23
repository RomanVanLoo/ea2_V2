# EA2

Hosted on Heroku

Commits to master gets deployed to Staging. (on heroku you can also promote this to production)

Commits to production gets deployed to Production.

I think you are supposed to run the migrations manually `heroku run rails
  db:migrate -a ea2-staging`
