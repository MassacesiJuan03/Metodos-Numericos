function signosOpuestos2
  disp("Ingrese la abscisa del primer punto: ");
  x1 = input('');
  disp("Ingrese la ordenada del primer punto: ");
  y1 = input('');
  disp("Ingrese la abscisa del segundo punto");
  x2 = input('');
  disp("Ingrese la ordenada del segundo punto");
  y2 = input('');
  % También existe la función sign() para determinar el signo de un número
  if y1*y2 < 0
    fprintf("El valor medio de las ordenadas es: ")
    valorMedio = (x2+x1)/2
  else
    printf("Ordenadas de signo igual")
  endif
end


