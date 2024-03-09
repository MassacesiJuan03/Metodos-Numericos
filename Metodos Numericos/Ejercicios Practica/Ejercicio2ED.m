function menordeCuatro
  disp("Ingrese un dato(número): ");
  x1 = input('');
  disp("Ingrese un dato(número): ");
  x2 = input('');
  disp("Ingrese un dato(número): ");
  x3 = input('');
  disp("Ingrese un dato(número): ");
  x4 = input('');

  if x1<x2 && x1<x3 && x1<x4
    printf("El menor de los cuatro es: "), x1
  elseif x2<x1 && x2<x3 && x2<x4
    printf("El menor de los cuatro es: "), x2
  elseif x3<x1 && x3<x2 && x3<x4
    printf("El menor de los cuatro es: "), x3
  else
    printf("El menor de los cuatro es: "), x4
  endif
end
