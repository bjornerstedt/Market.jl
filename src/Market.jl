module Market
using DataFrames

export Demand, LogitDemand, NestedLogitDemand
export estimate

abstract type Demand end
abstract type LogitDemand2 <: Demand end

struct LogitDemand <: Demand
   foo::String
   bar::Int
end

struct NestedLogitDemand <: Demand
   foo::String
   bar::Int
end

function estimate(x::LogitDemand)
   foo = x.foo
   "foo: $(x.foo)"
end


function estimate(x::NestedLogitDemand)
   "foo: $(x.foo)"
end

end # module
