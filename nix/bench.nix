let
  server1 = { name = "webserver-prod"; ip = "0.0.0.0"; enable = true; };
  server2 = { name = "dbserver-prod"; ip = "0.0.0.0"; enable = true; };
  server3 = { name = "webserver-dev"; ip = "0.0.0.0"; enable = true; };
  server4 = { name = "dbserver-dev"; ip = "0.0.0.0"; enable = false; };

  display = server:
    if server.enable
    then "${server.name}: enabled ip ${server.ip}"
    else "${server.name}: disabled";

  result1 = display server1;
  result2 = display server2;
  result3 = display server3;
  result4 = display server4;
in
[ result1 result2 result3 result4 ]
