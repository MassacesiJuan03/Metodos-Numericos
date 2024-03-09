function valorMaximoYMinimo
  disp("Ingrese la temperatura: ")
  temp = input('');
  tempMaxima = temp;
  tempMinima = temp;
  for i=2:24
    disp("Ingrese la temperatura: ")
    temp = input('');
    if temp >= tempMaxima
      tempMaxima = temp;
    elseif temp < tempMinima
      tempMinima = temp;
    endif
  endfor
  printf("La temperatura máxima es: ");
  disp(tempMaxima);
  printf("La temperatura mínima es: ");
  disp(tempMinima);
end
