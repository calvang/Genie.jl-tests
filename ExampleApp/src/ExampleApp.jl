module ExampleApp

using Logging, LoggingExtras

function main()
  Base.eval(Main, :(const UserApp = ExampleApp))

  include(joinpath("..", "genie.jl"))

  Base.eval(Main, :(const Genie = ExampleApp.Genie))
  Base.eval(Main, :(using Genie))
end; main()

end
