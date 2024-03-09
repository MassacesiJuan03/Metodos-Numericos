function Ejercicio5Sub
  vector1 = leerVectorFila;
  vector2 = leerVectorFila;
  while (length(vector1)!=length(vector2))
    vector1 = leerVectorFila;
    vector2 = leerVectorFila;
    if (length(vector1)!=length(vector2))
      disp("Incorrecto, los vectores deben tener el mismo tamaño");
    endif
  endwhile
  vectorDiferencia = vector1 - vector2;
  printf("La norma infinito del vector diferencia es ");
  disp(max(abs(vectorDiferencia)));
end

function Ejercicio4Sub
  X1 = leerVectorColumna;
  disp("X1 =");
  disp(X1);
  G = leerMatriz;
  disp("G =");
  disp(G);
  % Producto = matrix*vector
  while (columns(G)!=rows(X1))
    X1 = leerVectorColumna;
    G = leerMatriz;
    if (columns(G)!=rows(X1))
      disp("Incorrecto, debido al orden no es posible realizar el producto");
    endif
  endwhile
  vectorProducto = G*X1;
  disp("Vector Producto =");
  disp(vectorProducto);
  C = leerVectorColumna;
  disp("C =");
  disp(C);
  X2 = vectorProducto + C;
  disp("X2 =");
  disp(X2);
end

function Ejercicio3Sub
  vector = leerVectorColumna;
  disp("Vector =");
  disp(vector);
  matrix = leerMatriz;
  disp("Matrix =");
  disp(matrix);
  % Producto = matrix*vector
  while (columns(matrix)!=rows(vector))
    vector = leerVectorColumna;
    matrix = leerMatriz;
    if (columns(matrix)!=rows(vector))
      disp("Incorrecto, debido al orden no es posible realizar el producto");
    endif
  endwhile
  vectorProducto = matrix*vector;
  disp("Vector producto =");
  disp(vectorProducto);
end

function Ejercicio2Sub
  vector = leerVectorFila;
  disp("Vector =");
  disp(vector);
  norma_Cuadratica = normaCuadratica(vector);
  versor = calcularVersor(vector, norma_Cuadratica);
  printf("Versor =");
  disp(versor);
end

function Ejercicio1Sub
  vector = leerVectorFila;
  disp("Vector =");
  disp(vector);
  norma_Cuadratica = normaCuadratica(vector);
  printf("La norma cuadrática del vector es ");
  disp(norma_Cuadratica);
end

function matrix = leerMatriz
  disp("Ingrese un valor para la cantidad de filas: ");
  row = input('');
  disp("Ingrese un valor para la cantidad de columnas: ");
  column = input('');
  [row, column] = validar_entrada(row, column);
  % Leemos los componentes de la matriz
  for i=1:row
    disp("Ingrese un valor para la componente de la ");
    for j=1:column
      printf("Fila: ");
      disp(i);
      printf("Columna: ");
      disp(j);
      matrix(i,j) = input('');
    endfor
  endfor
end

function vector = leerVectorFila
  disp("Ingrese un valor para la longitud del vector");
  long = input('');
  longitud = validarLongitud(long);
  for i=1:longitud
    printf("Ingrese un valor para el vector en la componente ");
    disp(i);
    vector(i) = input('');
  endfor
end

function vector = leerVectorColumna
  disp("Ingrese un valor para la longitud del vector");
  long = input('');
  longitud = validarLongitud(long);
  for i=1:longitud
    printf("Ingrese un valor para el vector en la componente ");
    disp(i);
    vector(i,1) = input('');
  endfor
end

function norma_Cuadratica = normaCuadratica(vector)
  sumaCuadratica = 0;
  for i=1:length(vector)
    sumaCuadratica += vector(i)^2;
  endfor
  norma_Cuadratica = sqrt(sumaCuadratica);
end

function versor = calcularVersor(vector, norma_Cuadratica)
  versor = vector/norma_Cuadratica;
end

function long = validarLongitud(long)
  while (long<=0)
    disp("Ingrese un valor para la longitud del vector");
    long = input('');
    if (long<=0)
      disp("Incorrecto, intente de nuevo");
    endif
  endwhile
end

function [row, column] = validar_entrada(row, column)
  while (row<=0 | column<=0)
    disp("Ingrese un valor para la cantidad de filas: ");
    row = input('');
    disp("Ingrese un valor para la cantidad de columnas: ");
    column = input('');
    if (row<=0 | column<=0)
      disp("Incorrecto, intente de nuevo");
    endif
  endwhile
end
