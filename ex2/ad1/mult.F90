module mult
contains
    subroutine mm(first, second, multiply, status)
        implicit none
        real (kind = 8), intent(in) :: first(:,:) ! pierwsza macierz
        real (kind = 8), intent(in) :: second(: ,:) ! druga macierz
        real (kind = 8), intent(out) :: multiply(:,:) ! macierz wynikowa
        integer (kind = 4), intent(out) :: status ! kod błędu, 0 gdy OK
        integer (kind = 4) :: i, j, k, firstSize(2), secondSize(2)

        firstSize(2) = size(first(1,:))  ! ile kolumn w pierwszym
        firstSize(1) = size(first(:,1))  ! ile rzędów w pierwszym
        secondSize(2) = size(second(1,:))    ! ile kolumn w drugim
        secondSize(1) = size(second(:,1))    ! ile rzędów w drugim

        multiply = 0

        if (firstSize(2) .ne. secondSize(1)) then
            status = 1
        else
            do i = 1, firstSize(1)
                do j = 1, secondSize(2)
                    multiply(i, j) = dot_product(first(i,:), second(:,j))
                end do
            end do
            status = 0
        end if
    end subroutine

end module