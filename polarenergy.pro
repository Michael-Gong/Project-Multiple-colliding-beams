pro polarenergy,theta,thetax,thetay
    part  = 5.5e10
    macro = 6.4e7
    sum   = 1.4144e14
polarep = dblarr(1000)
for i=0,999 do begin
  polarep[i]= total(theta[i,*]*thetay)/part*(sum/macro)
endfor
  iplot,polarep/360*1000,thetax,/polar
end