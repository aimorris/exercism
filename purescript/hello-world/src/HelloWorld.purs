module HelloWorld where
import Data.Maybe (Maybe (..))
import Data.Semigroup ((<>))

helloWorld :: Maybe String -> String
helloWorld (Just x) = "Hello, " <> x <> "!"
helloWorld Nothing = "Hello, World!"
