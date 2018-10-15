pro phasex_px
restore,'./trace.sav'
x=x/1.0e-6
y=y/1.0e-6
px=px/(9.1e-31*3.0e8)
py=py/(9.1e-31*3.0e8)
pz=pz/(9.1e-31*3.0e8)
device,decompose=1
loadct,39
for t=0,199 do begin
  plot,x[*,t],px[*,t],psym=2,linestyle=6
  write_gif,'x_px.gif',tvrd(),delay_time=20,/multiple,repeat_count=0
endfor
end