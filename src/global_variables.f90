module global_variables
  implicit none
  real(8),parameter :: pi = 4d0*atan(1d0)
  complex(8),parameter :: zi = (0d0, 1d0)


! grid
  integer :: nx
  real(8) :: lsize


  !wavefunction
  real(8),allocatable :: psi(:)

  ! potential
  real(8),allocatable :: vpot(:)

  !complex wavefunction
  complex(8),allocatable :: zpsi(:)
  
end module global_variables
