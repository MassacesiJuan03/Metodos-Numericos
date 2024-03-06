function imprimirVersor
  % Elevamos al cuadrado las componentes y sumamos
  sumaCuadratica = 0
  for i=1:5
    disp("Ingrese una componente al vector")
    vector(i) = input('');
    sumaCuadratica += (vector(i)^2);
  endfor
  % Obtenemos la norma cuadratica y la norma infinita
  norma_Cuadratica = sqrt(sumaCuadratica)
  norma_Infinita = normaInfinita(vector)
  if norma_Infinita == 0
    disp("El vector es el vector nulo")
  else
    disp("El versor es: ")
    disp(vector / norma_Cuadratica)
  end
end

function maxComponent = normaInfinita(vector)
  % Obtener la norma infinita del vector
  j = 1;
  maxComponent = abs(vector(1));
  while (j<=5)
    if abs(vector(j)) >= maxComponent
      maxComponent = abs(vector(j));
    endif
    j += 1;
  endwhile
 end
