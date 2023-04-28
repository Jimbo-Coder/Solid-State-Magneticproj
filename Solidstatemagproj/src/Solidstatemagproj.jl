module Solidstatemagproj
using NLsolve, Interva

greet() = print("Hello World!")

function main()
   theta  =0; 
   phi= 0;
   function f!(F, x)
      F[1] = (1/2)*sin(2*(phi-theta)) + x*sin(phi)
   end
   inital_x = 0.0
   a = nlsolve(f!, initial_x)'
   print(a)
end

end # module Solidstatemagproj
