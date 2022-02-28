import GHC (ApplicativeArg(xarg_app_arg_many))
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

-- TUGAS
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

