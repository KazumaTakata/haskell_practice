
successfulRequest :: Maybe Int
successfulRequest = Just 6

failedRequest :: Maybe Int
failedRequest = Nothing

-- instance Functor Maybe where
--     fmap func (Just n) = Just (func n)
--     fmap func Nothing  = Nothing
