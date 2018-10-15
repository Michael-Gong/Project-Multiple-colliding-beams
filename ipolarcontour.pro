pro ipolarcontour,r,theta,z
  denlevel=1000
  set_plot,'ps'
      device,filename='./polarcontour'+'.'+'eps',$
        /color,set_font='Helvetica',/encapsulated,bits_per_pixel=8,/inches,xsize=8,ysize=4.5,font_size=16,/tt_font
      !P.MULTI=[0,2]
      loadct,39
      levels=findgen(denlevel)*(max(z)-min(z))/denlevel+min(z)
      polar_contour,z,theta,r $
      ,levels=levels,/fill,title='Time is polar_contour';,xtitle='x [!9m!3m]',ytitle='y [!9m!3m]',xstyle=9,ystyle=9,pos=[0.15,0.15,0.8,0.9],charthick=1.5,charsize=1.5,font=1
        
      xx=rebin(transpose(levels),4,denlevel)
      contour,xx,findgen(4),levels,levels=levels,/fill,pos=[0.9,0.15,0.92,0.9],xstyle=4,ystyle=5,font=1
     ; axis,yaxis=1,ystyle=9,charthick=1.5,charsize=1.2,ytitle='density [m!E-3!N]',font=1
      device,/close

end