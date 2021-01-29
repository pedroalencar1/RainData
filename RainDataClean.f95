! A fortran95 program for G95
! By WQY
program RainDataClean
  implicit none
  integer y(40000), m(40000), d(40000), n, y0, i, j, k1, k2, a, b, c, ndays
  real p(40000)
  character file_in*30, file_out*30

        WRITE(*,*)'******************************************'
        WRITE(*,*)'               RainDataClean              '
        WRITE(*,*)'                                          '
        WRITE(*,*)'        Select event day only using       '
        WRITE(*,*)'      output data from RainData.f90       '
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
write(*,'(a)')'How many years long is the series?'
read(*,*)n
write(*,'(a)')'What is the startig year'
read(*,*)y0

j = mod(y0,4)
k1 = mod(n,4)
k2 = (n-k1)/4

if (j+k1.gt.4) then
    b = k2+1
    else
        b = k2
end if

ndays = b*366 + (n-b)*365
c = ndays+1

i=1
open(60, file=file_in)
open(70, file=file_out)

do while (i.le.c)
        read(60,*) y(i), m(i), d(i), p(i)
        if  (p(i) .gt. 0.) then
            write(70,*) y(i), m(i), d(i), p(i)
        end if
        i = i+1
end do
close(60)
close(70)

Write(*,*)' '
Write(*,*)' '
Write(*,*)'                                 ***************************'
Write(*,*)'                                 *  Check the output file! *'
Write(*,*)'                                 ***************************'
Write(*,*)' '
Write(*,*)' '

pause
end
