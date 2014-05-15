Pry::Commands.block_command "zs", "start logging method calls" do
  File.open("pry_method.log", "w"){|f| f.write("")}
end

Pry::Commands.block_command "z", "log method call" do
  m = target.eval("method(__method__)")
  args = m.parameters.map{|args| [args[1], target.eval(args[1].to_s)]}
  method_source = (m.source_location + [m.name]).join(":") 
  arg_names = args.map{|args| args[0]}.join(",")
  arg_values = args.map{|args| args[1]}.join(",")
  method_info = "#{method_source}(#{arg_names})(#{arg_values})\n"
  File.open("pry_method.log", "a"){|f| f.write(method_info)}
  output.puts method_info
end
