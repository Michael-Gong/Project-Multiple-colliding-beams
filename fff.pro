pro fff
x=findgen(400)/100-2
y=findgen(400)/100-2
h=dblarr(400,400)
H1=0
for t=0,99 do begin
for i=0,399 do begin
  for j=0,399 do begin
    h[i,j]=sqrt(1+(4*250*sin(2*!pi*t/100.0)*cos(!pi*(x[i]+y[j]))*cos(!pi*(x[i]-y[j])))^2)
  endfor
endfor
H1=H1+h
endfor
H1=H1/100.0
icontour,H1,x,y,rgb_table=69,levels=findgen(200)/199*max(H1),label=none
end