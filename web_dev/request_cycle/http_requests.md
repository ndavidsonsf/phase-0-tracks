1. What are commong HTTP status codes?
	- 200 OK: The request has succeed.  The information returned with the response is dependent on the method used in the request.
	- 300 Multiple Choices: The requested resource has multiple choices and can not be resolved to one.
	- 301 Moved Permanently: The requested resource has been assigned a new permanent URL and any future requests should use that one.
	- 302 Found: Requested resource temporarily resides at a different URL.  Since it could move back or move again you should continued to used the Requested-URL
	- 304 Not Modified: If the client has performed a conditional GET request and access is allowed, but the document has not been modified, the server SHOULD respond with this status code.
	- 307 Bad Redirect: The requested resource resides temporarily under a different URI. Since the redirection MAY be altered on occasion, the client SHOULD continue to use the Request-URI for future requests. This response is only cacheable if indicated by a Cache-Control or Expires header field.
	- 400 Bad Request: The request could not be understood by the server due to malformed syntax. The client SHOULD NOT repeat the request without modifications.
	- 401 Unauthorized: The request requires user authentication. The response MUST include a WWW-Authenticate header field containing a challenge applicable to the requested resource.
	- 403 Forbidden: The server understood the request, but is refusing to fulfill it. Authorization will not help and the request SHOULD NOT be repeated.
	- 404 Not Found: The server has not found anything matching the Request-URI. No indication is given of whether the condition is temporary or permanent.
	- 410 Gone: The request is no longer available at the server and no forwarding address can be found.
	- 500 Internal Server Error: The server encountered an unexpected condition which prevented it from fulfilling the request.
	- 501 Not Implemented: The server does not support the functionality required to fulfill the request. 
	- 503 Service Unavailable: Your web server is unable to handle your HTTP request at the time.
		server crash
		server maintenance
		server overload
		server maliciously being attacked
		a website has used up its allotted bandwidth
		server may be forbidden to return the requested document
	- 550 Permission Denied: The server is stating the account you have currently logged in as does not have permission to perform the action you are attempting. You may be trying to upload to the wrong directory or trying to delete a file.

2.	GET - Requests data from a specified source (can be cached and saved in history)
	POST - Submits data to be processed by a specified source (are not cached or saved/bookmarked)

	GET is less secure than POST, so when security is a concern, for instance, when sending passwords.

3.	A cookie is a small piece of data sent from a website and stores in the users browser while they are using the page.  They are used to remember arbitrary pieces of information, like mouse clicks or paths.
Cookies are HTTP headers, like GET and POST, only they last through the duration of the session instead of just in the initial request.