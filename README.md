Synchronous-Network-Connection-iOS:key,value-pairs
===================================================

Implements the Synchronous communication between the server and the app.

The app send the key-value pairs to the server and recieves the response from the server.

Functionality:

1. Sends the key, value pairs to the server.
2. Receives the response from the server.

You can use the following to make this look pretty:

1. MBProgressHUD: Displays a translucent HUD with an indicator and/or labels while work is being done in a background thread. 
    Link: https://github.com/jdg/MBProgressHUD
    
2. Reachability: It sends the status of network connection. Before sending the request to the server you can check the server connection.
    Link: https://github.com/tonymillion/Reachability
