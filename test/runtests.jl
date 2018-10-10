using Test
using Market

x = LogitDemand("Hej", 3)
y = NestedLogitDemand("Hej", 3)

estimate(x)

estimate(y)
