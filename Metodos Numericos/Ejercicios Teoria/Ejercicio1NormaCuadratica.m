function normaCuadratica
  % Elevamos al cuadrado las componentes y sumamos
  sumaCuadratica = 0
  for i=1:5
    disp("Ingrese un componente")
    vector(i) = input("");
    sumaCuadratica += (vector(i)^2);
  endfor
  % Calculamos la norma cuadratica
  disp("La norma cuadratica es:");
  disp(sqrt(sumaCuadratica));
 end
