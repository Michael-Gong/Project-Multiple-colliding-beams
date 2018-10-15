pro px_x
    restore,'px_xseries.sav'
    x=findgen(50)/50
    px_x=px_x[0:49,*,*]+px_x[50:99,*,*]+px_x[100:149,*,*]+px_x[150:199,*,*]
    device,decomposed=1
    loadct,39
    levels=findgen(500)/500*(max(px_x)-min(px_x))+min(px_x)
    for i=1,200 do begin
      contour,px_x[*,*,i],x,px[*,*,i],levels=levels,/fill,title='time is '+strtrim(string(1.0*i/20.0+22.0),2)  
      write_gif,'px_xseries.gif',tvrd(),delay_time=30,/multiple,repeat_count=0
      print,'finished',100.0*i/200,'%'
    endfor
end 