program innerProductAndAngle;

uses math;

var
  u, v: array[1..2] of real;
  innerProduct, moduleU, moduleV, angle: real;

begin
  writeln('Digite os valores de u: ');
  write('x1: ');
  readln(u[1]);
  write('y1: ');
  readln(u[2]);

  writeln('Digite os valores de v: ');
  write('x2: ');
  readln(v[1]);
  write('y2: ');
  readln(v[2]);

  innerProduct := u[1] * v[1] + u[2] * v[2];

  moduleU := sqrt(u[1] * u[1] + u[2] * u[2]);
  moduleV := sqrt(v[1] * v[1] + v[2] * v[2]);

  angle := innerProduct / (moduleU * moduleV);

  angle := arccos(angle) * 180 / pi;

  writeln('Produto interno: ', innerProduct:0:2);
  writeln('Angulo (em graus): ', angle:0:2);
  readln;
end.
