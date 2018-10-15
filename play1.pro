pro play1
  device,decomposed=1
  loadct,70
  WINDOW, 1, XSIZE = 500, YSIZE = 500
  restore,'1224ez.sav' ;restore,'1218.sav'
  levels=(findgen(1000)/1000-0.5)*2*min([max(field),abs(min(field))])
  for i=0,448 do begin
    restore,'gongzheng1218.sav'
    restore,'1224ez.sav';restore,'1218.sav'
    contour,field[*,*,i],x[50:149],y[50:149],levels=levels,/fill,pos=[0.0,0.0,1.0,1.0]
    
      restore,'trace.sav'
      x=x/1.0e-6
      y=y/1.0e-6
      plots,x[*,i],y[*,i],psym=2,color=255;xrange=[-2,2],yrange=[-2,2];,rgb_table=25,vert_colors=bytscl(findgen(250)),/overplot
      axis,yaxis=1,ystyle=9,charthick=1.5,charsize=1.2,ytitle='y[!3m!9m]',font=1
    
    WRITE_GIF,'play2.gif',tvrd() ,delay_time=20,/multiple,repeat_count=0
  endfor
  ;  WRITE_GIF,'display.gif',bytscl(fltarr(500,500)),/close
end
