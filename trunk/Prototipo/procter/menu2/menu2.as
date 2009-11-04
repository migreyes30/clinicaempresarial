stm_bm(["menu397a",900,"","blank.gif",0,"","",0,0,250,0,1000,1,0,0,"","",0,0,1,2,"default","hand","",1,25],this);
stm_bp("p0",[0,4,0,0,0,4,0,0,100,"",-2,"",-2,50,0,0,"#999999","#ECECEE","",3,0,0,"#666666","",20,250,0,"transparent","s_01.gif",3,"",-1,-1,0,"transparent","s_03.gif",3,"",15,-1,0,"transparent","s_04.gif",3,"",-1,-1,0,"transparent","s_02.gif",3,"s_05.gif","s_06.gif","s_07.gif","s_08.gif",15,19,15,19,15,15,15,15]);
function alterObj(o1,o2)
{
  if(o1 && o2)
  {
      o1.aIcos=o2.aIcos;
      o1.iIcoWid=o2.iIcoWid;
      o1.iIcoHei=o2.iIcoHei;
      o1.iIcoBd=o2.iIcoBd;
      o1.aArrs=o2.aArrs;
      o1.iArrWid=o2.iArrWid;
      o1.iArrHei=o2.iArrHei;
      o1.iArrBd=o2.iArrBd;
      o1.iHal=o2.iHal;
      o1.iVal=o2.iVal;
      o1.aBgClrs=o2.aBgClrs;
      o1.aBgImgs=o2.aBgImgs;
      o1.aBgReps=o2.aBgReps;
      o1.aFntClrs=o2.aFntClrs;
      o1.aFnts=o2.aFnts;
      o1.aDecos=o2.aDecos;
      o1. sTip= o2. sTip;

    }
}
var now = new Date();

var yy = now.getFullYear(),mm = now.getMonth()+1, dd = now.getDay(), dt = now.getDate();
function getDays(year,month)
{
	var days = 30;
	if (month == "2")
		days = 28;
	if ( (",1,3,5,7,8,10,12,").indexOf(","+month+",") > -1 )
		days = 31;
	if (month == "2" && parseInt(year) % 4 ==0 && !(parseInt(year) % 100 == 0 && !(parseInt(year) % 400 == 0)))
		days = 29;
	return days
}
function getDayOfWeek(dayValue)
{
	var day = new Date(Date.parse(dayValue.replace(/-/g, '/')));
	return day.getDay()
}
var d1=getDayOfWeek(yy+"-"+mm+"-"+"01");
var dnum=0,days=getDays(yy,mm);

var tStyle=new Array();
var sStyle=new Array();
var gStyle=new Array();
var dStyle=new Array();

stm_ai("p0i0",[0,"Sun","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#7A7F7D",0,"#7A7F7D",0,"","",3,3,0,0,"#E6EFF9","#000000","#FFFFFF","#FFFFFF","bold 8pt Verdana","bold 8pt Verdana",0,0,"","","","",0,0,0],35,0);
stm_ai("p0i1",[0,"Mon","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#7A7F7D",0,"#7A7F7D",0,"","",3,3,0,0,"#E6EFF9","#000000","#FFFFFF","#FFFFFF","bold 8pt Verdana","bold 8pt Verdana",0,0,"","","","",0,0,0],35,0);
stm_aix("p0i2","p0i1",[0,"Tue"],35,0);
stm_aix("p0i3","p0i1",[0,"Wed"],35,0);
stm_aix("p0i4","p0i1",[0,"Thu"],35,0);
stm_aix("p0i5","p0i1",[0,"Fri"],35,0);
stm_aix("p0i6","p0i1",[0,"Sat"],35,0);
sun0=
stm_aix("p0i7","p0i1",[0,"","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#E6EFF9",1,"#FFD602",1,"","",3,3,1,1,"#7A7F7D","#0099CC","#000000","#000000","8pt Arial","8pt Arial"]);
var FirDayId=sun0.iNid;
stm_aix("p0i8","p0i1",[0,"","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#E6EFF9",1,"#FFD602",1,"","",3,3,1,1,"#7A7F7D #7A7F7D #7A7F7D #E6EFF9","#0099CC","#000000","#000000","8pt Arial","8pt Arial"]);
stm_aix("p0i9","p0i8",[0,"","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#E6EFF9",1,"#FFD602",1,"","",3,3,1,1,"#7A7F7D #7A7F7D #7A7F7D #ECECEE"]);
stm_aix("p0i10","p0i9",[]);
stm_aix("p0i11","p0i9",[]);
stm_aix("p0i12","p0i9",[]);
stm_aix("p0i13","p0i8",[]);
stm_aix("p0i14","p0i8",[0,"Menu Item 22","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#FFFFFF",1,"#FFD602",1,"","",3,3,1,1,"#ECECEE #7A7F7D #7A7F7D"]);
stm_aix("p0i15","p0i8",[0,"Menu Item 23","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#E6EFF9",1,"#FFD602",1,"","",3,3,1,1,"#ECECEE #7A7F7D #7A7F7D #E6EFF9"]);
stm_aix("p0i16","p0i8",[0,"Menu Item 24","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#E6EFF9",1,"#FFD602",1,"","",3,3,1,1,"#ECECEE #7A7F7D #7A7F7D #ECECEE"]);
stm_aix("p0i17","p0i8",[0,"Menu Item 25","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#E6EFF9",1,"#FFD602",1,"","",3,3,1,1,"#E6EFF9 #7A7F7D #7A7F7D #E6EFF9"]);
stm_aix("p0i18","p0i17",[0,"Menu Item 26"]);
stm_aix("p0i19","p0i17",[0,"Menu Item 27"]);
stm_aix("p0i20","p0i17",[0,"Menu Item 28"]);
stm_aix("p0i21","p0i8",[0,"Menu Item 29","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#E6EFF9",1,"#FFD602",1,"","",3,3,1,1,"#E6EFF9 #7A7F7D #7A7F7D"]);
stm_aix("p0i22","p0i17",[0,"Menu Item 30"]);
stm_aix("p0i23","p0i17",[0,"Menu Item 31"]);
stm_aix("p0i24","p0i17",[0,"Menu Item 32"]);
stm_aix("p0i25","p0i17",[0,"Menu Item 33"]);
stm_aix("p0i26","p0i17",[0,"Menu Item 34"]);
stm_aix("p0i27","p0i17",[0,"Menu Item 35"]);
stm_aix("p0i28","p0i21",[0,"Menu Item 36"]);
stm_aix("p0i29","p0i17",[0,"Menu Item 37"]);
stm_aix("p0i30","p0i17",[0,"Menu Item 38"]);
stm_aix("p0i31","p0i17",[0,"Menu Item 39"]);
stm_aix("p0i32","p0i17",[0,"Menu Item 40"]);
stm_aix("p0i33","p0i17",[0,"Menu Item 41"]);
stm_aix("p0i34","p0i17",[0,"Menu Item 42"]);
stm_aix("p0i35","p0i21",[0,"Menu Item 43"]);
stm_aix("p0i36","p0i17",[0,"Menu Item 44"]);
stm_aix("p0i37","p0i17",[0,"Menu Item 45"]);
stm_aix("p0i38","p0i17",[0,"Menu Item 46"]);
stm_aix("p0i39","p0i17",[0,"Menu Item 47"]);
stm_aix("p0i40","p0i17",[0,"Menu Item 48"]);
stm_aix("p0i41","p0i17",[0,"Menu Item 49"]);
var o30=
stm_aix("p0i42","p0i1",[0,"Menu Item 50","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#E6EFF9",1,"#FFD602",1,"","",3,3,1,1,"#E6EFF9 #7A7F7D #7A7F7D","#0099CC","#000000","#000000","8pt Verdana","8pt Verdana"]);
var o31=
stm_aix("p0i43","p0i1",[0,"Menu Item 51","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#E6EFF9",1,"#FFD602",1,"","",3,3,1,1,"#E6EFF9 #7A7F7D #7A7F7D #E6EFF9","#0099CC","#000000","#000000","8pt Verdana","8pt Verdana"]);
stm_aix("p0i44","p0i1",[0,"","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#E6EFF9",1,"#FFD602",1,"","",3,3,0,0,"#E6EFF9","#000000","#FF0000","#FF0000","8pt Verdana","8pt Verdana"]);
var os=
stm_aix("p0i45","p0i8",[0,"Sunday","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#D6D6D8",0,"#C7CFD8",0,"","",3,3,0,0,"#E6EFF9","#000000","#494848","#FF0000"]);
var ot=
stm_aix("p0i46","p0i1",[0,"Today","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#A1D2ED",0,"#A1D2ED",0,"","",0,0,0,0,"#FFFFF7","#000000","#990000","#990000","bold 8pt Arial","bold 8pt Arial"]);
var og=
stm_aix("p0i47","p0i8",[0,"General","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#ECECEE",0,"#ECECEE",0,"","",2,2,0,0,"#F7BF59","#FFD98F","#666666","#896600"]);
var od=
stm_aix("p0i48","p0i8",[0,"disable","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#ECECEE",0,"#ECECEE",0,"","",3,3,0,0,"#E6EFF9","#000000"]);
var m=od.oParMenu,p=od.oParPopup;
var t=0;
for(var i=FirDayId;i<FirDayId+37;i++)
{
     var o=p.aItems[i];
     if((d1==t || dnum>0) && days>0) 
    {  
        dnum++;
        days--;
        o.sTxt=dnum;
       if(dnum==dt)
           tStyle=o;
        if(!(t%7))
        {
          sStyle[ sStyle.length]=o;
         alterObj(o,os)
        }
        else
        {
           gStyle[ gStyle.length]=o;
           alterObj(o,og)
        }
   
     }
    else
    {
         if(o==o30 || o==o31) o.iBdStyle=0;
         dStyle[ dStyle.length]=o;
         alterObj(o,od);
         o.sTxt="";
    }
  t++;
}
alterObj(tStyle,ot);
if(!_STNS.UI.CUICanvas)
{
    alterObj(os,od);
    alterObj(og,od);
    alterObj(ot,od);
        os.sTxt=ot.sTxt="";
    og.sTxt=mm+"&nbsp;/";
    od.sTxt=yy;
    og.iHal=2;
    od.iHal=0;
}

stm_mc("p0",[7,"#000000",0,0,"",3]);
stm_ep();
stm_em();
