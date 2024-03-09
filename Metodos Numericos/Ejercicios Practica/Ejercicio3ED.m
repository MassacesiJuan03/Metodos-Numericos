function areaDelPlanoXY
  disp("Ingrese la abscisa del punto: ");
  x1 = input('');
  disp("Ingrese la ordenada del punto: ");
  y1 = input('');
  if y1>3 && (x1+y1)>1 && y1<(2*x1+1) && y1>x1
    printf("El punto si se encuentra dentro del área definida")
  endif
end
