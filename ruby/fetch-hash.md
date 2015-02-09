Use fetch instead of simple getting hash elements:

a.fetch(:b) instead of a[:b], so you'll get more sensible error "KeyError: key
not found:" if hash has no element you are expecting to. In case a[:b] you'll
get nil.
