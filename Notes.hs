-- | Pertemuan 1

--load file to ghci
-- ghci <filename> 

--reload file setelah perubahan pada file
-- :r

--keluar dari ghci
-- :q 

--bersihkan terminal
-- tekan tombol ctrl+l

--mencari tau type function
-- :t <function>
-- ghci> :t (+)
-- (+) :: Num a => a -> a -> a

-- ghci> 3 + 2
-- 5
-- ghci> (+) 3 2
-- 5

-- ghci> a = 1 + 2
-- ghci> a
-- 3

-- ghci> let x = 3 + 4
-- ghci> x
-- 7

--List
--[1,2,3,4]

--tuple
--(1,"emurgo",'E', True)

--character menggunakan tanda '
--maybe untuk error catching

--convert character menjadi uppercase
--import Data.Char(toUpper)
-- ghci> Data.Char.toUpper 'x'
-- 'X'

--casting untuk convert variable type ke type lain
--gunakan fromIntegral
-- ghci> (2.3 :: Double) * fromIntegral (5 :: Int)
-- 11.5

--if then else
--setiap if harus punya else, tidak bisa berdiri sendiri
-- ghci> (if 2 == 3 then 5 else 6) + 1
-- 7

--Penulisan signature
-- <namafungsi> :: <type data> -> <type data> -> <type data
-- 2 type data di depan adalah argumen
-- type data paling terakhir akan menjadi output
-- jumlahkan :: Int -> Int -> Int -- signature

-- fungsi jumlahkan ini akan menerima 2 argumen; x dan y
-- dengan outputnya argumen x ditambahkan argumen y
-- jumlahkan x y = x + y -- penerapan functionnya

--saat dijalankan bisa seperti dibawah
-- <namafungsi> <arg1> <arg2>
-- jumlahkan 3 5
-- 8

-- kalikan :: Int -> Int -> Int 
-- kalikan a b = a * b 
-- >>> kalikan 2 5
-- 10

--saat tidak didefinisikan signature, haskell akan otomatis mendefinisikan
--dibawah ini function modulus tidak di definisikan signaturenya.
-- modulus = mod 3 2
-- >>> modulus
-- 1

-- a :: Float 
-- a = 4.5 

-- b :: Int 
-- b = 10 

--b perlu di convert ke float untuk bisa proses operasi di bawah
-- c :: Float 
-- c = a + (fromIntegral b)
-- >>> c
-- 14.5

-- tidakbenar :: Bool 
-- tidakbenar = False 

-- benar :: Bool 
-- benar = not tidakbenar 

-- cekbenar :: Bool 
-- cekbenar = not tidakbenar && benar 
-- >>> cekbenar
-- True

--untuk pembagian harus menggunakan `div`
-- div' a b = a `div` b 
-- >>> div' 10 3
-- 3

--Condition
-- myCharError :: Char -> String 
-- myCharError 'h' = "string"

-- myCond a = if a <= 2 
--            then a + 2 
--            else 
--                a 

-- ghci> myCond 2
-- 4
-- ghci> myCond 2
-- 4

-- TUGAS 1
-- 1. berapa nilai x * x 
-- ghci> let x = 4
-- ghci> let y = x + 3 
-- jawaban 
-- 4 * 4 = 16

-- 2. perbaiki signature 
-- kurangi :: Int -> Int -> Int 
-- kurangi g h = g - x 
-- jawaban 
-- kurangi g h = g - h 

-- 3. perbaiki signature 
-- multiplication :: Int -> Int 
-- multiplication = 3 * 2 
-- jawaban 
-- multiplication :: Int 

-- 4. perbaiki function agar bisa berjalan
-- bagidua :: Int -> Int -> Int 
-- bagidua x = x / 2
-- jawaban 
-- bagidua :: Int -> Int 
-- bagidua x = x `div` 2 

-- 5. sekarang gmn caranya jika angka 2 dan 6 dari code diatas =, ingin ganti dengan variable yg dapat nilai dari beberapa argument
-- myNestedCond :: Int -> Int 
-- myNestedCond a = if a <=2 
--                  then a + 2 
--                  else 
--                      if a <= 6 
--                      then a 
--                      else 
--                          a - 2
-- jawaban
-- myNestedCond :: Int -> Int -> Int -> Int 
-- myNestedCond a c d = if a <=c 
--                  then a + c 
--                  else 
--                      if a <= d 
--                      then a 
--                      else 
--                          a - c

-- 6. sekarang gmn jika kita ingin keluarannya adalah kata-kata misalnya lebih kecil dari 2 akan keluar tulisan "lebih kecil dari 2" jika 6 akan keluar kata kata "lebih kecil dari 6" dan jika lebih besar dari 6 akan keluar kata2 "lebih besar dari 6"
-- myNestedCond :: Int -> Int 
-- myNestedCond a = if a <=2 
--                  then a + 2 
--                  else 
--                      if a <= 6 
--                      then a 
--                      else 
--                          a - 2
-- jawaban 
-- myNestedCond :: Int -> String  
-- myNestedCond a = if a <=2 
--                  then "lebih kecil dari 2"
--                  else 
--                      if a <= 6 
--                      then "lebih kecil dari 6"
--                      else 
--                         "lebih besar dari 6"

-- | Pertemuan 2 
-- cekNilai :: Int -> String 
-- cekNilai n = if n < 0 then "kurang dari nol" else "lebih dari nol"
-- >>> cekNilai 2
-- "lebih dari nol"
-- >>> cekNilai (-2)
-- "kurang dari nol"

-- cekNilai1 :: Int -> String 
-- cekNilai1 n 
--   | n < 0 = "Kurang dari nol"
--   | otherwise = "lebih dari nol" 
-- >>> cekNilai1 1
-- >>> cekNilai1 (-1)
-- "lebih dari nol"
-- "Kurang dari nol"

-- hailstone :: Integer -> Integer 
-- hailstone n 
--         | n `mod` 2 == 0 = n `div` 2 
--         | otherwise = 3 * n + 1 
-- >>> hailstone 10
-- 5
-- >>> hailstone 3
-- 10

-- caseReplaceIf n = 
--     case (n < 0) of 
--         True -> "kurang dari nol"
--         False -> "lebih dari nol" 
-- >>> caseReplaceIf 2
-- >>> caseReplaceIf (-1)
-- "lebih dari nol"
-- "kurang dari nol"

-- myPatMatching :: Int -> Int -> Int 
-- myPatMatching 2 3 = 2 + 3
-- myPatMatching 2 n = 2 + n 
-- myPatMatching n 0 = 2 + 10
-- >>> myPatMatching 2 3
-- 5
-- >>> myPatMatching 2 0
-- 2
-- >>> myPatMatching 4 0
-- 12
-- myPatMatching' :: Int -> Int -> Int 
-- myPatMatching' _ n = n
-- >>> myPatMatching' 20 100
-- >>> myPatMatching' 2 100
-- 100
-- 100

-- contohPM :: [Int] -> [Int] 
-- contohPM [] = [] 
-- contohPM x = if head x == 2 then tail x else x 
-- >>> contohPM [1,2,3,4]
-- >>> contohPM [2,3,4]
-- [1,2,3,4]
-- [3,4]

-- factorial :: Integer -> Integer 
-- factorial 0 = 1 
-- factorial n = n * factorial (n-1) 
-- >>> factorial 5
-- 120

-- isEmpty :: String -> Bool 
-- isEmpty "" = True 
-- isEmpty theString = False 
-- >>> isEmpty ""
-- True
-- >>> isEmpty "wew"
-- False

-- myNetWorth :: (Int, String)
-- myNetWorth = (20, "Rupees") 
-- >>> myNetWorth
-- (20,"Rupees")

-- sumPair :: (Int, Int) -> Int 
-- sumPair (a,b) = a + b 
-- >>> sumPair (2,4)
-- 6

-- sum3Arg :: Int -> Int -> Int -> Int 
-- sum3Arg x y z = x + y + z 
-- >>> sum3Arg 2 3 4
-- 9

-- result :: Int 
-- result = sum3Arg 2 3 4 
-- >>> result
-- 9

-- oneToTen :: [Integer] 
-- oneToTen = [1..10]
-- >>> oneToTen
-- [1,2,3,4,5,6,7,8,9,10]

-- evenBetweenOneAndTen :: [Integer]
-- evenBetweenOneAndTen = [2,4..100]
-- >>> evenBetweenOneAndTen
-- [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,72,74,76,78,80,82,84,86,88,90,92,94,96,98,100]

-- theForceIs :: [Char]
-- theForceIs = ['S','T','R','O','N','G']
-- >>> theForceIs
-- "STRONG"

-- theForceIs' :: String 
-- theForceIs' = "Strong"
-- >>> theForceIs'
-- "Strong"

--pengecekan list ada isi atau tidak
-- >>> null []
-- True

-- >>> null [1,2,3]
-- False

--menambahkan data ke list di depan
-- >>> 4 : [1,3]
-- [4,1,3]

--menambahkan data ke list di belakang 
-- >>> [1,3] ++ [2]
-- [1,3,2]

--menambahkan lebih dari 1 data ke list di depan
-- >>> 1: 2: []
-- [1,2]

-- menghitung panjang list 
-- >>> length [1,2,3]
-- 3

-- mengambil data dari list 
-- >>> take 2 [1,2,3,4,5]
-- [1,2]

-- >>> take 6 [1,2,3,4]
-- [1,2,3,4]

--membalik elemen dari list
-- >>> reverse [1,2,3,4]
-- [4,3,2,1]

--mengambil head dari list 
-- >>> head [1,2,3,4]
-- 1

--mengambil semua data kecil data terakhir di list
-- >>> init [1,2,3,4]
-- [1,2,3]

--mengambil elemen dari list 
-- >>> [11,12,13,14] !! 3
-- 14

--menghapus sejumlah data dari list 
-- >>> drop 4 [1,2,3,4,5,6]
-- [5,6]

--mengambil data terakhir dari list 
-- >>> last [1,23,4,2,6,4]
-- 4

--mengambil maximum dan minimum dari list 
-- >>> maximum [1,23,4,2,6,4]
-- 23

-- >>> minimum [1,23,4,2,6,4]
-- 1

--menjumlahkan semua data di list
-- >>> sum [1,2,4]
-- 7

--mengkalikan semua data di list 
-- >>> product [1,2,5]
-- 10

-- TUGAS 2

-- 1. Buat sebuah function yg akan menambahkan setiap inputan dari user ke dalam list, didepan list yg ada (listny bebas), contoh listnya adalah [1,2,3]
--    2 argument, argumen 1 = list, argument 2 bilangan ditambahkan ke list 
-- task1 [1,2,3] 10 = [10,1,2,3]
-- jawaban 
-- task1 :: [Int] -> Int -> [Int]
-- task1 x y = y : x 
-- >>> task1 [1,2,3] 10
-- [10,1,2,3]

--2. Buat sebuah function yg akan menambahkan setiap inputan dari user kedalam list dibelakang list yg ada
-- task2 [1,2,3] 20 = [1,2,3,20]
-- jawaban 
-- task2 :: [Int] -> Int -> [Int] 
-- task2 x y = x ++ [y]
-- >>> task2 [1,2,3] 20
-- [1,2,3,20]

--3. Buat function yg mengambil 1 angka didepan sebuah list 
-- task3 [1,2,3] = 1
-- jawaban 
-- task3 :: [Int] -> Int 
-- task3 x = head x 
-- >>> task3 [1,2,3]
-- 1

--4. Buat sebuah function yg menggunakan guards dan mengambil 5 elemen list yg diberikan dalam argument,
-- hanya jika panjang list lebih dari 10, jika kurang dari 10 maka biarkan saja 
-- cekAmbil10 [1,2,3,4,5,6,7,8,9]
-- [1,2,3,4,5,6,7,8,9]
-- cekAmbil10 [1,2,3,4,5,6,7,8,9,10,11]
-- [1,2,3,4,5]
-- jawaban 
-- cekAmbil10 :: [Int] -> [Int]
-- cekAmbil10 x 
--     | length x > 10 = take 5 x 
--     | otherwise = x 
-- >>> cekAmbil10 [1,2,3,4,5,6,7,8,9]
-- [1,2,3,4,5,6,7,8,9]
-- >>> cekAmbil10 [1,2,3,4,5,6,7,8,9,10,11]
-- [1,2,3,4,5]

-- 5. Buat function seperti tugas nomor 4 tapi dengan logic pattern matching dan ada basic type jika list nya kosong [] maka keluarkan kosong
-- cekAmbil10PM [1,2,3,4,5,6,7,8,9,10,12]
-- [1,2,3,4,5]
-- cekAmbil10PM [1,2,3,4,5,6,7,8,9,10]
-- [1,2,3,4,5,6,7,8,9,10]
-- cekAmbil10PM []
-- [] 
-- jawaban 
-- cekAmbil10PM :: [Int] -> [Int]
-- cekAmbil10PM [] = []
-- cekAmbil10PM x 
--     | length x > 10 = take 5 x 
--     | otherwise = x
-- >>> cekAmbil10PM [1,2,3,4,5,6,7,8,9,10,12]
-- [1,2,3,4,5]
-- >>> cekAmbil10PM [1,2,3,4,5,6,7,8,9,10]
-- [1,2,3,4,5,6,7,8,9,10]
-- >>> cekAmbil10PM []
-- []

-- | Pertemuan 3

-- (h:hs) menyatakan sebuah list, dimana h adalah head dari list dan hs adalah tailnya
-- head' :: [Int] -> Int
-- head' (h:hs) = h
-- >>> head' [1,2,3,4]
-- 1

-- a ini maksudnya generalisir, any yg bisa apa saja
-- repeatxNtimes :: Int -> a -> [a] 
-- repeatxNtimes 0 x = [] 
-- repeatxNtimes n x = x : repeatxNtimes (n-1) x
-- >>> repeatxNtimes 0 100
-- []
-- >>> repeatxNtimes 0 23
-- []
-- >>> repeatxNtimes 2 10
-- [10,10]
-- >>> repeatxNtimes 3 'X'
-- "XXX"
-- >>> repeatxNtimes 3 "Wew"
-- ["Wew","Wew","Wew"]

-- allSquares :: [Int] -> [Int] 
-- allSquares [] = [] 
-- allSquares (x : xs) = x * x : allSquares xs 
-- >>> allSquares [1,2,3,4,5]
-- [1,4,9,16,25]

-- tambah10 :: [Int] -> [Int] 
-- tambah10 [] = [] 
-- tambah10 [x] = [x + 10]
-- tambah10 (x:xs) = (x + 10 ) : tambah10 xs
-- >>> tambah10 [1,2,3,4]
-- [11,12,13,14]

--memanggil fungsi lain

-- add35 :: Integer -> Integer 
-- add35 x = 3 + 5 + x 

-- callAdd35 :: Integer
-- callAdd35 = add35 10
-- >>> callAdd35
-- 18

-- add2arg :: Integer -> Integer -> Integer 
-- add2arg x y = x + y 

-- callAdd :: Integer 
-- callAdd = add2arg 4 3

-- mulThem :: Integer -> Integer -> Integer 
-- mulThem arg1 arg2 = arg1 * arg2 

-- callMoreThanOneFunction :: Integer 
-- callMoreThanOneFunction = let addit = callAdd 
--                           in mulThem addit 2

-- >>> callMoreThanOneFunction
-- 14

-- TOWER of HANOI Steps
-- hanoi :: Integer -> a -> a -> a -> [(a,a)]
-- hanoi 0 _ _ _ = [] 
-- hanoi n a b c = hanoi (n-1) a c b ++ [(a,b)] ++ hanoi (n-1) c b a
-- >>> hanoi 4 1 2 3
-- [(1,3),(1,2),(3,2),(1,3),(2,1),(2,3),(1,3),(1,2),(3,2),(3,1),(2,1),(3,2),(1,3),(1,2),(3,2)]

--penggunaan where 
-- jumlahWhere :: Int -> Int -> Int 
-- jumlahWhere a b = arg1 + arg2 
--     where 
--         arg1 = a + 1
--         arg2 = b - 2 
-- >>> jumlahWhere 2 4
-- 5

--FILTER 
-- >>> filter even [1,2,3,4,5,6]
-- [2,4,6]
-- >>> filter odd [1,2,3,4,5,6]
-- [1,3,5]
-- >>> filter (<3) [1,2,3,4,5,6]
-- [1,2]
-- >>> filter (>3) [1,2,3,4,5,6]
-- [4,5,6]

--QUICKSORT
-- qsort1 :: Ord a => [a] -> [a]
-- qsort1 [] = [] 
-- qsort1 (p:xs) = qsort1 lesser ++ [p] ++ qsort1 greater 
--    where 
--        lesser = filter (< p) xs 
--        greater = filter (>= p) xs 
-- >>> qsort1 [2,33,4,23,3,4]
-- [2,3,4,4,23,33]

--Penggabungan beberapa function
-- getHead :: [Int] -> Int 
-- getHead x = head x 

-- cekBenar :: Int -> Bool 
-- cekBenar x = if x >=0 then True else False 

-- ccVerified :: [Int] -> Bool 
-- ccVerified noCC = let saveddigit = getHead noCC 
--                       ambilvalue = 2 
--                       benarSalah = True 
--                   in cekBenar saveddigit 
-- >>> ccVerified [1,3,4,5,2,3]
-- True

-- TUGAS 3
-- Given, [4,5,5,6,7,3,7,5,8,6,8,9,9,8,5,5]
-- 1. drop the last digit from number, call this check digit 
-- checkdigit :: [Int] -> Int
-- checkdigit x = last x
-- >>> checkdigit [4,5,5,6,7,3,7,5,8,6,8,9,9,8,5,5]
-- 5
-- droplast :: [Int] -> [Int]
-- droplast x = init x 
-- >>> droplast [4,5,5,6,7,3,7,5,8,6,8,9,9,8,5,5]
-- [4,5,5,6,7,3,7,5,8,6,8,9,9,8,5]

-- 2. reverse the number 
-- reversenumber x = reverse x 
-- >>> reversenumber [4,5,5,6,7,3,7,5,8,6,8,9,9,8,5]
-- [5,8,9,9,8,6,8,5,7,3,7,6,5,5,4]

-- 3. multiply the digits in odd positions by 2

-- multiplyodds :: [Int] -> [Int] 
-- multiplyodds [] = []
-- multiplyodds [x]= [x*2]
-- multiplyodds (x:y:xs) = (2*x) : y : multiplyodds xs
-- >>> multiplyodds [5,8,9,9,8,6,8,5,7,3,7,6,5,5,4]
-- [10,8,18,9,16,6,16,5,14,3,14,6,10,5,8]

-- 4. substract 9 to all any result higher than 9 
-- subsby9allhigher9 :: [Int] -> [Int]
-- subsby9allhigher9 [] = []
-- subsby9allhigher9 (x:xs)
--              | x > 9 = (x - 9) : subsby9allhigher9 xs 
--              | otherwise = x : subsby9allhigher9 xs 
-- >>> subsby9allhigher9 [10,8,18,9,16,6,16,5,14,3,14,6,10,5,8]
-- [1,8,9,9,7,6,7,5,5,3,5,6,1,5,8]

-- 5. add all the numbers together
-- addall :: [Int] -> Int
-- addall x = sum x
-- >>> addall [1,8,9,9,7,6,7,5,5,3,5,6,1,5,8]
-- 85

-- 6. add the check digit to the sum

-- 7. check if the total sum can be divided by 10
-- verifNOcc :: [Int] -> Bool
-- verifNOcc x = let checkdigit = last x
--                   droplast = init x
--                   reverseafterdrop = reverse droplast 
--                   filteroddandmultby2 = multiplyodds reverseafterdrop
--                   subafter = subsby9allhigher9 filteroddandmultby2
--                   insertcheckdigitandsumall = sum ( checkdigit : subafter )
--                   divideby10 = insertcheckdigitandsumall `mod` 10
--                 in divideby10 == 0
-- >>> verifNOcc [4,5,5,6,7,3,7,5,8,6,8,9,9,8,5,5]
-- True

-- | Pertemuan 4
-- | Data types 

-- ghci> a = [1,2,3,4]
-- ghci> a
-- [1,2,3,4]
-- ghci> sum a
-- 10

--kita bisa membuat data type sendiri
-- data Color = Red 
--              | Black 
--              | Green 
--              | Blue 
--              | Pink 
--              | Yellow deriving Show 

-- lukesLightSaberColor :: Color 
-- lukesLightSaberColor = Green 
-- >>> lukesLightSaberColor
-- Green

-- listofColors :: [Color]
-- listofColors = [Red,Black] 
-- >>> listofColors
-- [Red,Black]

-- warnaLampuMerah :: Color -> Bool 
-- warnaLampuMerah Red = True 
-- warnaLampuMerah Green = True  
-- warnaLampuMerah Yellow = True  
-- warnaLampuMerah _ = False 
-- >>> warnaLampuMerah Blue
-- False
-- >>> warnaLampuMerah Red
-- True

--Color tadi bisa dimasukan menjadi tuple 
-- type Warna = (Color, String)
-- warnaKesukaan :: Color 
-- warnaKesukaan = Red 

-- warnaKesukaanSiapa :: Warna 
-- warnaKesukaanSiapa = (Red, "John")
-- >>> warnaKesukaanSiapa
-- (Red,"John")

-- tebakWarna :: Warna -> String 
-- tebakWarna (x,y) = "Pemilik warna " ++ show x ++ " adalah " ++ y 
-- >>> tebakWarna (Red, "Rudi")
-- "Pemilik warna Red adalah Rudi"

-- simpanNamaWarna :: Color -> String -> Warna 
-- simpanNamaWarna x1 x2 = (x1,x2)
-- >>> simpanNamaWarna Red "Udin"
-- (Red,"Udin")

-- data FailableDouble = Failure | OK Double deriving Show 

-- oops :: FailableDouble 
-- oops = Failure 
-- >>> oops 
-- Failure

-- notOops :: FailableDouble 
-- notOops = OK 3.4 
-- >>> notOops
-- OK 3.4

-- data CekDoublekah = BukanDouble | BenarDouble Double deriving Show 

-- safeDiv :: Double -> Double -> CekDoublekah 
-- safeDiv _ 0 = BukanDouble 
-- safeDiv x y = BenarDouble (x/y) 
-- >>> safeDiv 2 0
-- BukanDouble
-- >>> safeDiv 3 2
-- BenarDouble 1.5

-- failureToZero :: CekDoublekah -> Double 
-- failureToZero BukanDouble = 0 
-- failureToZero (BenarDouble d) = d 
-- >>> failureToZero BukanDouble
-- 0.0
-- >>> failureToZero (BenarDouble 4.4)
-- 4.4

-- cekNilai :: Double -> Double -> Double 
-- cekNilai x y = failureToZero (safeDiv x y) 
-- >>> cekNilai 1 2 
-- 0.5

-- sugarize code by replace bracket () with $ 
-- cekNilai' :: Double -> Double -> Double 
-- cekNilai'  x y = failureToZero $ safeDiv x y 
-- >>> cekNilai' 1 2
-- 0.5

-- data Color2 = Red | Black | Blue deriving Show 
-- data Person = Person String Int Color2 deriving Show

-- john :: Person 
-- john = Person "john" 10 Red 

-- getAge :: Person -> Int 
-- getAge (Person _ z _ ) = z 
-- >>> getAge john
-- 10

-- data Menu = Menu { menuname :: String, menuprice :: Int } deriving (Show)

-- addOrder :: String -> Int -> Int -> Menu 
-- addOrder namamenu jumlah hargasatuan = Menu {menuname = namamenu, menuprice = totalprice}
--                                        where totalprice = jumlah * hargasatuan

-- main :: IO() 
-- main = do 
--     putStrLn "Silahkan Masukan Pesanan ?"
--     namamenu <- getLine 
--     print namamenu 
--     putStrLn "\nJumlah yg ingin dibeli ?"
--     jmlmenu <- getLine 
--     putStrLn "\nHarga Satuan ?" 
--     hargasatuan <- getLine 
--     let pesanan = addOrder namamenu (read jmlmenu) (read hargasatuan)
--     putStrLn "\n====Pesanan anda adalah====\n"
--     print pesanan 
--     putStrLn "Selesai pemesanan ? (y/n)\n" 
--     selesai <- getLine 
--     if selesai == "y"
--         then putStrLn "===Pesanan diproses==="
--         else main 

-- | Pertemuan 5

-- tambahList :: [String] -> IO() 
-- tambahList orderLama = do 
--                         a <- getLine 
--                         let z = orderLama ++ [a] 
--                         print z

-- ghci> tambahList []   
-- wew
-- ["wew"]
-- ghci> tambahList ["Sabun"]
-- Sisir
-- ["Sabun","Sisir"]

-- data IntList = Empty | Cons Int IntList deriving Show 

-- intListProduct :: IntList -> Int 
-- intListProduct Empty = 1 
-- intListProduct (Cons head list) = head * intListProduct list 
-- >>> intListProduct (Cons 5 (Cons 2 (Cons 3 Empty)))
-- 30

-- cara biasa tanpa data type 
-- intListProductx :: [Int] -> Int 
-- intListProductx [] = 1
-- intListProductx (x:xs) = x * intListProductx xs
-- >>> intListProductx [5,2,3]
-- 30

---TREE DATA TYPE
-- data Tree = Leaf Int 
--             | Node Tree Int Tree
--             deriving Show 

-- dummyTree :: Tree 
-- dummyTree = Node (Leaf 2) 1 (Node (Leaf 4) 3 (Leaf 5)) 

-- findInTree :: Int -> Tree -> Bool 
-- findInTree i (Leaf j) = i == j 
-- findInTree i (Node left j right) = 
--          i == j
--     ||   findInTree i left 
--     ||   findInTree i right 

-- >>> findInTree 1 dummyTree
-- True
-- >>> findInTree 7 dummyTree
-- False

-- LOG PARSING CODE 
-- data MessageType = Info 
--                    | Warning 
--                    | Error Int 
--                    deriving (Show , Eq) 

-- type TimeStamp = Int 

-- data LogMessage = LogMessage MessageType TimeStamp String 
--                   | Unknown String 
--                   deriving (Show, Eq) 

--Gunakan Fungsi words untuk split kalimat ke dalam list word
-- ghci> words "halo saya rudi"
-- ["halo","saya","rudi"]

-- parseLog :: String -> LogMessage 
-- parseLog logContents = case (words logContents) of 
--     "I" : timeStamp : stringMessage -> 
--         LogMessage Info (read timeStamp) (unwords stringMessage) 
--     "W" : timeStamp : stringMessage -> 
--         LogMessage Warning (read timeStamp) (unwords stringMessage) 
--     "E" : errorCode : timeStamp : stringMessage -> 
--         let arg1 = Error (read errorCode)
--             arg2 = read timeStamp 
--             arg3 = unwords stringMessage 
--         in LogMessage arg1 arg2 arg3 
--     stringMessage -> 
--         Unknown (unwords stringMessage)
-- >>> parseLog "I 29 HDD capacity 10%"
-- LogMessage Info 29 "HDD capacity 10%"

-- LOG PARSING CODE 2 
-- data MessageType = Info
--                  | Warning
--                  | Error Int
--         deriving (Show, Eq)

-- type TimeStamp = Int

-- data LogMessage = LogMessage MessageType TimeStamp String
--                   | Unknown String
--                   deriving (Show, Eq)

-- data MessageTree = Leaf 
--                    |Node MessageTree LogMessage MessageTree
--                     deriving (Show, Eq)

-- parseLog :: String -> [LogMessage]
-- parseLog rawContents = map parseSingleLog (lines rawContents)

-- parseSingleLog :: String -> LogMessage
-- parseSingleLog str = case words str of
--      "I":timestamp:wordsInLog -> makeLog Info timestamp wordsInLog
--      "W":timestamp:wordsInLog -> makeLog Warning timestamp wordsInLog
--      "E":errorSeverity:timestamp:wordsInLog -> makeLog (Error (read errorSeverity)) timestamp wordsInLog
--      _ -> Unknown str 

-- makeLog :: MessageType -> String -> [String] -> LogMessage
-- makeLog msgType timestamp wordsIntLog = LogMessage msgType (read timestamp) (unwords wordsIntLog)

-- insert :: LogMessage -> MessageTree -> MessageTree 
-- insert (Unknown _) tree = tree
-- insert log@(LogMessage _ _ _) Leaf = Node Leaf log Leaf
-- insert log@(LogMessage _ timestamp _) (Node left logInsideNode@(LogMessage _ timestampTree _) right)
--    | timestamp < timestampTree = Node  (insert log left) logInsideNode right
--    | otherwise = Node left logInsideNode (insert log right)

-- build :: [LogMessage] -> MessageTree
-- build [] = Leaf
-- build (log:logs) = insert log (build logs)

-- inOrder:: MessageTree -> [LogMessage]
-- inOrder Leaf = []
-- inOrder (Node left root right) = (inOrder left) ++ [root] ++ (inOrder right)

-- sortedLogs :: [LogMessage] -> [LogMessage]
-- sortedLogs logs = inOrder (build logs)

-- whatWentWrong :: [LogMessage] -> [String]
-- whatWentWrong logs = whatWentWrongHelper (sortedLogs logs)

-- whatWentWrongHelper :: [LogMessage] -> [String]
-- whatWentWrongHelper logs = map getMEssageFromLog (filter isCriticalLog logs)

-- isCriticalLog :: LogMessage -> Bool
-- isCriticalLog (LogMessage (Error severity) _ _) = severity > 50
-- isCriticalLog _ = False

-- getMEssageFromLog :: LogMessage -> String
-- getMEssageFromLog (LogMessage _ _ msg) = msg
-- getMEssageFromLog (Unknown msg) = msg

-- main = do        
--       contents <- readFile "./S5-sample.log"
--       let parsedLog = parseLog contents
--       print (whatWentWrong parsedLog)
-- ghci> main
-- ["Way too many pickles","Bad pickle-flange interaction detected","Flange failed!"]

--fungsi lines akan menconvert string yang berdelimiter \n atau per line kedalam list
-- >>> lines "I 42 info\nW 89 warning \nE 100 12 error\nasdfasdfasfa we"
-- ["I 42 info","W 89 warning ","E 100 12 error","asdfasdfasfa we"]

-- >>> parseLog "I 42 info\nW 89 warning \nE 100 12 error\nasdfasdfasfa we"
-- LogMessage Info 42 "info W 89 warning E 100 12 error asdfasdfasfa we"

--gunakan map untuk mengaplikasi fungsi pada argumen1 dengan argumen2 yang adalah list 
-- >>> map (+10) [1,2,3,4]
-- [11,12,13,14]

-- | Pertemuan 6

-- Recursive patterns & Polymorphism
-- Memberi nama yg lain utk suatu fungsi dan generalisasi tipe2 data.

-- data IntList = Empty | Cons Int IntList deriving Show 

-- addOneToAll :: IntList -> IntList 
-- addOneToAll Empty = Empty 
-- addOneToAll (Cons x xs) = Cons (x+1) (addOneToAll xs) 

-- myIntList = Cons 2 (Cons (-3) (Cons 5 Empty))
-- -- >>> addOneToAll myIntList
-- -- Cons 3 (Cons (-2) (Cons 6 Empty))

-- -- >>> abs (-20)
-- -- 20
-- -- >>> abs (-1)
-- -- 1

-- absAll :: IntList -> IntList 
-- absAll Empty = Empty 
-- absAll (Cons x xs) = Cons (abs x) (absAll xs) 

-- -- >>> absAll myIntList
-- -- Cons 2 (Cons 3 (Cons 5 Empty))

-- squareAll :: IntList -> IntList 
-- squareAll Empty = Empty 
-- squareAll (Cons x xs) = Cons (x*x) (squareAll xs)

-- -- >>> squareAll myIntList
-- -- Cons 4 (Cons 9 (Cons 25 Empty))

-- -- Those have a common pattern
-- -- Can be generalize by seperate the calculation make it a function
-- -- and a general function that can call the function.

-- addOne x = x + 1
-- square x = x * x

-- --This is the general function ( a function that call function)
-- mapIntList :: (Int -> Int) -> IntList -> IntList 
-- mapIntList _ Empty = Empty 
-- mapIntList f (Cons x xs) = Cons (f x) (mapIntList f xs)

-- addOneToAllgeneralized xs = mapIntList addOne xs 
-- absAllgeneralized xs = mapIntList abs xs 
-- squareAllgeneralized xs = mapIntList addOne xs 

-- main = do 
--       print (addOneToAll myIntList)
--       print (absAll myIntList)
--       print (squareAll myIntList)

--       print (addOneToAllgeneralized myIntList)
--       print (absAllgeneralized myIntList)
--       print (squareAllgeneralized myIntList)

-- -- ghci> main
-- -- Cons 3 (Cons (-2) (Cons 6 Empty))
-- -- Cons 2 (Cons 3 (Cons 5 Empty))
-- -- Cons 4 (Cons 9 (Cons 25 Empty))
-- -- Cons 3 (Cons (-2) (Cons 6 Empty))
-- -- Cons 2 (Cons 3 (Cons 5 Empty))
-- -- Cons 3 (Cons (-2) (Cons 6 Empty))

-- -- >>> even 5
-- -- False
-- -- >>> even 4
-- -- True
-- -- >>> odd 5
-- -- True
-- -- >>> odd 4
-- -- False

-- keepOnlyPositive :: IntList -> IntList 
-- keepOnlyPositive Empty = Empty 
-- keepOnlyPositive (Cons x xs) 
--     | x > 0 = Cons x (keepOnlyPositive xs) 
--     | otherwise = keepOnlyPositive xs 

-- -- >>> keepOnlyPositive myIntList
-- -- Cons 2 (Cons 5 Empty)

-- keepOnlyEven :: IntList -> IntList 
-- keepOnlyEven Empty = Empty 
-- keepOnlyEven (Cons x xs) 
--     | even x = Cons x (keepOnlyEven xs) 
--     | otherwise = keepOnlyEven xs 

-- -- >>> keepOnlyEven myIntList
-- -- Cons 2 Empty

-- -- 2 fungsi di atas juga punya pattern yang sama
-- -- bisa di lakukan generalisasi seperti di bawah 

-- -- >>> filter odd [1,2,3,4,5,6,7]
-- -- [1,3,5,7]
-- -- >>> filter even [1,2,3,4,5,6,7]
-- -- [2,4,6]

-- -- penerapan polymorphysm utk data Intlist yang digunakan sebelumnya
-- -- t nya tidak di define tipe datanya, jadi bisa menggunakan bentuk type data apa saja 
-- data List t = E | C t (List t) deriving Show 

-- lst1 :: List Int 
-- lst1 = C 3 (C 5 (C 2 E))
-- lst2 :: List Char 
-- lst2 = C 'x' (C 'y' (C 'z' E))
-- lst3 :: List Bool 
-- lst3 = C True (C False E)

-- filterList :: (t -> Bool) -> List t -> List t 
-- filterList _ E = E 
-- filterList p (C x xs) 
--     | p x = C x (filterList p xs) 
--     | otherwise = filterList p xs 
-- -- variable p adalah fungsi karena bentuk signaturenya (t -> Bool)
-- -- dimana t adalah argumen berbentuk fungsi yang akan menghasilkan type data Bool

-- mapList :: (a -> b) -> List a -> List b 
-- mapList f (C x xs) = C (f x) (mapList f xs) 
-- mapList f E = E

-- double x = 2 * x

-- myList = C 2 (C (-3) (C 5 E))

-- main' = do 
--       print (filterList even myList) 
--       print (filterList odd myList)
--       print (mapList double myList)

-- -- ghci> main'
-- -- C 2 E
-- -- C (-3) (C 5 E)
-- -- C 4 (C (-6) (C 10 E))

-- TUGAS PERTEMUAN 6 

-- -- tugas buat sebuah function untuk memfilter sebuah list, tanpa cons dan empty seperti diatas, tapi dengan menggunakan filter odd 
-- -- jika dijalankan, hasilnya sama dengan jika kita menjalankan fungsi prelude sbb
-- -- ghci> filter odd [1,2,3,4,5,6,7]
-- -- [1,3,5,7]
-- -- misalnya namanya adalah 
-- -- >keepOnlyOddValue [1,2,3,4,5,6,7]
-- -- [1,3,5,7]
-- -- jawaban

-- -- cara 1
-- keepOnlyOddValue :: [Int] -> [Int]
-- keepOnlyOddValue xs = filter odd xs 
-- -- result 
-- -- ghci> keepOnlyOddValue [1,2,3,4,5,6,7]    
-- -- [1,3,5,7]

-- -- cara 2
-- keepOnlyOdd :: (a -> Bool) -> [a] -> [a]
-- keepOnlyOdd c x = filter c x 
-- -- result 
-- -- ghci> keepOnlyOdd odd [1,2,3,4,5,6,7] 
-- -- [1,3,5,7]

-- -- cara 3
-- keepOnlyOddValue' :: (a -> Bool) -> [a] -> [a]
-- keepOnlyOddValue' _ [] = []
-- keepOnlyOddValue' c (x:xs)   
--    | c x = x : keepOnlyOddValue' c xs 
--    | otherwise = keepOnlyOddValue' c xs
-- -- result
-- -- ghci> keepOnlyOddValue' odd [1,2,3,4,5,6,7] 
-- -- [1,3,5,7]

-- -- TUGAS 2
-- -- Buatlah 1 buah function yg bisa menjalankan pemilihan odd dan even, jadi kalau kita masukan argument “odd” maka data yg keluar adalah yg ganjil saja dan jika kita masukan “even” maka list yg dihasilkan adalah yg genap saja 
-- -- Jika di jalankan sbb:
-- -- ghci> filterValue "even" [1,2,3,4,5,6,7,8]
-- -- [2,4,6,8]
-- -- ghci> filterValue "odd" [1,2,3,4,5,6,7,8]    
-- -- [1,3,5,7]
-- -- filterValue ::  ?? - - signaturenya apa?
-- -- filterValue = ?? 
-- -- jawaban:
-- filterValue ::  String -> [Int] -> [Int]
-- filterValue jenis (xs) = if jenis == "even" then filter even xs else filter odd xs

-- -- result:
-- -- ghci> filterValue "even" [1,2,3,4,5,6,7,8]
-- -- [2,4,6,8]
-- -- ghci> filterValue "odd" [1,2,3,4,5,6,7,8]    
-- -- [1,3,5,7]

-- --- ===============================================
-- -- TUGAS 3
-- -- kalau kita buat sebuah fungsi yg sama dengan map, bisa dibuat seperti dibawah ini
-- -- ghci> map (+10) [1,2,3,4,5]
-- -- [11,12,13,14,15]
-- -- (+10) adalah sebuah function
-- -- Hasilnya akan sama saat function dan list yg sama diaplikasikan dalam map
-- -- Misalnya 
-- -- ghci> accumulateRec (+10) [1,2,3,4,5]
-- -- [11,12,13,14,15]

-- -- Jawaban:
-- accumulateRec :: (a -> b) -> [a] -> [b]
-- accumulateRec func [] = []
-- accumulateRec func (h:t) = (func h) : accumulateRec func t

-- -- result:
-- -- ghci> accumulateRec (+10) [1,2,3,4,5]
-- -- [11,12,13,14,15]

-- | Pertemuan 7 

-- Polymorphysm
-- -- data type Maybe 
-- -- penggunaan Maybe hasil nya hanya Nothing atau Just 

-- data Maybe a = Just a | Nothing

-- f :: Int -> Prelude.Maybe Int 
-- f 0 = Prelude.Nothing 
-- f x = Prelude.Just x 

-- main = do 
--       let value1 =1
--       putStrLn "Result for the variable is ="
--       let result1 = maybe False odd (Prelude.Just value1)
--       print ("result for value 1 is :" , result1)

-- -- ghci> main
-- -- Result for the variable is =
-- -- ("result for value 1 is :",True)

-- -- ghci> maybe False even (Prelude.Just value1)
-- -- False

-- tes :: Int -> Prelude.Maybe Int 
-- tes x = if x > 0 then Prelude.Just x else Prelude.Nothing

-- unWrapmaybe :: Prelude.Maybe Int -> Int 
-- unWrapmaybe (Prelude.Just x) = x 
-- unWrapmaybe Prelude.Nothing = 0 

-- cekData :: Int -> IO() 
-- cekData z = do 
--       let xx = tes z 
--       let zz = unWrapmaybe xx 
--       print ("Nilainya = " ++ show zz)

-- -- Total and partial functions 
-- -- Fungsi yang dibuat tidak mensupport segala kemungkinan 
-- -- Contoh head adalah partial function, dimana dia akan error jika argumen listnya kosong 

-- -- >>> head [1,2,3,4]
-- -- 1
-- -- >>> head []
-- -- Prelude.head: empty list

-- -- kita bisa membuat fungsi head yang tidak error
-- getHead :: [Int] -> Int 
-- getHead [] = 0
-- getHead [_] = 0
-- gethead (x:xs) = x 

-- -- >>> getHead []
-- -- 0

-- doStuff :: [Int] -> Int 
-- doStuff [] = 0 
-- doStuff [_]= 0 
-- doStuff (x1:x2:_) = x1 + x2 

-- -- >>> doStuff [1..10]
-- -- 3
-- -- >>> doStuff [1,2,3]
-- -- 3
-- -- >>> doStuff [10] 
-- -- 0
-- -- >>> doStuff [f]
-- -- Couldn't match expected type ‘Int’
-- --             with actual type ‘Int -> Maybe Int’

-- emptyStringList :: [String] 
-- emptyStringList = []

-- safeHead :: [a] -> Prelude.Maybe a 
-- safeHead [] = Prelude.Nothing 
-- safeHead (x:_) = Prelude.Just x 

-- -- >>> safeHead ["abcd"]
-- -- Just "abcd"

-- main3 = print (safeHead emptyStringList, safeHead ["Hello"])


-- -- TUGAS 
-- -- Task 1
-- -- Data typenya seperti apa yg bisa kita pakai ? silahkan buat type datanya agar bisa dipakai oleh semua function yg didalam task

-- -- data NonEmptyList a = ?
-- -- Jawaban
-- data NonEmptyList a = NEL a [a] deriving Show 

-- -- Task 2
-- -- Silahkan buat function (tanpa maybe) dari type data NonEmptyList agar bisa menghasilkan sbb
-- -- (dari NEL / NonEmptyList outputnya menjadi list)

-- -- nelToList :: NonEmptyList a -> [a]
-- -- nelToList = ?

-- -- hasil yg diharapkan
-- -- ghci> nelToList (NEL 4 [1,2])
-- -- [4,1,2]
-- -- ghci> nelToList (NEL 7 [1,2])
-- -- [7,1,2]

-- -- Jawaban
-- nelToList :: NonEmptyList a -> [a]
-- nelToList (NEL x xs) = x:xs

-- -- Task 3
-- -- silahkan terapkan MAYBE didalam type data NonEmptyList  tersebut , agar menghasilkan list sbb
-- -- (dari list biasa menjadi output NEL / NonEmptyList)

-- -- listToNEL:: [a] -> Maybe (NonEmptyList a)
-- -- listToNEL= ?

-- -- hasil yg diharapkan
-- -- ghci> listToNEL [1,2]        
-- -- Just (NEL 1 [2])
-- -- ghci> listToNEL [4,1,2]
-- -- Just (NEL 4 [1,2])
-- -- ghci> listToNEL [7,1,2]
-- -- Just (NEL 7 [1,2]) 

-- -- Jawaban
-- listToNEL :: [a] -> Prelude.Maybe (NonEmptyList a)
-- listToNEL []     = Prelude.Nothing
-- listToNEL (x:xs) = Prelude.Just (NEL x xs)


-- -- Task 4
-- -- Silahkan buat function tanpa menggunakan Maybe dengan type data NonEmptyList   agar bisa mendapatkan head dari list yg diberikan, hingga bs mendapatkan hasill sbb
-- -- headNEL :: NonEmptyList a -> a
-- -- headNEL= ?

-- -- hasil yg diharapkan
-- -- ghci> headNEL (NEL 2 [1,2])
-- -- 2
-- -- ghci> headNEL (NEL 1 [1,2])
-- -- 1
-- -- ghci> headNEL (NEL 4 [1,2])
-- -- 4

-- -- Jawaban
-- headNEL :: NonEmptyList a -> a
-- headNEL (NEL x _) = x

-- -- Task 5
-- -- Silahkan buat function tanpa menggunakan Maybe dengan type data NonEmptyList   agar bisa mendapatkan tail dari list yg diberikan, hingga bs mendapatkan hasill sbb
-- -- tailNEL :: NonEmptyList a -> [a]
-- -- tailNEL = ?
-- -- hasil yg diharapkan 
-- -- ghci> tailNEL (NEL 1 [1,2])
-- -- [1,2]
-- -- ghci> tailNEL (NEL 2 [1,2])
-- -- [1,2]

-- -- Jawaban
-- tailNEL :: NonEmptyList a -> [a]
-- tailNEL (NEL _ xs) = xs

