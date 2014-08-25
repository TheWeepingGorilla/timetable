#Timetable
###Authored by Austin Steward & Sean Morrison
***
##Description
This rails web app uses three models (`Station`, `Line` & `Stop`) that are related through a `has_many through` assocation (stops being the join table in this case). Users may create both stations and lines, add stops to lines, and do full CRUD for these.  A Bootstrap theme is used through the assets pipeline, with additional styling added. Dismissable `flash[:notice]` and `flash[:alert]` are located throughout the site with appropriate messages related to model creation, updating, and deletion. Form partials were also created for creating and editing objects.
***
##Dependencies
- [Bootstrap](http://getbootstrap.com/)
- [Bootstrap.min.js](http://getbootstrap.com/javascript/)
- [jQuery](http://jquery.com/)
- [Sass](http://sass-lang.com/)

***
##Licensing
- [MIT](http://opensource.org/licenses/MIT)
