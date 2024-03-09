function normaCuadraticaVector
  disp("Ingrese la cantidad de componentes de su vector: ");
  longitud = input('');
  while (longitud<=0)
    disp("Ingrese la cantidad de componentes de su vector: ");
    longitud = input('');
    if longitud<=0
      disp("Tamaño incorrecto, intente de nuevo");
    endif
  endwhile
  % Leemos el vector
  sumaCuadratica = 0;
  for i=1:longitud
    printf("Ingrese un valor para la componente ");
    disp(i);
    vector(i) = input('');
    sumaCuadratica += vector(i)^2;
  endfor
  printf("La norma cuadrática del vector es ");
  disp(sqrt(sumaCuadratica));
end
