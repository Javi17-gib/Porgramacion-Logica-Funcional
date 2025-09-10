sumar :: Integer -> Integer ->Integer
sumar x y= x+y

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial(n-1)

menu :: IO()
menu = do 
    putStrLn(" === MENU === ")
    putStrLn("Que desear hacer?")
    putStrLn("1) Factorial 💻")
    putStrLn("2) Salir ❌")
    opcion <- getLine

    case opcion of
        "1"-> do
            putStrLn("Introduce el numero: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es: " ++ show(factorial x))
            menu
        "2" -> do
            putStrLn("ADIOS")
        _ -> do
            putStrLn("Opcion no valida")
            menu
--public static coid  main
main :: IO()
main = menu