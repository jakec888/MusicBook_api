<h1>MusicBook</h1>



<h1>Music Book</h1>
<hr>
 <h2></h2>
<p>MusicBook is an app that prides itself on being a no-frills, one-stop shop for collaborating on music! It incorporates a Postgres relational databse to house all user inputed data supported by a ruby on rails web framework to round out the backend of the project. The app was developed by Jacon Condes and Christopher Cook while wrapping up their tenure at GA.  </p>
<br />
<h2>Technologies Implemented</h2>
<hr>
<ul>
  <li><a href="https://nodejs.org/en/">nodeJS</a></li>
  <li><a href="https://www.mongodb.com">MongoDB</a></li>
  <li><a href="https://expressjs.com">Express</a></li>
  <li><a href="https://angularjs.org">Angular</a></li>
 <li><a href="https://developers.google.com/maps/documentation/embed/guide">Maps Embed API</a></li>
</ul>
<h2>Approach</h2>
<hr>
<p>During initial setup the team took advantage of Trello to manage task creations, member assignment and track current status. Preliminary handwritten and digital Adobe based wireframes used in designing the site: </p>
<img width="350" src="https://i.imgur.com/s4G3bh2.png" ALIGN="right"><img width="350" src="https://i.imgur.com/FjQ8Yd7.png">

<h2>Site Information</h2>
<hr>
<a href="https://routr-app.herokuapp.com/">Routr</a>

<h4>Authors</h4>
Jacon Condes<br />
Christopher Cook

<br />
<br />
<a href="https://github.com/christopher-cook/MusicBook_front_end">React Front-End</a>


```
CREATE TABLE songs (song_name VARCHAR(40), artist VARCHAR(30), videoid VARCHAR(50), contributor VARCHAR(20), likes INT, dislikes INT, id SERIAL);
```
