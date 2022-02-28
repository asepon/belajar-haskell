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
task1 :: [Int] -> Int -> [Int]
task1 x y = y : x 
-- >>> task1 [1,2,3] 10
-- [10,1,2,3]

--2. Buat sebuah function yg akan menambahkan setiap inputan dari user kedalam list dibelakang list yg ada
-- task2 [1,2,3] 20 = [1,2,3,20]
-- jawaban 
task2 :: [Int] -> Int -> [Int] 
task2 x y = x ++ [y]
-- >>> task2 [1,2,3] 20
-- [1,2,3,20]

--3. Buat function yg mengambil 1 angka didepan sebuah list 
-- task3 [1,2,3] = 1
-- jawaban 
task3 :: [Int] -> Int 
task3 x = head x 
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
