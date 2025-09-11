--Funciones
absoluto :: Integer -> Integer
absoluto x = abs x

menor_Entero :: Double -> Integer
menor_Entero x = ceiling x

sucesor :: Integer -> Integer
sucesor x = succ x

minimo :: Int -> Int -> Int
minimo x y = min x y

maximo :: Int -> Int -> Int
maximo x y = max x y

division :: Int -> Int -> Int
division x y = div x y

par :: Int -> Bool
par x = even x

mayor :: Double -> Integer
mayor x = floor x

mcd :: Int -> Int -> Int
mcd x y = gcd x y

negacion :: Bool -> Bool
negacion x = not x

signo :: Int -> Int
signo x = signum x

segundo :: (Int, Int) -> Int
segundo x = snd x

modulo :: Int -> Int -> Int
modulo x y = mod x y


menu :: IO()
menu = do
    putStrLn "-----MENU-----"
    putStrLn "1) Valor Absoluto"
    putStrLn "2) Menor Entero "
    putStrLn "3) sucesor "
    putStrLn "4) Minimo "
    putStrLn "5) Maximo "
    putStrLn "6) Division Entera "
    putStrLn "7) Verificar Par "
    putStrLn "8) Numero Mayor Entero "
    putStrLn "9) Maximo Comun Divisor "
    putStrLn "10) Negación booleana "
    putStrLn "11) Devolver Numeros Negativos y Positivos "
    putStrLn "12) Retornar el Segundo Elemento "
    putStrLn "13) Modulo "
    putStrLn "14) Salir ❌"
    opcion <- getLine

    case opcion of
        "1"-> do
            putStrLn "Introduce un numero: "
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El valor Absoluto es: " ++ show (absoluto x))
            menu
        "2"-> do
            putStrLn "Introduce un numero: "
            n1 <- getLine
            let x = read n1 :: Double
            putStrLn("El valor Menor es: " ++ show (menor_Entero x))
            menu
        "3"-> do
            putStrLn "Introduce un numero: "
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El valor sucesor es: " ++ show (sucesor x))
            menu
        "4"-> do
            putStrLn "Introduce el primer numero: "
            n1 <- getLine
            putStrLn "Introduce el segundo numero: "
            n2 <- getLine
            let x = read n1 :: Int
            let y = read n2 :: Int
            putStrLn("El valor minimo es: " ++ show (minimo x y ))
            menu 
        "5"-> do
            putStrLn "Introduce el primer numero: "
            n1 <- getLine
            putStrLn "Introduce el segundo numero: "
            n2 <- getLine
            let x = read n1 :: Int
            let y = read n2 :: Int
            putStrLn("El valor Maximo es: " ++ show (maximo x y ))
            menu 
        "6"-> do
            putStrLn "Introduce el primer numero: "
            n1 <- getLine
            putStrLn "Introduce el segundo numero: "
            n2 <- getLine
            let x = read n1 :: Int
            let y = read n2 :: Int
            putStrLn("El resultado de la divicion es: " ++ show (division x y ))
            menu
        "7"-> do
            putStrLn "Introduce un numero: "
            n1 <- getLine
            let x = read n1 :: Int
            putStrLn("El valor es par?: " ++ show (par x))
            menu
        "8"-> do
            putStrLn "Introduce un numero: "
            n1 <- getLine
            let x = read n1 :: Double
            putStrLn("El valor mayor es: " ++ show (mayor x))
            menu
        "9"-> do
            putStrLn "Introduce el primer numero: "
            n1 <- getLine
            putStrLn "Introduce el segundo numero: "
            n2 <- getLine
            let x = read n1 :: Int
            let y = read n2 :: Int
            putStrLn("El resultado de la MCD es: " ++ show (mcd x y ))
            menu    
        "10" -> do
            putStrLn "Introduce True o False:"
            n1 <- getLine
            let x = read n1 :: Bool
            putStrLn ("La negación es: " ++ show (negacion x))
            menu
        "11" -> do
            putStrLn "Introduce un número:"
            n1 <- getLine
            let x = read n1 :: Int
            putStrLn ("El signum es: " ++ show (signo x))
            menu
        "12" -> do
            putStrLn "Introduce una tupla (ejemplo: (5,10)):"
            n1 <- getLine
            let x = read n1 :: (Int, Int)
            putStrLn ("El segundo elemento es: " ++ show (segundo x))
            menu
        "13" -> do
            putStrLn "Introduce el dividendo:"
            a <- getLine
            putStrLn "Introduce el divisor:"
            b <- getLine
            let x = read a :: Int
                y = read b :: Int
            putStrLn ("El módulo es: " ++ show (modulo x y))
            menu
        "14" -> do
            putStrLn "ADIOS 👋"
main :: IO()
main = menu