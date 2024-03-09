function leer_reales
  disp("Ingrese un número real");
  num = input('');
  suma = num;
  if (num != 0)
    while (num != 0)
      disp("Ingrese un número real");
      num = input('');
      suma += num;
    endwhile
    printf("La suma es: ");
    disp(suma);
  else
    printf("La suma es: ");
    disp(suma);
  endif
end

