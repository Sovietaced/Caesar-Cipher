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

function shift(strIn, num) result(strOut)
  implicit none

  character(len=*), intent(in) :: strIn
  character(len=len(strIn)) :: strOut
  integer :: i,j,low,high,num, numShift
    
  low = iachar("A")
  high = iachar("Z")
  
  ! Handle multiple wraps  
  if(num >= 26) then
    numShift = mod(num, 26)
  else
    numShift = num
  end if
 
  do i = 1, len(strIn)
    j = iachar(strIn(i:i))
    ! Only evaluate valid characters
    if (j /= 32) then
      if (j - numShift < low) then
        strOut(i:i) = achar(high-((numShift - 1)-(j-low)))
      else
        strOut(i:i) = achar(j-numShift)
      end if
    else
      strOut(i:i) = strIn(i:i)
    end if
  end do
end function shift

program main
  character(100) :: input, to_upper, shift
  integer :: num, i
  print *, "Enter a string"
  READ(*,*) input
  input = to_upper(input)
  print *, "Enter an integer"
  READ(*,*) num
  do i = 0, num
    print *, "Caesar ",num-i,": ",shift(input, i)
  end do
end program main

