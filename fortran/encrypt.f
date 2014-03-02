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

program main
  character(100) :: input, to_upper
  integer :: numShift
  print *, "Enter a string"
  READ(*,*) input
  input = to_upper(input)
  print *, "Enter an integer"
  READ(*,*) numShift
  print *, input
end program main

