socket = require( 'socket' );

sock = socket.connect( "localhost", 80 );

socket.write( sock, "GET / HTTP/1.0\n\n" );

  repeat
     len,line = socket.read( sock )
     print( line );
  until len <= 0

socket.close( sock );