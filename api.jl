using Genie, Genie.Router
using Genie.Renderer, Genie.Renderer.Html

route("/") do
    "Home"
end

route("/api/hello.txt") do
    respond("Hello, welcome to genie!", :text)
end

route("/api/hello.html") do
    html("Hello World")
end

# route("/api/hello.json") do
#     json("Hello World")
# end

up()
