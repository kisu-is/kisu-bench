let server1 = { name = "webserver-prod", ip = "0.0.0.0", enable = true } in
let server2 = { name = "dbserver-prod", ip = "0.0.0.0", enable = true } in
let server3 = { name = "webserver-dev", ip = "0.0.0.0", enable = true } in
let server4 = { name = "dbserver-dev", ip = "0.0.0.0", enable = false } in

let display = fun server =>
  if server.enable then
    "#{server.name}: enabled ip #{server.ip}"
  else
    "#{server.name}: disabled"
in

let result1 = display server1 in
let result2 = display server2 in
let result3 = display server3 in
let result4 = display server4 in

[ result1, result2, result3, result4 ]
