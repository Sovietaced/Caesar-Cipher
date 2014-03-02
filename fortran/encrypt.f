function to_upper(strIn) result(strOut)  
  implicit none
  
  character(len=*), intent(in) :: strIn
  character(len=len(strIn)) :: strOut
  integer :: i,j

  do i = 1, len(strIn)
    j = iachar(strIn(i:i))
    if (j>= iachar("a") .and. j<=iachar("z") ) then
      strOut(i:i) = achar(iachar(strIn(i:i))-32)
    else
      strOut(i:i) = strIn(i:i)
    end if
  end do
end function to_upper

function shift(strIn, numShift) result(strOut)
  implicit none

  character(len=*), intent(in) :: strIn
  character(len=len(strIn)) :: strOut
  integer :: i,j,low,high,numShift
   
  low = iachar("A")
  high = iachar("Z")
  
  do i = 1, len(strIn)
    j = iachar(strIn(i:i))
    ! Only evaluate valid characters
    if (j /= 32) then 
      if (j + numShift >= high) then
        strOut(i:i) = achar(low+(high-j))
      else
        strOut(i:i) = achar(j+numShift)
      end if
    else
      strOut(i:i) = strIn(i:i)
    end if
  end do
end function shift

program main
  character(100) :: input, to_upper, shift
  integer :: numShift
  print *, "Enter a string"
  READ(*,*) input
  input = to_upper(input)
  print *, input
  print *, "Enter an integer"
  READ(*,*) numShift
  input = shift(input, numShift)
  print *, input
end program main

