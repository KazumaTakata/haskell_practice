

-- cup f10z = \_ -> f10z

cup f10z = \message -> message f10z
getOz aCup = aCup (\f10z -> f10z)


drink aCup ozDrank = cup (f10z - ozDrank) where f10z = getOz aCup
