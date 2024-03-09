function calcularPendiente
  disp("Ingrese la abscisa del primer punto");
  x1 = input('');
  disp("Ingrese la ordenada del primer punto");
  y1 = input('');
  disp("Ingrese la abscisa del segundo punto");
  x2 = input('');
  disp("Ingrese la ordenada del segundo punto");
  y2 = input('');
  disp("La pendiente de la recta secante es: ")
  m = (y2-y1)/(x2-x1)
end

