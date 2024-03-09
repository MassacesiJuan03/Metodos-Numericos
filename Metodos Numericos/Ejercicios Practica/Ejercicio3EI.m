function serie
  % (1/2)^k*x^k, con k>=1
  % (x/2)^k, con k>=1. Si le damos valores a x tenemos una serie geométrica.
  % Ej: x=1, |r|<1 se cumple ya que r=1/2 y a=1/2 por ende la serie converge a 1.
  % Ingresamos x
  disp("Ingrese un valor para x: ");
  x = input('');
  if (abs(x/2)>1)
    disp("La serie no converge");
  else
    printf("La serie convenge a ");
    disp((x/2)/(1-(x/2)));
    k = 1;
    sumaSerie = 0;
    while (sumaSerie<31/32) % 5to término de la serie (31/32)
      sumaSerie += (x/2)^k;
      k += 1;
      printf("Resultados: ")
      disp(sumaSerie);
    endwhile
  endif
end
