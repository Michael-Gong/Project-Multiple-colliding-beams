pro icontourgz,x,y,var
;levels=findgen(1000)*(max(var)-min(var))/1000+min(var)
;icontour,var,x,y,levels=levels,rgb_table=70,/fill
set_plot,'ps'
    device,filename='./'+'.'+'eps',$
      /color,set_font='Helvetica',/encapsulated,bits_per_pixel=8,/inches,xsize=8,ysize=4.5,font_size=16,/tt_font
    !P.MULTI=[0,2]
    loadct,39
    levels=findgen(1000)*(max(var)-min(var))/1000+min(var)
    contour,var,x,y,$
     levels=levels,/fill,title=' Normalized electron density at t=25T ',xtitle='x [!9m!3m]',ytitle='y [!9m!3m]',xstyle=9,ystyle=9,pos=[0.15,0.15,0.8,0.9],charthick=1.5,charsize=1.5,font=1
      ;levels=levels,/fill,title=' Ez at t=25T ',xtitle='x [!9m!3m]',ytitle='y [!9m!3m]',xstyle=9,ystyle=9,pos=[0.15,0.15,0.8,0.9],charthick=1.5,charsize=1.5,font=1
    ;plot,x,var[*,],thick=1.5,pos=[0.15,0.15,0.8,0.9],xstyle=5,ystyle=5,color=255,font=1
    ;axis,yaxis=1,ystyle=9,charthick=1.5,charsize=1.2,ytitle='on-axis density [m!E-3!N]',font=1
    xx=rebin(transpose(levels),4,1000)
    contour,xx,findgen(4),levels,levels=levels,/fill,pos=[0.83,0.15,0.85,0.9],xstyle=4,ystyle=5,font=1
     axis,yaxis=1,ystyle=9,charthick=1.5,charsize=1.2,ytitle=' normalized density [m!E-3!N] ',font=1
     ;axis,yaxis=1,ystyle=9,charthick=1.5,charsize=1.2,ytitle=' normalized electric field ',font=1
    device,/close



end