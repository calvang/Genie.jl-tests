using Genie.Router, Genie.Renderer, Genie.Renderer.Html

route("/") do
  serve_static_file("welcome.html")
end

route("/error500") do
  error_500("Something went wrong")
end

route("/error404") do
    error_404("the page you want")
end

route("/api/hello.txt") do
    respond("Hello, welcome to genie!", :text)
end

route("/api/hello.html") do
    html("Hello World")
end
