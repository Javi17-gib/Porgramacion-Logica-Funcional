--Promedio de 4 números
promedio :: Float -> Float -> Float -> Float -> Float
promedio a b c d = (a + b + c + d) / 4

--Sumar monedas
sumarMonedas :: Int -> Int -> Int -> Int -> Float
sumarMonedas a b c d = fromIntegral (a*1 + b*5 + c*10 + d*50)

--Volumen de una esfera
volumenEsfera :: Float -> Float
volumenEsfera r = (4/3) * pi * r^3

--Verificar si a, b y c son iguales
sonIguales :: Eq a => a -> a -> a -> Bool
sonIguales a b c = a == b && b == c

--Verificar si a, b y c son diferentes
sonDiferentes :: Eq a => a -> a -> a -> Bool
sonDiferentes a b c = a /= b && b /= c && a /= c

--Precio final con descuento
precioFinal :: Float -> Float
precioFinal total
    | total > 1000 = total * 0.6
    | total > 500  = total * 0.7
    | total > 100  = total * 0.9
    | otherwise    = total

--Última cifra de un número
ultimaCifra :: Int -> Int
ultimaCifra n = n `mod` 10

-- Menú principal
menu :: IO ()
menu = do
    putStrLn "\n--- MENÚ ---"
    putStrLn "1. Promedio de 4 números"
    putStrLn "2. Sumar monedas"
    putStrLn "3. Volumen de una esfera"
    putStrLn "4. Verificar si 3 números son iguales"
    putStrLn "5. Verificar si 3 números son diferentes"
    putStrLn "6. Precio final con descuento"
    putStrLn "7. Última cifra de un número"
    putStrLn "0. Salir"
    putStr "Seleccione una opción: "
    hFlush stdout
    opcion <- getLine
    case opcion of
        "1" -> do
            putStrLn "Ingrese 4 números separados por espacio:"
            nums <- fmap (map read . words) getLine :: IO [Float]
            putStrLn $ "Promedio: " ++ show (promedio (nums!!0) (nums!!1) (nums!!2) (nums!!3))
            menu
        "2" -> do
            putStrLn "Ingrese cantidad de monedas a $1, b $5, c $10, d $50 separados por espacio:"
            nums <- fmap (map read . words) getLine :: IO [Int]
            printf "Total: $%.2f\n" (sumarMonedas (nums!!0) (nums!!1) (nums!!2) (nums!!3))
            menu
        "3" -> do
            putStr "Ingrese el radio de la esfera: "
            hFlush stdout
            r <- fmap read getLine :: IO Float
            printf "Volumen de la esfera: %.2f\n" (volumenEsfera r)
            menu
        "4" -> do
            putStrLn "Ingrese 3 números separados por espacio:"
            nums <- fmap (map read . words) getLine :: IO [Int]
            print (sonIguales (nums!!0) (nums!!1) (nums!!2))
            menu
        "5" -> do
            putStrLn "Ingrese 3 números separados por espacio:"
            nums <- fmap (map read . words) getLine :: IO [Int]
            print (sonDiferentes (nums!!0) (nums!!1) (nums!!2))
            menu
        "6" -> do
            putStr "Ingrese el total de la compra: "
            hFlush stdout
            total <- fmap read getLine :: IO Float
            printf "Precio final con descuento: $%.2f\n" (precioFinal total)
            menu
        "7" -> do
            putStr "Ingrese un número: "
            hFlush stdout
            n <- fmap read getLine :: IO Int
            putStrLn $ "Última cifra: " ++ show (ultimaCifra n)
            menu
        "0" -> putStrLn "BYEEEEE"
        _   -> do
            putStrLn "Opción inválida"
            menu

-- Función principal
main :: IO ()
main = menu
