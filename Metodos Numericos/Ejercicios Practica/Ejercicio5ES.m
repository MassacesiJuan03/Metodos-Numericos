function InterseccionEjeX
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
  % Ec. recta: y = (mx - mx1) + y1
  % Xr: -y1 = m(x - x1)
  % Xr: -y1/m + x1 = x
  disp("El valor de la abscisa en la cual la recta que pasa por dichos puntos, intersecta al eje de las abscisas es: ")
  Xr = -y1/m + x1
  disp("El valor de la función en ese punto es: ")
  Yr = m*(Xr-x1) + y1
end
