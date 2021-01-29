! A fortran95 program for G95
! By WQY
program DataRain
  implicit none
  integer year(100), month(1200), i, defaut, n, m
  character file_in*30,file_out*30, file_clean*30
  real d1(1200), d2(1200), d3(1200), d4(1200), d5(1200), d6(1200), d7(1200), d8(1200), d9(1200), d10(1200),
  real d11(1200), d12(1200), d13(1200), d14(1200), d15(1200), d16(1200), d17(1200), d18(1200), d19(1200), d20(1200)
  real d21(1200), d22(1200), d23(1200), d24(1200), d25(1200), d26(1200), d27(1200), d28(1200), d29(1200), d30(1200), d31(1200)
  !d = rain depth in milimeter

  !Program to read a file with rain data (daily) from Funceme
  !Data has to be opened in Excel and saved without semicolon

        WRITE(*,*)'******************************************'
        WRITE(*,*)'                 RainData                 '
        WRITE(*,*)'                                          '
        WRITE(*,*)'     Rearrange rain data from Funceme     '
        WRITE(*,*)'                in Vector                 '
        WRITE(*,*)'                                          '
        WRITE(*,*)'        Technical University Berlin       '
        WRITE(*,*)'           Institute of Ecology           '
        WRITE(*,*)'                                          '
        WRITE(*,*)'            Pedro Alencar, 2019           '
        WRITE(*,*)'                                          '
        WRITE(*,*)'******************************************'

write(*,'(a)')'Insert the name of the input file: '
read(*,'(a30)')file_in
write(*,'(a)')'Insert the name of the output file: '
read(*,'(a30)')file_out
write(*,*) 'Which value is used as defaut (in month with less then 31 days)?'
read(*,*) defaut
write(*,*) 'How many years are in the file?'
read(*,*) n

m = n*12 !number of months/lines of the file
i=1
j=0

open(50,file=file_in)
open(60,file=file_out)
    do while (i.le.m)
        read(50,*) year(i), month(i), d1(i), d2(i), d3(i), d4(i), d5(i), d6(i), d7(i), d8(i), d9(i), d10(i), &
            d11(i), d12(i), d13(i), d14(i), d15(i), d16(i), d17(i), d18(i), d19(i), d20(i), d21(i), d22(i), &
            d23(i), d24(i), d25(i), d26(i), d27(i), d28(i), d29(i), d30(i), d31(i)

        write(60,*) year(i), month(i), 1, d1(i)
        write(60,*) year(i), month(i), 2, d2(i)
        write(60,*) year(i), month(i), 3, d3(i)
        write(60,*) year(i), month(i), 4, d4(i)
        write(60,*) year(i), month(i), 5, d5(i)
        write(60,*) year(i), month(i), 6, d6(i)
        write(60,*) year(i), month(i), 7, d7(i)
        write(60,*) year(i), month(i), 8, d8(i)
        write(60,*) year(i), month(i), 9, d9(i)
        write(60,*) year(i), month(i), 10, d10(i)
        write(60,*) year(i), month(i), 11, d11(i)
        write(60,*) year(i), month(i), 12, d12(i)
        write(60,*) year(i), month(i), 13, d13(i)
        write(60,*) year(i), month(i), 14, d14(i)
        write(60,*) year(i), month(i), 15, d15(i)
        write(60,*) year(i), month(i), 16, d16(i)
        write(60,*) year(i), month(i), 17, d17(i)
        write(60,*) year(i), month(i), 18, d18(i)
        write(60,*) year(i), month(i), 19, d19(i)
        write(60,*) year(i), month(i), 20, d20(i)
        write(60,*) year(i), month(i), 21, d21(i)
        write(60,*) year(i), month(i), 22, d22(i)
        write(60,*) year(i), month(i), 23, d23(i)
        write(60,*) year(i), month(i), 24, d24(i)
        write(60,*) year(i), month(i), 25, d25(i)
        write(60,*) year(i), month(i), 26, d26(i)
        write(60,*) year(i), month(i), 27, d27(i)
        write(60,*) year(i), month(i), 28, d28(i)
        if (d29(i) .ne. defaut) then
            write(60,*) year(i), month(i), 29, d29(i)
        end if
        if (d30(i) .ne. defaut) then
            write(60,*) year(i), month(i), 30, d30(i)
        end if
        if (d31(i) .ne. defaut) then
            write(60,*) year(i), month(i), 31, d31(i)
        end if

        i = i+1
    end do

close(60)
close(50)

Write(*,*)' '
Write(*,*)' '
Write(*,*)'                                 ***************************'
Write(*,*)'                                 *  Check the output files! *'
Write(*,*)'                                 ***************************'
Write(*,*)' '
Write(*,*)' '

end
