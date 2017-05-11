import Vapor

//membuat droplet
let drop = Droplet()

drop.get("/") { request in
return "Hello World!"
}

drop.get("/name",":name") { request in
  if let name = request.parameters["name"]?.string {
    return "Hello \(name)"
  }
  return "Error Ritreving parameters."
}


drop.get("/view") { request in
    return try drop.view.make("view.html")
}

drop.run()
