function normaInfinita
  %Ingresar componentes del vector
  for i=1:5
    disp("Ingrese una componente al vector")
    vector(i) = input('');
  endfor
  % Obtener la norma infinita del vector
  j = 1;
  maxComponent = abs(vector(1))
  while (j<=5)
    if abs(vector(j)) >= maxComponent
      maxComponent = abs(vector(j));
    endif
    j += 1;
  endwhile
  disp("La norma infinita del vector es: "), maxComponent
end
