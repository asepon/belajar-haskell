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

-- Pertemuan 8 

-- -- ghci> :t flip
-- -- flip :: (a -> b -> c) -> b -> a -> c

-- -- fungsi flip menerima 3 argumen
-- -- fungsi flip akan menukar posisi argumen kedua dan ketiga
-- -- >>> flip (-) 5 1
-- -- -4
-- -- >>> flip (-) (-5) 1
-- -- 6
-- -- >>> flip (/) 1 2
-- -- 2.0
-- -- >>> flip (>) 3 5
-- -- True
-- -- >>> flip mod 3 6 
-- -- 0

-- buildList :: (Integer -> a) -> [a]
-- buildList x = flip map [0..10] x

-- -- >>> buildList (+2)
-- -- [2,3,4,5,6,7,8,9,10,11,12]


-- -- skips :: [a] -> [[a]]
-- -- buatlah sebuah function yg menghasilkan hasil sbb:

-- -- skips "ABCD"        == ["ABCD", "BD", "C", "D"]
-- -- skips "hello!"      == ["hello!", "el!", "l!", "l", "o","!"] 
-- -- skips [1]           == [[1]]
-- -- skips [True, False] == [[True, False], [False]]
-- -- skips []            == []

-- -- penjelasan:
-- -- ghci>Skip "ABCD"

-- -- langkah 1
-- -- di element pertama, kemudian dia akan lompat 1 langkah danakan mengambil tiap 1 langkah element list
-- -- maka hasilnya adalah  "ABCD"

-- -- langkah 2 
-- -- dia akan mengambil elemen ke dua dr list dan lompat 2 element dari list, yaitu:
-- -- "BD"

-- -- langkah 3 
-- -- dia akan mengambil elemen ke tiga dari list dan lompat 3 elemen dari list, yaitu:
-- -- "BD"

-- -- langkah 4
-- -- dia akan mengambil elemen ke empat dari list dan lompat 4 elemen dari list, yaitu:
-- -- "BD"

-- -- jawaban:

-- skip :: Int -> [a] -> [a]
-- skip n x
--     | length x >= n = last (take n x) : skip n (drop n x)
--     | otherwise     = []

-- -- >>> last "ABCD"
-- -- >>> skip 2 "ABCD"
-- -- >>> take 2 "ABCD"
-- -- >>> drop 2 "ABCD"
-- -- >>> last (take 2 "ABCD")
-- -- >>> skip 2 (drop 2 "ABCD")
-- -- >>> last (take 2 "ABCD") : skip 2 (drop 2 "ABCD")
-- -- 'D'
-- -- "BD"
-- -- "AB"
-- -- "CD"
-- -- 'B'
-- -- "D"
-- -- "BD"

-- --skip jika diubah menjadi infix
-- -- >>> 2 `skip` (drop 2 "ABCD")
-- -- "D"

-- -- >>> 1 + 2
-- -- 3
-- -- >>> (+) 2 1
-- -- 3

-- -- ghci> :t map
-- -- map :: (a -> b) -> [a] -> [b]
-- -- >>> map (+2) [1,2,3]
-- -- [3,4,5]

-- skips :: [a] -> [[a]]
-- skips x = map (`skip` x) [1..length x]

-- -- >>> length "ABCD"
-- -- >>> [1..4]
-- -- 4
-- -- [1,2,3,4]


-- -- Task 2
-- -- Contoh hasil yg diinginkan
-- -- localMaxima [2,9,5,6,1]  == [9,6]
-- -- localMaxima [2,3,4,1,5] == [4]
-- -- localMaxima [1,2,3,4,5] == []

-- -- local maxima adalah menjadi bilangan yg angka sebelum dan sesudahnya lebih kecil dari current number, contoh
-- -- localMaxima [2,9,5,6,1]  == [9,6]
-- -- sebelum 9 ada angka 2 dan sesudah 9 ada angka 5 , keduanya (angka sebelum dan sesudah) lebih kecil dari angka 9 (current number), maka 9 dimasukan ke list
-- -- begitu juga angka 6 dimasukan ke list karena angka 5 (angka sebelum 6)  dan 1 (angka sesudah 6) lebih kecil dari angka 6 (current number)

-- -- localMaxima [2,3,4,1,5] == [4]
-- -- hanya angka 4 yg local maxima

-- -- localMaxima [1,2,3,4,5] == []
-- -- tidak ada angka yg local maxima,makanya menghasilkan list kosong

-- localMaxima :: [Integer] -> [Integer]
-- localMaxima []       = []
-- localMaxima (_:[])   = []
-- localMaxima (_:_:[]) = []
-- localMaxima (x0:x1:xs)
--     | x1 > x0 && x1 > head xs = x1 : localMaxima (x1:xs)
--     | otherwise               = localMaxima (x1:xs)

-- -- task 3
-- -- mengaplikasikan isi list menjadi diagram
-- -- hasil yg diinginkan :

-- -- ghci> histogram [3,5]               
-- -- "   * *    \n==========\n0123456789\n"

-- -- ghci> histogram [1,4,5,4,6,6,3,4,2,4,9]
-- -- "    *     \n    *     \n    * *   \n ******  *\n==========\n0123456789\n"

-- -- ghci> main
-- --  *        
-- --  *
-- --  *   *
-- -- ==========
-- -- 0123456789
-- --     *
-- --     *
-- --     * *
-- --  ******  *
-- -- ==========
-- -- 0123456789


-- histogram :: [Integer] -> String
-- histogram = plot . count

-- -- |Return counts of integers from 0 to 9
-- count :: [Integer] -> [Int]
-- count = foldl (flip increment) (replicate 10 0)

-- -- >>> replicate 10 0
-- -- [0,0,0,0,0,0,0,0,0,0]

-- -- |Add one to a given count
-- increment :: Integer -> [Int] -> [Int]
-- increment x counts =
--   case splitAt (fromIntegral x) counts of
--     (a,n:b) -> a ++ (n+1):b

-- -- |Plot a vertical bar chart of counts
-- plot :: [Int] -> String
-- plot counts =
--   unlines $ [drawline h | h <- [maxh,maxh-1..1]] ++ footer
--   where drawline level = [if x >= level then '*' else ' ' | x <- counts]
--         maxh = maximum counts
--         footer = ["==========","0123456789"]

-- main = do
--   putStr $ histogram [1,1,1,5]
--   putStr $ histogram [1,4,5,4,6,6,3,4,2,4,9]

-- | Pertemuan 9 
-- High Order function 

-- gt100 :: Integer -> Bool
-- gt100 x = x > 100

-- -- >>> gt100 10
-- -- False

-- greaterThan100 :: [Integer] -> [Integer]
-- -- greaterThan100 xs = filter gt100 xs 
-- greaterThan100 = filter gt100

-- greaterThan100_2 :: [Integer] -> [Integer]
-- -- greaterThan100_2 xs = filter (\x -> x > 100) xs
-- -- greaterThan100_2 xs = filter (> 100) xs
-- greaterThan100_2 = filter (> 100)

-- -- >>> greaterThan100 [122,22,333,1]
-- -- [122,333]

-- -- >>> greaterThan100_2 [122,22,333,1]
-- -- [122,333]

-- -- >>> (\x -> x) 2
-- -- 2
-- -- >>> (\x -> x+2) 2 
-- -- 4
-- -- >>> (\x -> \y -> x + y) 2 4
-- -- 6
-- -- >>> (\x -> \y -> \z -> x + y * z) 2 4 10
-- -- 42
-- -- >>> (\x y z -> [x + y * z]) 2 4 10 
-- -- [42]

-- myTest :: [Integer] -> Bool 
-- myTest xs = even (length (greaterThan100 xs))

-- -- >>> myTest [9,100,900,4,600]
-- -- True
-- -- Breakdown the function will looks like:
-- -- >>> greaterThan100 [9,100,900,4,600]
-- -- [900,600]
-- -- >>> length [900,600]
-- -- 2
-- -- >>> even 2
-- -- True

-- myTestSugarized :: [Integer] -> Bool 
-- myTestSugarized = even . length . greaterThan100

-- tesCOMP1 :: [Int] -> [Int] 
-- tesCOMP1 = map (\x -> x - 2) . filter (>8)
-- -- >>> tesCOMP1 [1,5,10,4,20]
-- -- [8,18]
-- -- Breakdown the pipeline will looks like:
-- -- >>> filter (>8) [1,5,10,4,20]
-- -- [10,20]
-- -- >>> map (\x -> x -2) [10,20]
-- -- [8,18]

-- tesCOMP2 :: [Int] -> [Int] 
-- tesCOMP2 = filter (>8) . map (\x -> x - 2) 
-- -- >>> tesCOMP2 [1,5,10,4,20]
-- -- [18]
-- -- Breakdown the pipeline will looks like:
-- -- >>> map (\x -> x -2) [1,5,10,4,20]
-- -- [-1,3,8,2,18]
-- -- >>> filter (>8) [-1,3,8,2,18]
-- -- [18]

-- -- Fungsi fst menerima argumen bertipe tuple atau pair 
-- -- Fungsi ini akan mengambil elemen pertama dari pairing (argumen)
-- -- Fungsi ini dari prelude

-- -- >>> fst (1,2)
-- -- 1

-- -- >>> fst 1 2
-- -- Non type-variable argument in the constraint: Num (t1 -> t2, b)
-- -- (Use FlexibleContexts to permit this)

-- -- fungsi curry akan menjadikan argumen dari fungsi yg menjadi argumen nya sendiri ke bentuk type data pair
-- -- dengan curry fungsi fst bisa di jalankan dengan data tipe bukan pair
-- -- >>> curry fst 1 2
-- -- 1

-- -- fungsi uncurry kebalikan dari curry.
-- -- >>> (+) 1 2 
-- -- 3
-- -- >>> uncurry (+) (1,2)
-- -- 3

-- f2 :: Int -> Int -> Int 
-- f2 a b = if a>10 then a else b 

-- -- >>> f2 11 5
-- -- 11
-- -- >>> uncurry f2 (11,5)
-- -- 11

-- foobar :: [Integer] -> Integer 
-- foobar [] = 0 
-- foobar (x:xs) 
--      | x > 3 = (7*x+2) + foobar xs 
--      | otherwise = foobar xs 

-- -- >>> foobar [1,2,3,10]
-- -- 72

-- -- gunakan composition utk sederhanakan 

-- foobar' :: [Integer] -> Integer 
-- foobar' = sum . map (\x->7*x + 2). filter (>3)

-- -- fungsi fold hampir sama dengan map 
-- -- fold ada 2 yaitu foldl dan foldr 
-- -- fold memiliki 3 arguman 
-- -- fold akan mengambil argumen 2 ditambahkan ke list argumen 3
-- -- foldl akan menambahkan argumen 2 sebagai head list argumen 3
-- -- foldr akan menambahkan argumen 2 sebagai tail list argumen 3
-- -- foldl akan menjalankan fungsi di argumen1 dari left ke right
-- -- foldr akan menjalankan fungsi di argumen1 dari kanan ke kiri

-- --FOLDL
-- -- >>> foldl (-) 0 [1,2,3,4]
-- -- -10

-- -- logika nya adalah 
-- -- langkah 1 : (-) [0,1,2,3,4]
-- -- langkah 2 : (((0-1)-2)-3)-4
-- -- hasilnya : -10

-- --FOLDR
-- -- >>> foldr (-) 0 [1,2,3,4]
-- -- -2

-- -- logika nya adalah 
-- -- langkah 1 : (-) [1,2,3,4,0]
-- -- langkah 2 : 1-(2-(3-(4-0)))
-- -- hasilnya : -2

-- -- TASK day 9

-- -- Masukan list sembarang sebagai argument, lalu periksa apakah elemen dari list tersebut lebih besar dari 10, jika iya, maka elemen list tersebut di bagi 2, kalau tidak maka dibiarkan di dalam list
-- -- Pakai recursive dan pattern matching , semua variable harus di input dari argument (inputan user saat eksekuting)

-- -- Kemudian pilih hanya yg habis dibagi 2 saja yg ada di list, sisanya dihilangkan
-- -- Lalu pilih lagi hanya yg lebih besar dari 8 saja yg ditampilkan dan Susun dengan menggunakan composition (.)

-- -- hint
-- -- buat helper 1 yg memeriksa angka yg lebih dari 10
-- -- ghci> cekgt10 [1,10,12,3,8,90,5]
-- -- [1,10,6,3,8,45,5]

-- -- buat helper 2 : utk memfilter yg habis dibagi 2 saja yg ada dilist
-- -- ghci> selectMod0' [1,10,6,3,8,45,5]
-- -- [10,6,8]

-- -- fungsi utama 
-- -- (Lalu pilih lagi hanya yg lebih besar dari 8 saja yg ditampilkan)
-- -- composition function (penggabungan dengan (.)) 
-- -- ghci> comFunc [1,10,12,3,8,90,5]
-- -- [10]

-- -- Jawaban
-- -- helper 1 : Cek lebih dari 10
-- --jika lebih dari 10 maka dibagi 2 jika lebih kecil dari 10 maka biarkan saja
-- cekgt10 :: [Int] -> [Int]
-- cekgt10 [] = []
-- cekgt10 (x:xs) 
--            | x > 10 = x `div` 2 : cekgt10 xs 
--            | otherwise = x : cekgt10 xs


-- -- ghci> cekgt10 [1,10,12,3,8,90,5]
-- -- [1,10,6,3,8,45,5]

-- selectMod0' :: [Int] -> [Int]
-- selectMod0' x = filter even x

-- -- ghci> selectMod0' [1,10,6,3,8,45,5]
-- -- [10,6,8]
-- -- atau pakai alternatif ini

-- selectMod0'' :: [Int] -> [Int]
-- selectMod0'' = filter even 

-- -- ghci> selectMod0'' [1,10,6,3,8,45,5]
-- -- [10,6,8]
-- -- composition function (penggabungan dengan (.))

-- comFunc :: [Int] -> [Int]
-- comFunc = filter (>8) . selectMod0'' . cekgt10

-- -- ghci> comFunc [1,10,12,3,8,90,5]
-- -- [10]

-- | Pertemuan 10
-- HIGHER ORDER 

-- fun1 :: [Int] -> Int
-- fun1 [] = 1
-- fun1 (x:xs)
--     | even x = (x-2) * fun1 xs
--     | otherwise = fun1 xs

-- -- langkah 1; ambil yg genap, hasilnya :[10,20]
-- -- langkah 2; kurangi 2 [10-2,20-2] = [8-18] 
-- -- langkah 3; 8 * 18 = 144 
-- -- langkah 4; 13 adalah ganjil maka [] = 1
-- -- langkah 5; 144 * 1 = 144
-- -- >>> fun1 [10,20,13]
-- -- 144

-- -- >>> abs (-1)
-- -- 1
-- -- >>> map abs [-1,-3,4,-12]
-- -- [1,3,4,12]
-- -- >>> map reverse ["abcd", "cda", "1234"]
-- -- ["dcba","adc","4321"]
-- -- >>> even 2
-- -- True
-- -- >>> even 3
-- -- False
-- -- >>> filter even [1,2,3,4,5,6]
-- -- [2,4,6]
-- -- >>> filter odd  [1,2,3,4,5,6]
-- -- [1,3,5]
-- -- >>> filter (>4)  [1,2,3,4,5,6]
-- -- [5,6]
-- -- >>> map even  [1,2,3,4,5,6]
-- -- [False,True,False,True,False,True]
-- -- >>> (\x y -> x * y) 9 10
-- -- 90
-- -- >>> map (\x -> not (even x)) [1..9]
-- -- [True,False,True,False,True,False,True,False,True]
-- -- >>> filter (\x -> not (even x)) [1..9]
-- -- [1,3,5,7,9]
-- -- >>> map (not . even) [1..9]
-- -- [True,False,True,False,True,False,True,False,True]
-- -- >>> filter (>2) [1..4]
-- -- [3,4]
-- -- >>> sum [1..4]
-- -- 10
-- -- >>> product [2,4]
-- -- 8
-- -- >>> sum (filter (>2) [1,2,3,4])
-- -- 7
-- -- >>> sum $ filter (>2) [1,2,3,4]
-- -- 7

-- fun2 :: Int -> Int
-- fun2 1 = 0
-- fun2 n | even n = n + fun2 (n `div` 2)
--        | otherwise = fun2 (3*n+1)
-- -- >>> fun2 10
-- -- 40

-- -- langkah ke 1; 10 = genap, 10/2 = 5
-- -- langkah ke 2; 5 = ganjil, 3*5+1 = 16 
-- -- langkah ke 3; 16 = genap, 16/2 = 8
-- -- langkah ke 4; 8 = genap, 8/4 = 2
-- -- langkah ke 5; 2 = genap, 2/2 = 1 
-- -- langkah ke 6; 1=0
-- -- langkah ke 7; 10+5+16+8+2+1+0 = 40

-- -- ITERATE
-- -- Fungsi ini akan mengeksekusi argumen1 terhadap argumen2 berulang-ulang
-- -- Contoh dibawah akan berulang mengkalikan 2 argumen berisi 1 berulang2 
-- -- Hati2 menggunakan iterate jika tidak ada kondisi pembatas, akan di looping hingga memory overflow 
-- -- iterate (2*) 1
-- -- Perlu dibatasi seperti dibawah
-- -- >>> take 2 (iterate (2*) 1)
-- -- [1,2]

-- -- takeWhile adalah fungsi yg akan mengambil elemen di list argumen2 selama kondisi di argumen1 masih True
-- -- >>> takeWhile odd [1,3,5,8]
-- -- [1,3,5]

-- -- TUPPLE
-- -- adalah kumpulan data dengan berbagai type data 
-- -- ('a', 1, True, "String")

-- inputListTupple :: [(Char,Char)]
-- inputListTupple = [(x,y) | x <- "a", y <- "b"]
-- -- >>> inputListTupple
-- -- [('a','b')]

-- inputListTupple2 :: [(Char,Int)]
-- inputListTupple2 = [(x,y) | x <- "a", y <- [2]]
-- -- >>> inputListTupple2
-- -- [('a',2)]

-- inputListTupple3 :: Char -> Char -> [(Char,Char)]
-- inputListTupple3 x y = [(x,y)]
-- -- >>> inputListTupple3 'a' 'b'
-- -- [('a','b')]

-- -- Fungsi ZIP akan membuat pair atas 2 list argumen
-- -- >>> zip [1,3] [2,3]
-- -- [(1,2),(3,3)]

-- --BINARY TREE
-- data Tree a = Leaf
--               | Node Int (Tree a) a (Tree a)
--               deriving Show

-- foldTree :: [a] -> Tree a
-- foldTree = foldr makeTree Leaf

-- makeTree :: a -> Tree a -> Tree a
-- makeTree a Leaf = Node 0 Leaf a Leaf
-- makeTree a (Node h l m r)
--       | height l <= height r = Node (height (makeTree a l) + 1) (makeTree a l) m r
--       | otherwise = Node (height (makeTree a r) + 1) l m (makeTree a r)
--      where
--         height Leaf = -1
--         height (Node h _ _ _) = h

-- -- >>> foldTree "ABCDEFGHIJ"
-- -- Node 3 (Node 2 (Node 1 (Node 0 Leaf 'D' Leaf) 'G' Leaf) 'I' (Node 1 (Node 0 Leaf 'A' Leaf) 'E' Leaf)) 'J' (Node 2 (Node 1 (Node 0 Leaf 'B' Leaf) 'F' Leaf) 'H' (Node 0 Leaf 'C' Leaf))

-- -- TUGAS

-- fun1' :: [Int] -> Int
-- fun1' [] = 1
-- fun1' (x:xs)
--      | even x = (x - 2) * fun1 xs
--      | otherwise = fun1 xs

-- -- ghci> fun1' [10,20,13]      
-- -- 144

-- -- Tugas bikin function yg sama dengan code diatas tapi jangan pakai pattern matching, jangan pakai if, jangan pakai case, jangan pakai guards, buat hanya dengan satu line dan dengan beberapa function prelude yg ada disini misalnya 
-- -- lambda dan fungsi2 seperti composition (.), filter / takewhile, map, product , even
-- -- Jawaban

-- fun1a :: [Int] -> Int
-- fun1a  = product . takeWhile even . map (\x -> x - 2)

-- -- ghci> fun1a [10,20,13]      
-- -- 144
-- -- Breakdown the pipeline 
-- -- >>> map (\x -> x - 2) [10,20,13]
-- -- [8,18,11]
-- -- >>> takeWhile even [8,18,11]
-- -- [8,18]
-- -- >>> product [8,18]
-- -- 144

-- -- atau bisa jg pakai ini 

-- fun1b :: [Int] -> Int
-- fun1b = product . map (\x -> x-2) . filter even
-- -- >>> fun1b [10,20,13]
-- -- 144

-- -- Breakdown the pipeline 
-- -- >>> filter even [10,20,13]
-- -- [10,20]
-- -- >>> map (\x -> x-2) [10,20]
-- -- [8,18]

-- -- >>> product [8,18]
-- -- 144

-- -- TASK 2

-- fun2' :: Int -> Int
-- fun2' 1 = 0
-- fun2' n | even n = n + fun2 (n `div` 2)
--              | otherwise = fun2 (3 * n + 1)

-- -- ghci> fun2 5
-- -- 30
-- -- Ubah fungsi diatas dengan lambda, iterate, takewhile, filter, sum, composition, even dan if then else atau where dll
-- -- Jawaban

-- fun2'' :: Integer -> Integer
-- fun2'' = sum . filter even . takeWhile (\x -> x > 1) . iterate (\x -> if (even x) then div x 2 else 3 * x + 1)

-- -- ghci> fun2 5
-- -- 30
-- -- ghci> fun2' 5
-- -- 30
-- -- ghci> fun2 10
-- -- 40
-- -- ghci> fun2' 10
-- -- 40
-- -- ghci> fun2' 50
-- -- 588
-- -- ghci> fun2 50 
-- -- 588


-- -- atau jika tidak pakai lambda sbb

-- fun2'b :: Integer -> Integer
-- fun2'b = sum . filter even . takeWhile (> 1) . iterate collatz
--   where collatz x = if (even x) then div x 2 else 3 * x + 1

-- -- ghci> fun2'b 50
-- -- 588
-- -- ghci> fun2'b 10
-- -- 40
-- -- ghci> fun2'b 5  
-- -- 30


-- -- TASK 4

-- -- Buat fungsi dengan rule sbb
-- -- jika ada TRUE di posisi genap dan tidak ada diposisi ganjil maka dia akan true
-- -- jika dia ada TRUE di posisi ganjil maka jadi False, clue nya true atau falsenya dimasukan ke lambda
-- -- xor [False, True, False] == True
-- -- xor [False, True, False, False, True] == False
-- -- buat dengan komposisi, lambda dan odd
-- -- Jawaban : 

-- xor :: [Bool] -> Bool
-- xor = odd . foldr (\x s -> if (x) then 1 + s else s) 0

-- -- ghci> xor [False, True, False] 
-- -- True
-- -- [False, True, False]
-- --   1       2     1         karena ada True di posisi genap maka hasilnya True
-- -- ghci> xor [False, True, False, False, True]
-- -- False
-- -- ghci> xor [False, True, False, False, False, True]
-- -- False

-- | Pertemuan 11
-- TYPE CLASSES

-- headInt :: [Int] -> Int 
-- headInt a = a !! 0 
-- -- >>> headInt [1,2,3,4,5]
-- -- 1

-- headChar :: [Char] -> Char 
-- headChar a = a !! 0 
-- -- >>> headChar "Emurgo"
-- -- 'E'

-- f1 :: a -> a -> a 
-- f1 x y = x 

-- f2 :: a -> a -> a 
-- f2 x y = y 

-- hanyaNum :: Num a => a -> a -> a 
-- hanyaNum x y = x + y
-- -- >>> hanyaNum 1 2 
-- -- 3
-- -- >>> hanyaNum "b" "g"
-- -- No instance for (Num String) arising from a use of ‘hanyaNum’

-- fox :: Num a => p1 -> p2 -> a
-- fox n x = 1 + 2

-- -- CLASS INSTANCE

-- class CekIsi a where 
--     meth :: a -> String 

-- instance CekIsi Int where 
--     meth x = "valuenya adalah Int"

-- instance CekIsi Bool where 
--     meth x = "Isinya boolean"

-- x :: String 
-- x = meth (10 :: Int) 
-- -- >>> x
-- -- "valuenya adalah Int"

-- x2 :: String 
-- x2 = meth (True :: Bool)
-- -- >>> x2
-- -- "Isinya boolean"

-- -- TUGAS
-- -- apa type data dari data dibawah ini ?  

-- -- A.   ['a','b','c']
-- -- B.   ('a','b','c')
-- -- C.   [(False,'0'),(True,'1')]
-- -- D.   ([False, True],['0','1'])
-- -- E.   [tail, init, reverse]

-- -- Jawaban:

-- -- A.   ['a','b','c'] :: [Char]
-- -- B.   ('a','b','c') :: (Char,Char,Char)
-- -- C.   [(False,'0'),(True,'1')] :: [(Bool,Char)]
-- -- D.   ([False, True],['0','1']) :: ([Bool],[Char])
-- -- E.   [tail, init, reverse] :: [[a]->[a]]


-- -- Task 2

-- -- Apa type / signature dari fungsi dibawah ini ?
-- -- A.  second xs = head (tail xs)
-- -- B.  swap (x,y) = (y,x)
-- -- C.  pair x y = (x,y)
-- -- D.  double x = x * 2
-- -- E.   palindrome xs = reverse xs == xs
-- -- F.  twice f x = f (f x)

-- -- Jawaban Task 2
-- -- soal A
-- second xs = head (tail xs)
-- second :: [Int] -> Int

-- -- ghci> second [1,2,3,4]
-- -- 2

-- -- soal B

-- swap :: (a,b) -> (b,a)
-- swap (x,y) = (y,x)

-- -- ghci> swap (10,20)
-- -- (20,10)

-- -- soal C
-- pair :: a-> b-> (a,b)
-- pair x y = (x,y)

-- -- ghci> pairArg "a" 10
-- -- ("a",10)

-- -- soal D
-- double :: Num a => a -> a
-- double x = x * 2

-- -- ghci> doublearg 4
-- -- 8

-- -- soal E
-- palindrome :: Eq a => [a] -> Bool
-- palindrome xs = reverse xs == xs

-- -- ghci> palindrome [1,2,3]
-- -- False


-- -- soal F
-- twice :: (t -> t) -> t -> t
-- twice f x = f (f x)

-- -- ghci> twice (*2) 5
-- -- 20

-- -- Clas & Instance 

-- class C a where
--         meth :: a -> String

-- instance C Int where 
--        meth _ = "C Int"

-- instance C Bool where 
--        meth True = "C isinya True"
--        meth False = "C isinya False"


-- -- >>> x
-- -- "C Int"
-- x :: String
-- x = meth (10 :: Int)


-- -- >>> x2
-- -- "C isinya True"
-- x2 :: String
-- x2 = meth (True :: Bool)

-- -- x3:: String
-- -- x3 = meth ("ini akan error karena tidak punya instance utk String" :: String)

-- Pertemuan 12

-- import Data.Char ( isNumber, isAlpha, isPunctuation )

-- data ExprT = Lit Int 
--               | Add ExprT ExprT 
--               | Mul ExprT ExprT 
--               deriving (Show, Eq)

-- eval' :: ExprT -> Int 
-- eval' (Mul (Add (Lit a) (Lit b)) (Lit c)) = (a+b) * c
-- -- >>> eval' (Mul (Add (Lit 2) (Lit 3)) (Lit 4))
-- -- 20

-- -- untuk mengextract data dari tipe data
-- eval :: ExprT -> Int 
-- eval (Lit i)     = i 
-- eval (Add e1 e2) = eval e1 + eval e2 
-- eval (Mul e1 e2) = eval e1 * eval e2 
-- -- >>> eval (Mul (Add (Lit 2) (Lit 3)) (Lit 4))
-- -- 20

-- -- CONSTANTA
-- e1 :: ExprT 
-- e1 = Add (Lit 1)
--           (Add (Lit 2)
--                (Lit 3))
-- -- >>> eval e1
-- -- 6

-- view :: ExprT -> String 
-- view (Lit n)   = show n 
-- view (Add x y) = "(" ++ view x ++ " + " ++ view y ++ ")" 
-- -- >>> view e1
-- -- "(1 + (2 + 3))"

-- reify :: ExprT -> ExprT
-- reify = id 

-- -- >>> reify (Lit 1)
-- -- Lit 1

-- -- >>> reify $ Mul (Add (Lit 2) (Lit 3)) (Lit 4)
-- -- Mul (Add (Lit 2) (Lit 3)) (Lit 4)

-- data List t = E | C t (List t) 

-- checkIsEmpty :: List t -> Maybe t 
-- checkIsEmpty E = Nothing 
-- checkIsEmpty (C x _) = Just x
-- -- >>> checkIsEmpty (C "hello" E)
-- -- Just "hello"
-- -- >>> checkIsEmpty E
-- -- Nothing

-- -- getPassphrase :: IO (Maybe String)
-- -- getPassphrase = do s <- getLine 
-- --                    if isValid s then return $ Just s 
-- --                                 else return Nothing

-- -- isValid :: String -> Bool 
-- -- isValid s = length s >= 8

-- -- askUserIDPass :: IO () 
-- -- askUserIDPass = do putStrLn "Insert your new password" 
-- --                    maybe_value <- getPassphrase 
-- --                    case maybe_value of 
-- --                        Just value -> do putStrLn "Storing in file..."
-- --                        Nothing -> putStrLn "Password invalid." 

-- -- ghci> askUserIDPass
-- -- Insert your new password
-- -- 1234568
-- -- Password invalid.

-- -- ghci> askUserIDPass
-- -- Insert your new password
-- -- wfasf8612a
-- -- Storing in file...

-- -- TASK 1
-- -- Ubah code diatas agar ketika valid dia akan menyimpan User ID dan password di file listuserpass.txt, dengan ketentuan :
-- -- 1.	Ubah function askUserIDPass dan isValid saja (jangan menambah function baru)
-- -- 2.	User harus memasukan user ID dan password untuk disimpan
-- -- 3.	User ID bebas tanpa ketentuan apapun
-- -- 4.	Password dianggap valid jika :
-- -- a.	Terdiri dari huruf
-- -- b.	Terdiri dari angka
-- -- c.	Panjangnya lebih atau sama dengan 8
-- -- d.	Dan ada special character apapun

-- -- 5.	Ketika ada user baru maka file listuserpass.txt akan di append isinya (bukan di overwrite)
-- -- 6.	Setiap id dan password antara 1 data dan lainnya harus dibuat beda baris (new line)
-- -- 7.	Silahkan di cari di google atau https://hoogle.haskell.org/
-- -- 8.	Mungkin bisa dipakai juga library seperti  Data.Char atau System.IO jika ingin

-- -- Jawaban

-- getPassphrase :: IO (Maybe String)
-- getPassphrase = do s <- getLine
--                    if isValid s then return $ Just s
--                                 else return Nothing

-- isValid :: String -> Bool
-- isValid s = length s >= 8 && any isAlpha s
--             && any isNumber s
--             && any isPunctuation s

-- askUserIDPass :: IO ()
-- askUserIDPass = do 
--              putStrLn "Insert your new User ID:"
--              user_id <- getLine             
--              putStrLn "Insert your new password:"
--              maybe_value <- getPassphrase
--              case maybe_value of
--                        Just value -> do 
--                                      putStrLn "Storing in text file..."  
--                                      let namafile = "listuserpass.txt " 
--                                      let isifile =  "User ID = " ++ user_id ++ ", Password = " ++ value ++ "\n"
--                                      appendFile namafile isifile

--                        Nothing -> putStrLn "Password invalid."

-- -- ghci> askUserIDPass
-- -- Insert your new User ID:
-- -- 12345678
-- -- Insert your new password:
-- -- Er3456789!!
-- -- Storing in text file...

-- -- | Pertemuan 13 

-- -- LAZINESS 
-- -- 1. Strict evaluation
-- -- Semua argumen fungsi akan di evaluasi dulu sebelum di lempar 
-- -- Contoh fungsi dibawah argumen yang akan di evaluasi hanya x nya, y karena tidak di gunakan akan di ignore
-- -- f x y = x + 2 
-- -- f 5 (29^345234) 
-- -- argumen 2 berisi (29^345234) tidak akan di evaluasi karena yg di pakai hanya argumen pertama
-- -- 2. Side effects and purity 
-- -- Side effect, constanta haskell tidak akan memiliki side effect setelah dilakukan define
-- -- global variable tidak akan berubah nilainya.
-- -- 3. Lazy evaluation
-- -- Evaluasi fungsi argumen akan di tunda selama mungkin hingga di perlukan.
-- -- Expression yang belum di evaluasi di sebut thunk
-- -- contoh fungsi di atas, argumen (29^345234) adalah ekspresi thunk tanpa komputasi
-- -- Thunk akan di evaluasi cukup hanya untuk mengizinkan pola yang cocok.

-- f x y = x + 2 
-- -- >>> f 5 (29^12030032) 
-- -- 7
-- a :: Int 
-- a = 10 

-- tambah :: Int 
-- tambah = do 
--           let a = 20 
--           a 

-- -- >>> tambah
-- -- 20
-- -- >>> a
-- -- 10

-- tambahlagi :: Int -> Int 
-- tambahlagi a = a + 10 
-- -- >>> tambahlagi a
-- -- 20

-- cekNilaiA :: Int 
-- cekNilaiA = a
-- -- >>> cekNilaiA
-- -- 10

-- f1 :: Maybe a -> [Maybe a] 
-- f1 m = [m,m] 

-- f2 :: Maybe a -> [a] 
-- f2 Nothing = [] 
-- f2 (Just x) = [x] 

-- -- >>> f1 (Just 10)
-- -- [Just 10,Just 10]

-- -- >>> f2 (Just 10)
-- -- [10]
-- -- >>> f2 Nothing
-- -- []

-- safehead :: [a] -> Maybe a 
-- safehead [] = Nothing 
-- safehead (x:_) = Just x 
-- -- >>> safehead []
-- -- Nothing
-- -- >>> safehead [1,2,3]
-- -- Just 1

-- repeat' :: a -> [a] 
-- repeat' x = x : repeat' x 

-- take' :: Int -> [a] -> [a] 
-- take' n _ | n <= 0 = [] 
-- take' _ [] = [] 
-- take' n (x:xs) = x : take' (n-1) xs 
-- -- >>> take' 3 (repeat' 7)
-- -- [7,7,7]

-- fn x = [x,x]
-- -- >>> fn (1+1) 
-- -- [2,2]

-- if' :: Bool -> a -> a -> a 
-- if' True x _ = x 
-- if' False _ y = y 
-- -- >>> if' False "Indonesia" "India"
-- -- "India"
-- -- >>> if' True "Indonesia" "India"
-- -- "Indonesia"

-- -- TASK 1

-- -- Buat function yg bisa menambah list ketika dimasukan yg sebuah value yg baru, listnya jenisnya String, dan hasil yg diharapkan sbb, jadi ada oldvalue dan ada new value, newvalue akan menambah oldvalue
-- -- Untuk awalnya oldvalue bisa di set sebagai empty list, boleh dibuat lebih dari 1 function, utk membantu proses penambahan data / elemen dari list

-- -- ghci> main
-- -- a> Add New List d> Done
-- -- a
-- -- Insert new value : Data ke 1

-- -- a> Add New List d> Done
-- -- a
-- -- Insert new value : Data ke 2

-- -- a> Add New List d> Done
-- -- a
-- -- Insert new value : Data ke 3
-- -- a> Add New List d> Done
-- -- d
-- -- ["Data ke 1"," Data ke 2"," Data ke 3"]
-- -- Jawaban codenya sbb

-- main :: IO()
-- main = addList []                                     

-- addList :: [String] -> IO()
-- addList oldValue = do
--                      putStrLn "\na> Add New List d> Done"
--                      pilihanMenu <- getLine 
--                      case pilihanMenu of
--                         "a"  -> do
--                                    putStr "Insert new value : "
--                                    newValue <- getLine 
--                                    let newValueList = oldValue ++ (newValue : [])
--                                 --    print newValueList 
--                                    addList  newValueList
--                         "d"  -> print oldValue
--                         _    -> do 
--                                    putStrLn "Please choose first letter from menu!"
--                                    print oldValue
--                                    addList oldValue

-- | Pertemuan 14
-- MONOIDS
-- Newtype dan Data penggunaan nya sama
-- Perbedaannya Newtype terbatas utk 1 jenis data saja 

-- -- anotherMap :: [Integer] 
-- -- anotherMap = map (+1) [1,2,3] 

-- -- cetak :: Show a => a -> IO () 
-- -- cetak xx = print xx 

-- -- anotherFM :: IO () 
-- -- anotherFM = foldMap cetak [1,2,3] 

-- --foldMap, akan melakukan fold dan map bersamaan

-- -- >>> anotherMap
-- -- [2,3,4]

-- -- ghci> anotherFM
-- -- 1
-- -- 2     
-- -- 3

-- -- MONOID Law
-- -- Monooid hanya utk string, karena ini berfungsi seperti concat 
-- -- mempty <> x == x
-- -- x <> mempty == x 
-- -- (x <> y ) <> z == x <> (y <> z)

-- -- >>> "Hello world" <> mempty
-- -- "Hello world"
-- -- >>> show 10 <> mempty
-- -- "10"
-- -- >>> mempty <> "Hello world"
-- -- "Hello world"
-- -- >>> "o" <> "K" <> "e"
-- -- "oKe"
-- -- >>> "o" <> ("K" <> "e")
-- -- "oKe"
-- -- >>> ("o" <> "k") <> "e"
-- -- "oke"
-- -- >>> "1" <> "2"
-- -- "12"
-- -- >>> show 1 <> show 2
-- -- "12"
-- -- >>> [1,2,3] <> [4,5,6]
-- -- [1,2,3,4,5,6]

-- import Data.Monoid 

-- -- >>> Sum [1,2,3]
-- -- Sum {getSum = [1,2,3]}

-- -- >>> :t Sum
-- -- Sum :: a -> Sum a
-- -- >>> :t getSum
-- -- getSum :: Sum a -> a
-- -- >>> getSum (Sum 1 <> Sum 2 <> mempty)
-- -- 3
-- -- >>> getSum (Sum 10)
-- -- 10
-- -- >>> product [1,2,3,4]
-- -- 24
-- -- >>> Product 3
-- -- Product {getProduct = 3}
-- -- >>> getProduct (Product 3 <> Product 4 <> mempty)
-- -- 12
-- -- >>> getProduct (Product 3)
-- -- 3
-- -- >>> Just "Hello" <> Just "World"
-- -- Just "HelloWorld"
-- -- >>> Just "Hello" <> Nothing
-- -- Just "Hello"
-- -- >>> Nothing <> Just "World"
-- -- Just "World"
-- -- >>> Just (Product 4) <> Just (Product 5)
-- -- Just (Product {getProduct = 20})
-- -- >>> mconcat [Just $ Sum 2, Just $ Sum 3, Nothing, Just $ Sum 10, Nothing]
-- -- Just (Sum {getSum = 15})
-- -- >>> getSum <$> mconcat [Just $ Sum 2, Just $ Sum 3, Nothing, Just $ Sum 10, Nothing]
-- -- Just 15

-- name :: IO (IO()) 
-- name = do 
--    putStrLn "What is your name?" 
--    x <- getLine 
--    return (putStrLn ( "Your name is " ++ x))

-- age :: IO(IO())
-- age = do 
--    putStrLn "What is your age " 
--    x <- getLine 
--    return (putStrLn ( "Your age is " ++ x))

-- runWizzard :: IO(IO a ) -> IO a
-- runWizzard request = do 
--    respond <- request 
--    respond

-- main :: IO () 
-- main = runWizzard (name <> age)

-- | Pertemuan 15 
-- MONAD
-- >> dibaca 'and then', 
-- >>= dibaca 'bind', utk melempar data

-- insertNewList :: [String] -> IO () 
-- insertNewList oldvalue = do 
--    putStrLn "Masukan Data" 
--    newvalue <- getLine 
--    let allList = oldvalue ++ [newvalue]
--    print allList 
--    insertNewList allList

-- -- ghci> insertNewList []
-- -- Masukan Data
-- -- a
-- -- ["a"]
-- -- Masukan Data
-- -- b
-- -- ["a","b"]
-- -- Masukan Data
-- -- c
-- -- ["a","b","c"]
-- -- Masukan Data
-- -- d
-- -- ["a","b","c","d"]

-- main :: IO() 
-- main = insertNewList []

mainz :: IO ()
mainz = addList []

addList :: [String] -> IO()
addList oldvalue = do
    putStrLn "(a) Add New List (d) Done"
    pilihanMenu <- getLine
    case pilihanMenu of
       "a" -> do
              putStr "Insert new value :"
              newvalue <- getLine
              let newvaluelist = oldvalue ++ [newvalue]
              print newvaluelist
              addList newvaluelist
       "d" -> print oldvalue
       _   -> do
              putStrLn "Please choose first letter from menu!"
              print oldvalue
              addList oldvalue

-- ghci> main
-- (a) Add New List (d) Done
-- a
-- Insert new value :wew
-- ["wew"]
-- (a) Add New List (d) Done
-- a
-- Insert new value :weks
-- ["wew","weks"]
-- (a) Add New List (d) Done
-- a
-- Insert new value :a
-- ["wew","weks","a"]
-- (a) Add New List (d) Done
-- d
-- ["wew","weks","a"]

-- Andthen (>>) Monad
-- (>>) :: IO a -> IO b -> IO b

-- ghci> Just 10 >> Just 20
-- Just 20
-- ghci> pure 2 >> pure 5 
-- 5
-- ghci> pure 100 >> Just 90
-- Just 90
-- ghci> Nothing >> Just 6
-- Nothing

-- Tapi ini tidak berlaku jika putstr atau print, maka hasilnya akan tetap di cetak, contoh sbb

mainx :: IO ()
mainx = putStrLn "Hello" >> putStrLn "world!"

-- ghci> main
-- Hello
-- world!

-- Bind

-- (>>=) :: IO a -> (a -> IO b) -> IO b

-- Bind akan mengambil variable dari IO a kemudian valuenya akan ditransfer ke IO b, dan tentu saja bisa digunakan di variable b dan hasilnya akan mempengaruhi output yg dihasilkan

main2 :: IO ()
main2 = putStr "What is your name?"
       >> getLine
       >>= \a -> putStr "How old are you?"
       >> getLine
       >>= \b -> print (a,b)

-- Atau jika dipermanis dengan do notation sbb

main3 :: IO ()
main3 = do
          putStr "What is your name?"
          a <- getLine
          putStr "How old are you?"
          b <- getLine
          print (a,b)

-- ghci> main

-- What is your name?Erwin
-- How old are you?80
-- ("Erwin","80")

-- contoh lain maybe monad dan bind

maybeFunc1 :: String -> Maybe Int
maybeFunc1 "" = Nothing
maybeFunc1 str = Just $ length str

maybeFunc2 :: Int -> Maybe Float
maybeFunc2 i = if i `mod` 2 == 0
  then Nothing
  else Just ((fromIntegral i) * 3.14159)

maybeFunc3 :: Float -> Maybe [Int]
maybeFunc3 f = if f > 15.0
  then Nothing
  else Just [floor f, ceiling f]


-- dijalankan tanpa bind sbb (function standard biasa)

runMaybeFuncs :: String -> Maybe [Int]
runMaybeFuncs input = case maybeFunc1 input of
  Nothing -> Nothing
  Just i -> case maybeFunc2 i of
    Nothing -> Nothing
    Just f -> maybeFunc3 f

-- Hasilnya sbb
-- ghci> maybeFunc1 ""
-- Nothing
-- ghci> maybeFunc1 "Erwin"
-- Just 5
-- ghci> maybeFunc1 "Erwin K"
-- Just 7
-- ghci> maybeFunc2 10
-- Nothing
-- ghci> maybeFunc2 12
-- Nothing
-- ghci> maybeFunc2 11
-- Just 34.55749
-- ghci> maybeFunc3 2.5
-- Just [2,3]
-- ghci> maybeFunc3 3.5
-- Just [3,4]
-- ghci> runMaybeFuncs "e"
-- Just [3,4]

-- Dengan bind

runMaybeFuncsBind :: String -> Maybe [Int]
runMaybeFuncsBind input = maybeFunc1 input >>= maybeFunc2 >>= maybeFunc3

-- ghci> runMaybeFuncsBind "e"
-- Just [3,4]

-- Dan  bisa dipercantik dengan do notation

runMaybeFuncsDo :: String -> Maybe [Int]
runMaybeFuncsDo input = do
  i <- maybeFunc1 input
  f <- maybeFunc2 i
  maybeFunc3 f

-- ghci> runMaybeFuncsDo "e"
-- Just [3,4]

-- contoh lain jika kita ingin memodifikasi result func1 sbb

runMaybeFuncsDo2 :: String -> Maybe [Int]
runMaybeFuncsDo2 input = do
  i <- maybeFunc1 input
  f <- maybeFunc2 (i + 2)
  maybeFunc3 f

-- ghci> runMaybeFuncsDo2 "e"
-- Just [9,10]

-- dan sebelum di sugarized dgn do notation (masi menggunakan bind dan lambda) sbb
-- Not so nice

runMaybeFuncsBind2 :: String -> Maybe [Int]
runMaybeFuncsBind2 input = maybeFunc1 input
  >>= (\i -> maybeFunc2 (i + 2))
  >>= maybeFunc3

-- ghci> runMaybeFuncsBind2 "e"
-- Just [9,10]

-- Read 

-- dipakai utk casting (mengubah jenis dari variable yg awalnya string menjadi type lain)
-- jika dilihat signaturenya adalah sbb

-- ghci> :t read
-- read :: Read a => String -> a

-- contoh code:

main' :: IO ()
main' = do
         let demoInt = read "100" :: Int
         let demoDouble = read "100" :: Double
         print demoInt
         print demoDouble

--  ghci> main
-- 100
-- 100.0

-- ReadLn

-- readLn :: Read a=> IO a

-- •	readLn akan membaca sebuah baris dari input user dan mengconvert ke dalam a (jika bisa dibaca)
-- tapi tidak bisa digunakan untuk string, jika ingin inputnya string maka pakai getLine saja

readAInt :: IO Int
readAInt = readLn

readABool :: IO Bool
readABool = readLn

-- ghci> readAInt
-- 10
-- 10
-- ghci> readABool
-- True
-- True
-- ghci> readABool
-- False
-- False

-- contoh penggunaaan >> andthen dan >>= bind

main'' :: IO ()
main'' = putStrLn "Please enter a number: " >> (readLn >>= (\n-> putStrLn (show (n+1))))

-- ghci> main
-- Please enter a number: 
-- 1234
-- 1235

-- data type

-- data Person = Person String Int

-- name :: Person -> String
-- name (Person x _) = x

-- age :: Person -> Int
-- age (Person _ x) = x

-- ghci> name (Person "Toni" 20)
-- "Toni"
-- ghci> age (Person "Toni" 20)    
-- 20

-- Seperti kita pelajari sebelumnya menulisan diatas bisa saja salah, karena tidak jelas string itu apa, int itu apa datanya, maka untuk memperjelasnya kita bisa menulis sbb
-- dengan demikian kita bisa langsung tahu, variable yg harus kita isi adalah name typenya string dan umur typenya int

-- cara pemakaiannya, harus memakai deriving Show sbb
data Person = Person { name :: String, age :: Int } deriving Show

kuldeep :: Person
kuldeep = Person { name = "Kuldeep", age =24}

-- ghci> kuldeep
-- Person {name = "Kuldeep", age = 24}


adithya :: Person
adithya = kuldeep { name = "Adithya" }

-- ghci> kuldeep
-- Person {name = "Kuldeep", age = 24}

-- ghci> adithya
-- Person {name = "Adithya", age = 24}

-- Pattern Matching
printName :: Person -> IO ()
printName (Person {name = x}) = putStrLn x

-- ghci> printName (Person {name = "Emurgo", age = 10})
-- Emurgo
-- beginilah cara mengunwrap data dari sebuah data type


-- TASK 1

-- Buat sebuah aplikasi kecil tentang daftar siswa, yang disimpan di dalam record type data yg disimpan dalam sebuah list dengan ketentuan sbb:
-- 1.Ada menu untuk memilih proses apa yg dikehendaki
--      Pilih menu : (a) Tambah Murid & Nilai     (b) Cetak List Murid      (q) Keluar
-- a. Tambah Murid & Nilai
--      Masukan nama murid ?  Budi
--      Kelas ? IV
--      Nilai ?  100 
-- b. Cetak semua daftar murid dan nilai mereka dalam sebuah table sederhana, dengan recursive, ada status lulus jika nilai diatas 60 dan tidak jika dibawah 60, setelah dicetak seperti dibawah ini, maka kembali ke menu pilihan
-- ----------------------------------------------------------------
-- No. |  Nama     |       Kelas      |     Nilai    |  Lulus 
-- --------------------------------------------------------------- 
-- 1         Budi                IV                    100         Y
-- 2         Rudi                III                    80            Y
-- 3         Ucok               V                     45            N
-- ---------------------------------------------------------------
-- c.jika dipilih q, maka keluar dari aplikasi 



-- Jawaban Full

data Murid = Murid { nama :: String, kelas:: String, nilai :: Int  } deriving Show
type ListMurid = [Murid]

main :: IO ()
main = menupilihan []

-- SOAL sample
-- menupilihan :: ListMurid -> IO()
-- menupilihan murid = do 
--                        print murid 
--                        namaMurid <- getLine 
--                        print namaMurid
--                        kelas <- getLine 
--                        print kelas
--                        nilai <- getLine 
--                        print nilai
--                        let newValue = murid ++ [(Murid {nama =namaMurid, kelas=kelas, nilai = read nilai})]
--                        menupilihan newValue


menupilihan :: ListMurid -> IO()
menupilihan murid = do
                       putStrLn "Pilih menu : (a) Tambah Murid & Nilai     (b) Cetak List Murid      (q) Keluar "
                       putStr "Pilihan anda : "
                       pilihanMenu <- getLine
                       case pilihanMenu of
                           "a" -> inputData murid
                           "b" -> cetak murid
                           "q" -> do
                                  print murid
                                  return()
                           _   -> menupilihan murid

inputData :: ListMurid -> IO()
inputData murid = do
                       putStr "Masukan nama murid ? "
                       namaMurid <- getLine

                       putStr "Kelas ? "
                       kelas <- getLine

                       putStr "Nilai ? "
                       nilai <- getLine

                       let newValue = murid ++ [(Murid {nama =namaMurid, kelas=kelas, nilai = read nilai})]
                       menupilihan newValue

cetak :: ListMurid -> IO()
cetak muridList = do
                    putStrLn "--------------------------------------------------------------"
                    putStrLn "No.  |   Nama     |       Kelas      |     Nilai    |  Lulus  "
                    putStrLn "--------------------------------------------------------------"
                    getValue muridList 0
                    menupilihan muridList

getValue :: ListMurid -> Int -> IO()
getValue (x:xs) urutan = do
                        let no = urutan + 1
                        getOneLine x no
                        getValue xs no
getValue _ _ = putStrLn "--------------------------------------------------------------"

getOneLine :: Murid -> Int ->  IO()
getOneLine (Murid { nama = vnama, kelas = vkelas, nilai = vnilai }) n = do
       let panjangChar1 = length (show n)
       let panjangspace1 = 7 - panjangChar1
       let panjangChar2 = length vnama
       let panjangspace2 = 15 - panjangChar2
       let panjangChar3 = length vkelas
       let panjangspace3 = 20 - panjangChar3
       let panjangspace4 = 13
       if vnilai >= 60
       then
           putStrLn (show n ++ "."  ++ addSpace panjangspace1 ++ vnama ++ addSpace panjangspace2 ++ vkelas  ++ addSpace panjangspace3 ++ show vnilai ++ addSpace panjangspace4 ++  "Y")
       else
           putStrLn (show n ++ "."  ++ addSpace panjangspace1 ++ vnama ++ addSpace panjangspace2 ++ vkelas  ++ addSpace panjangspace3 ++ show vnilai ++ addSpace panjangspace4 ++ "N")

addSpace :: Int -> String
addSpace n = remspace (unwords (replicate n "-"))

remspace :: String -> String
remspace [] = []
remspace ('-':xs) = remspace xs
remspace (x:xs)   = x: remspace xs


-- tampilan all function
-- ghci> main
-- Pilih menu : (a) Tambah Murid & Nilai     (b) Cetak List Murid      (q) Keluar 
-- Pilihan anda : a
-- Masukan nama murid ? Budi
-- Kelas ? I
-- Nilai ? 20
