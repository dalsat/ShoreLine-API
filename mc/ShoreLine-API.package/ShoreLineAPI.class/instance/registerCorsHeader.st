initialization
registerCorsHeader
	"Setting CORS header"
	
	teapot after: '*' -> [:req :resp |
		resp headers at: 'Access-Control-Allow-Origin' put: '*' ]