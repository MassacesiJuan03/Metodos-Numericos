function calcularX0
  disp("Ingrese un número: ");
  x = input('');
  func = (3*(x)^2)-12;
  i = 1;
  if (func == 0)
    printf("La función es cero en ")
    disp(x);
  endif
  while (func!=0 | i<99)
    disp("Ingrese un número: ");
    x = input('');
    func = (3*(x)^2)-12;
    i += 1;
    if (func == 0)
      printf("La función es cero en ")
      disp(x);
    endif
  endwhile
end
