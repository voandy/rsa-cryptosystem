import RSA
import System.IO

main = do
    handle <- openFile "id_rsa.pub" ReadMode

    arg <- hGetLine handle
    let e = read arg
    arg <- hGetLine handle
    let n = read arg
    hClose handle

    putStr "Enter message to encrypt: \n"
    arg <- getLine
    let b = read arg

    let c = modExp b e n
    putStr "The encrypted message is: \n"
    putStr $ (show c) ++ "\n"