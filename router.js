let express 	= require('express'), bodyParser	= require('body-parser')
let app = express(), mysql = require('mysql'), session = require('client-sessions')
const connsetup = require('./config/mysql_config.js');
app.use(bodyParser.urlencoded({ extended: false }))
app.set('view engine', 'pug')
app.use(session({
  cookieName: 'session',
  secret: 'random_string_goes_here',
  duration: 30 * 60 * 1000,
  activeDuration: 5 * 60 * 1000,
}))
app.get('/', (req, res) => {
	 var applist=[{appnev: 'elem listázása', location: 'lista'}]
	 if (req.session.user) {
	 			applist.push( {appnev: 'keresés, új elem', location: 'szures'} )
	 			applist.push( {appnev: 'kijelentkezés', location: '/logout'} )
	  } else
	     	applist.push( {appnev: 'bejelentkezés', location: '/login'}	)
	 res.render( 'index' , { al: applist } )
})
app.get('/css', (req, res) => {
	let css = "css/alap.css"
	res.sendfile( css )
})
app.get('/szures', (req, res) => {
	if (req.session.user) res.render('szures', {sess: req.session})
	else res.redirect('login')
})
app.get('/szures.js', (req, res) => {
	let js = "front_end/szures.js"
	res.sendfile( js )
})
app.post('/szures_send', (req, res) => {
	let connection = mysql.createConnection( connsetup )
	connection.connect()
	if (felvesz=req.body.felvesz) {
				let q=`INSERT INTO dolgok (nevuk) VALUES ('${felvesz}')`
				connection.query(q,	(err, rows, fields) => { if (err) throw err	}	)
	}
	let q=`SELECT nevuk FROM dolgok WHERE nevuk like '${req.body.szur}%' ORDER BY nevuk LIMIT 0 , 15`
	connection.query( q ,	(err, rows, fields) => {
						if (err) throw err
						res.send( JSON.stringify(rows) )
				}
	)
	connection.end()
})
app.get('/login', (req, res) => {
			if (req.session.user) res.redirect('/')
			else res.render('loginform')
})
app.post('/login', function(req, res) {
				if (req.body.email=='sd' && req.body.password=='asd') {
							req.session.user = req.body.email
				}
				res.redirect('/szures')
})
app.get('/lista', (req, res) => {
	let connection = mysql.createConnection( connsetup )
  connection.connect()
	let q=`SELECT * FROM dolgok`
	connection.query( q ,	(err, rows, fields) => {
						if (err) throw err
						res.render('lista', {rows: rows} )
				}
	)
	connection.end()
})
app.get('/logout', (req, res) => {
			req.session.reset()
			res.redirect('/')
})
app.listen(3000, () => {
	 console.log(`\nRemek!\nBrowserbe beírni: http://localhost:3000\n`)
})
