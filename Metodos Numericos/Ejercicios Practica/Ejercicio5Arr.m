% warning('off', 'Octave:possible-matlab-short-circuit-operator');
function diferenciaDeVectores
  disp("Ingrese la cantidad de componentes de su vector 1: ");
  longitud1 = input('');
  disp("Ingrese la cantidad de componentes de su vector 2: ");
  longitud2 = input('');
  while (longitud1<=0 | longitud2<=0 | longitud1!=longitud2)
    disp("Ingrese la cantidad de componentes de su vector 1: ");
    longitud1 = input('');
    disp("Ingrese la cantidad de componentes de su vector 2: ");
    longitud2 = input('');
    if (longitud1<=0 | longitud2<=0 | longitud1!=longitud2)
      disp("Tamaño incorrecto, intente de nuevo");
    endif
  endwhile
  % Leemos el vector
  for i=1:longitud1
    printf("Vector 1: Ingrese un valor para la componente ");
    disp(i);
    vector1(i) = input('');
    printf("Vector 2: Ingrese un valor para la componente ");
    disp(i);
    vector2(i) = input('');
  endfor
  printf("Vector 1: ");
  disp(vector1);
  printf("Vector 2: ");
  disp(vector2);
  printf("Vector resta: ");
  disp(vector1-vector2);
 end


