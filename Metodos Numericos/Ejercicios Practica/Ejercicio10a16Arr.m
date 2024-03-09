function Ejercicio16Arr
  matrix1 = leerMatriz;
  disp("Matrix1 =");
  disp(matrix1);
  matrix2 = leerMatriz;
  disp("Matrix2 =");
  disp(matrix2);
  % matrixProducto = matrix1*matrix2.
  % Verificamos que columns(matrix1)==rows(matrix2).
  while columns(matrix1)!=rows(matrix2)
    matrix1 = leerMatriz;
    matrix2 = leerMatriz;
    if columns(matrix1)!=rows(matrix2)
      disp("Incorrecto, debido al orden de las matrices no es posible realizar el producto");
    endif
  endwhile
  % Definimos una nueva matriz del producto entre matrix1 y matrix2
  matrixProducto = matrix1*matrix2;
  disp("MatrixProducto =");
  disp(matrixProducto);
end

function Ejercicio15Arr
  A = leerMatrizCuadrada;
  disp("A =");
  disp(A);
  % Definimos un vector 'X' de orden N.
  for i=1:rows(A)
    printf("Ingrese un valor para el vector en la componente ");
    disp(i);
    X(i,1) = input('');
  endfor
  disp("X =");
  disp(X);
  % Vector 'Y' almacena el resultado del producto de la Matriz 'A' por el vector 'X'.
  Y = A*X;
  disp("Y =");
  disp(Y);
end

function Ejercicio14Arr
  A = leerMatrizCuadrada;
  disp("A =");
  disp(A);
  % Recorremos la matriz A para obtener el máximo absoluto de cada fila.
  for i=1:rows(A)
    maxAbs = A(i,1);
    for j=1:columns(A)
      if abs(A(i,j))>=maxAbs
        maxAbs = abs(A(i,j));
      endif
    endfor
    NormalFila(i) = maxAbs;
  endfor
  printf("NormalFila =");
  disp(NormalFila);
  % Calculamos norma infinito del vector NormalFila.
  normaInfinito = max(abs(NormalFila));
  if normaInfinito==0
    disp("Matriz Nula");
  else
    printf("La norma es ");
    disp(normaInfinito);
  endif
end

function Ejercicio13Arr
  A = leerMatrizCuadrada;
  disp("A =");
  disp(A);
  % Creamos la matriz TS(Triangular Superior) de orden N.
  for i=1:rows(A)
    for j=1:columns(A)
      if (i>j)
        TS(i,j) = 0;
      elseif (i<=j)
        TS(i,j) = A(i,j)/A(i,i);
      endif
    endfor
  endfor
  disp("TS =");
  disp(TS);
end

function Ejercicio12Arr
  A = leerMatrizCuadrada;
  disp("A =");
  disp(A);
  % Creamos la matriz TS(Triangular Inferior) de orden N.
  for i=1:rows(A)
    for j=1:columns(A)
      if (j>i)
        TS(i,j) = 0;
      elseif (i>j)
        TS(i,j) = A(i,j)/A(i,i);
      else
        TS(i,j) = 1;
      endif
    endfor
  endfor
  disp("TS =");
  disp(TS);
end

function Ejercicio11Arr
  matrix = leerMatriz;
  vector = leerVector;
  %Como asumimos que el orden del vector y la matriz son tales que es posible el producto.
  % Procedemos a realizar el producto.
  if columns(vector)==rows(matrix)
    vectorResultado = vector*matrix;
    printf("Vector producto = ");
    disp(vectorResultado);
  else
    disp("Incorrecto, no es posible realizar el producto");
  endif
end

function Ejercicio10Arr
  matrix = leerMatriz;
  disp("Matriz = ");
  disp(matrix);
end

function vector = leerVector
  disp("Ingrese el tamaño para su vector");
  longitud = input('');
  while (longitud<=0)
    disp("Ingrese el tamaño para su vector");
    longitud = input('');
    if (longitud<=0)
      disp("Incorrecto, intente de nuevo");
    endif
  endwhile
  for i=1:longitud
    printf("Ingrese un valor para la componente ");
    disp(i);
    vector(i) = input('');
  endfor
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

function matrix = leerMatrizCuadrada
  disp("Ingrese un valor para la cantidad de filas: ");
  row = input('');
  disp("Ingrese un valor para la cantidad de columnas: ");
  column = input('');
  [row, column] = validar_entrada(row, column);
  % Validar que sea cuadrada
  [row, column] = validarMatrizCuadrada(row, column);
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

function [row, column] = validarMatrizCuadrada(row, column)
  while (row!=column)
    disp("Ingrese un valor para la cantidad de filas: ");
    row = input('');
    disp("Ingrese un valor para la cantidad de columnas: ");
    column = input('');
    [row, column] = validar_entrada(row, column); % Validamos que la entrada sea > 0
    if (row!=column)
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
