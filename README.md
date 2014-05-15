pry-tracer
==========

Trace method calls within Pry

This is a plugin for Pry. Use it together with a pry debbuger. Install it with
  
    gem install pry pry-debugger
    gem install pry-tracer
  
Or add it to your Gemfile

    gem 'pry'
    gem 'pry-debbuger'
    gem 'pry-tracer'
  
To start debugging in your code, add the lines

    require 'pry'
    binding.pry
  
Start a new method call trace with `zs`. This creates or overrides an empty file in your current 
working directory called `pry_method.log`.
  
Then step into whatever method you are interested in with `s` and press `z` to capture the method 
and its arguments in the file `pry_method.log`.
