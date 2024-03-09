function mayorOrdenada
  [x1, y1, x2, y2] = leer_puntos;
  if y1 > y2
    x1 = x1
    y1 = y1
  else
    x2 = x2
    y2 = y2
  end
end

function [x1, y1, x2, y2] = leer_puntos
  disp("Ingrese la abscisa del primer punto");
  x1 = input('');
  disp("Ingrese la ordenada del primer punto");
  y1 = input('');
  disp("Ingrese la abscisa del segundo punto");
  x2 = input('');
  disp("Ingrese la ordenada del segundo punto");
  y2 = input('');
end
