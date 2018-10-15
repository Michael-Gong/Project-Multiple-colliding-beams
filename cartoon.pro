pro cartoon
nkind    = 2
skind    = strarr(nkind)
skind[0] = 'density'
skind[1] = 'ekbar'

restore,'./grid.sav'
restore,'./density.sav'
nspecie  = 2
sname    = strarr(nspecie)
sname[0] = 'electron'
sname[1] = 'photon'
for k=0,nkind-1 do begin
restore,'./'+skind[k]+'.sav'
for n=0,nspecie-1 do begin
for i=0,10 do begin
device,decomposed=1  
!P.MULTI=[0,2]
loadct,39
levels=findgen(1000)/1000*(max(b[*,*,i,n])-min(b[*,*,i,n]))+min(b[*,*,i,n])
contour,b[600:1399,600:1399,i,n],x[600:1399,i],y[600:1399,i],$
levels=levels,/fill,title='Time'+sname[n]+'is '+strtrim(string(realtime[i]),2)+' fs',xtitle='x [!9m!3m]',ytitle='y [!9m!3m]',xstyle=9,ystyle=9,pos=[0.15,0.15,0.88,0.88],charthick=1.5,charsize=1.5,font=1
xx=rebin(transpose(levels),4,1000)
contour,xx,findgen(4),levels,levels=levels,/fill,pos=[0.9,0.15,0.92,0.88],xstyle=4,ystyle=5
axis,yaxis=1,ystyle=9,charthick=1.5,charsize=1.2,ytitle=skind[k]+' [m!E-3!N]',font=1
WRITE_GIF,skind[k]+' '+sname[n]+'.gif',tvrd() ,delay_time=100,/multiple,repeat_count=0
endfor
WRITE_GIF,skind[k]+' '+sname[n]+'.gif',bytscl(fltarr(500,500)),/close
endfor
endfor
end
