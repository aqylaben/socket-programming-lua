socket = require('socket');

server = socket.bind(80);

print("Echo server running on port 80");

while true do
	client,ip = socket.accept(server);
	length, data = socket.read(client);
	
	while (length > 0) do
		socket.write(client, data);
		
		length, data = socket.read(client);
	end
	
	socket.close(client);
end