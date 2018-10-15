pro homework
x=dblarr(10,2)
y=dblarr(10,2)
  x[0,*]=[[1.0],[0.00252]]
  y[0,*]=[[1.0],[0.00252]]
mx=[[1.0,165.0],[0.0,1.0]]
my=[[1.0,165.0],[0.0,1.0]]
x[1,*]=mx##x[0,*]
y[1,*]=my##y[0,*]
print,'x1=',x[1,*]
print,'y1=',y[1,*]
print,'########################################'

b=296.69
lq=24
Q=1
b=b*1.0e-2
k=sqrt(3.0e8/1871.5e6/0.19385*b)/100.0
if Q eq 0 then begin
  mx=[[cos(k*lq),1/k*sin(k*lq)],[-k*sin(k*lq),cos(k*lq)]]
  my=[[cosh(k*lq),1/k*sinh(k*lq)],[k*sinh(k*lq),cosh(k*lq)]]
endif
if Q eq 1 then begin
  mx=[[cosh(k*lq),1/k*sinh(k*lq)],[k*sinh(k*lq),cosh(k*lq)]]
  my=[[cos(k*lq),1/k*sin(k*lq)],[-k*sin(k*lq),cos(k*lq)]]
endif 
print,'mx=',mx,'my=',my
x[2,*]=mx##x[1,*]
y[2,*]=my##y[1,*]
print,'x2=',x[2,*]
print,'y2=',y[2,*]
print,'########################################'


mx=[[1.0,90.0],[0.0,1.0]]
my=[[1.0,90.0],[0.0,1.0]]
x[3,*]=mx##x[2,*]
y[3,*]=my##y[2,*]
print,'x3=',x[3,*]
print,'y3=',y[3,*]
print,'########################################'


b=251.69
lq=24
Q=0
b=b*1.0e-2
k=sqrt(3.0e8/1871.5e6/0.19385*b)/100.0
if Q eq 0 then begin
  mx=[[cos(k*lq),1/k*sin(k*lq)],[-k*sin(k*lq),cos(k*lq)]]
  my=[[cosh(k*lq),1/k*sinh(k*lq)],[k*sinh(k*lq),cosh(k*lq)]]
endif
if Q eq 1 then begin
  mx=[[cosh(k*lq),1/k*sinh(k*lq)],[k*sinh(k*lq),cosh(k*lq)]]
  my=[[cos(k*lq),1/k*sin(k*lq)],[-k*sin(k*lq),cos(k*lq)]]
endif
print,'mx=',mx,'my=',my
x[4,*]=mx##x[3,*]
y[4,*]=my##y[3,*]
print,'x4=',x[4,*]
print,'y4=',y[4,*]
print,'########################################'


mx=[[1.0,323.15],[0.0,1.0]]
my=[[1.0,323.15],[0.0,1.0]]
x[5,*]=mx##x[4,*]
y[5,*]=my##y[4,*]
print,'x5=',x[5,*]
print,'x5=',y[5,*]
print,'########################################'


b=301.82
lq=24
Q=1
b=b*1.0e-2
k=sqrt(3.0e8/1871.5e6/0.19385*b)/100.0
if Q eq 0 then begin
  mx=[[cos(k*lq),1/k*sin(k*lq)],[-k*sin(k*lq),cos(k*lq)]]
  my=[[cosh(k*lq),1/k*sinh(k*lq)],[k*sinh(k*lq),cosh(k*lq)]]
endif
if Q eq 1 then begin
  mx=[[cosh(k*lq),1/k*sinh(k*lq)],[k*sinh(k*lq),cosh(k*lq)]]
  my=[[cos(k*lq),1/k*sin(k*lq)],[-k*sin(k*lq),cos(k*lq)]]
endif
print,'mx=',mx,'my=',my
x[6,*]=mx##x[5,*]
y[6,*]=my##y[5,*]
print,'x6=',x[6,*]
print,'y6=',y[6,*]
print,'########################################'


mx=[[1.0,90.0],[0.0,1.0]]
my=[[1.0,90.0],[0.0,1.0]]
x[7,*]=mx##x[6,*]
y[7,*]=my##y[6,*]
print,'x7=',x[7,*]
print,'y7=',y[7,*]
print,'########################################'


b=290.12
lq=24
Q=0
b=b*1.0e-2
k=sqrt(3.0e8/1871.5e6/0.19385*b)/100.0
if Q eq 0 then begin
  mx=[[cos(k*lq),1/k*sin(k*lq)],[-k*sin(k*lq),cos(k*lq)]]
  my=[[cosh(k*lq),1/k*sinh(k*lq)],[k*sinh(k*lq),cosh(k*lq)]]
endif
if Q eq 1 then begin
  mx=[[cosh(k*lq),1/k*sinh(k*lq)],[k*sinh(k*lq),cosh(k*lq)]]
  my=[[cos(k*lq),1/k*sin(k*lq)],[-k*sin(k*lq),cos(k*lq)]]
endif
print,'mx=',mx,'my=',my
x[8,*]=mx##x[7,*]
y[8,*]=my##y[7,*]
print,'x8=',x[8,*]
print,'y8=',y[8,*]
print,'########################################'


mx=[[1.0,170.0],[0.0,1.0]]
my=[[1.0,170.0],[0.0,1.0]]
x[9,*]=mx##x[8,*]
y[9,*]=my##y[8,*]
print,'x9=',x[9,*]
print,'y9=',y[9,*]
print,'########################################'

iplot,x[*,0]
iplot,y[*,0]
end