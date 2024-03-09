function Ejercicio9Arr
  vector1 = leerArray;
  vector2 = leerArray;
  vectorDiferencia = vector1 - vector2;
  normaInfinito = max(abs(vectorDiferencia));
  if normaInfinito != 0
    printf("El vector normalizado con dicha norma infinito es: Vector normalizado =");
    disp(vectorDiferencia/normaInfinito);
  else
    disp("La norma del vector diferencia es nula");
  endif
end
function Ejercicio8Arr
  vector = leerArray;
  normaInfinito = max(abs(vector));
  if normaInfinito != 0
    printf("La norma infinito del vector es: Norma Infinito =");
    disp(normaInfinito);
    printf("El vector normalizado con dicha norma infinito es: Vector normalizado =");
    disp(vector/normaInfinito);
  endif
end
function Ejercicio7Arr
  vector1 = leerArray;
  vector2 = leerArray;
  vectorDiferencia = vector1 - vector2;
  normaCuadratica = obtenerModulo(vectorDiferencia);
  if normaCuadratica != 0
    printf("El vector diferencia normalizado es: Vector normalizado =");
    disp(vectorDiferencia/normaCuadratica);
  else
    printf("La norma del vector diferencia es nula");
  endif
end
function vector = leerArray
  for i=1:3
    printf("Ingrese un valor para la componente ");
    disp(i);
    vector(i) = input('');
  endfor
end
function normaCuadratica = obtenerModulo(vector)
  sumaCuadratica = 0;
  for i=1:length(vector)
    sumaCuadratica += vector(i)^2;
  endfor
  normaCuadratica = sqrt(sumaCuadratica);
end



