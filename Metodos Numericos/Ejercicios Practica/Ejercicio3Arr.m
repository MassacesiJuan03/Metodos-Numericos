function normaInfinito
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
  printf("Ingrese un valor para la componente ");
  disp(1);
  vector(1) = input('');
  norma_infinito = abs(vector(1));
  for i=2:longitud
    printf("Ingrese un valor para la componente ");
    disp(i);
    vector(i) = input('');
    if (abs(vector(i)) >= norma_infinito) %Verificamos el valor máximo
      norma_infinito = abs(vector(i));
    endif
  endfor
  printf("La norma infinito del vector es: Norma infinito = ");
  disp(norma_infinito)
end
