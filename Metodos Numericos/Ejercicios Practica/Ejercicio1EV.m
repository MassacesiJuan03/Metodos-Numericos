function valorMedioTemperatura
  for i=1:24
    disp("Ingrese la temperatura");
    temp = input('');
    printf("La temperatura media es: ");
    disp(round(temp/2))
  endfor
end

