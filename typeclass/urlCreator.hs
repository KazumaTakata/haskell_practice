


data ApiPath = ApiPath String String String


apiBuilder :: ApiPath -> String

apiBuilder (ApiPath s1 s2 s3) = s1 ++ s2 ++ s3


class SampleClass a where
    sample :: a -> String


instance SampleClass ApiPath where
    sample (ApiPath n n2 n3) = "sample"
