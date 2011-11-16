var logType=1;
function show(url,height, width, scroll){
if(!scroll) scroll = "yes";
newWnd=window.open(url, 'show', "height="+height+", width="+width+", top=100, left=100, status=none, scrollbars=none, location=none");
newWnd.focus();
}
function changetext(x){
document.getElementById('MouseOverText').innerHTML ='<a href="http://www.filemanager.net" style="font-family:arial; color: #4A4A4A; font-weight:bold; text-align: right; font-size:16px;" title="i Dot Communications" target="_blank">' + x + '</a>';
}
function showLogin(type,lang){
if (lang) myLang=lang;
logType=type;
if (type==1){
document.getElementById('OLargeFileManagerLogo').style.visibility= 'hidden';
document.getElementById('OForgottenPassword').style.visibility= 'hidden';
document.getElementById('OLogoFM').style.visibility= 'visible';
document.getElementById('OLogoCM').style.visibility= 'hidden';
document.getElementById('ODottedLine').style.visibility= 'visible';
document.getElementById('OLoginForm').style.visibility= 'visible';
document.loginForm.action=FileManagerScriptName+'?type='+type;
}
else{
document.getElementById('OLargeFileManagerLogo').style.visibility= 'hidden';
document.getElementById('OForgottenPassword').style.visibility= 'hidden';
document.getElementById('OLogoFM').style.visibility= 'hidden';
document.getElementById('OLogoCM').style.visibility= 'visible';
document.getElementById('ODottedLine').style.visibility= 'visible';
document.getElementById('OLoginForm').style.visibility= 'visible';
document.loginForm.action=ClientScriptName+'?type='+type;
}
document.getElementById('OLargeFileManagerLogo').style.visibility= 'hidden';
}
function showForgott(){
document.getElementById('OLogoFM').style.visibility= 'visible';
document.getElementById('OLogoCM').style.visibility= 'hidden';
document.getElementById('OLoginForm').style.visibility= 'hidden';
document.getElementById('OForgottenPassword').style.visibility= 'visible';
document.getElementById('Message').style.visibility= 'hidden';
document.getElementById('ForgotPasswordPrompt').style.visibility= 'hidden';
}               
function sh(obj){if (obj.className!="selected") obj.className="of";}
function shh(obj){if (obj.className!="selected") obj.className="off";}
var filesSelected=0;
var itDir = 0;
function selectAll(){
if (document.files.all_file.checked){
for(i=0; i<document.files.folder.length; i++){
if(!document.files.folder[i].disabled)
document.files.folder[i].checked = true;
}
for(i=0; i<document.files.file.length; i++){document.files.file[i].checked = true;}
}
else{
for(i=0; i<document.files.folder.length; i++){document.files.folder[i].checked = false;}
for(i=0; i<document.files.file.length; i++){document.files.file[i].checked = false;}
}
} 
function currentDir(){
return encodeURI(document.mode.dir.value);
}
function selectFile(ifFile){
var fileName=test(ifFile);
return encodeURI(fileName);
}
function selectFiles(){
return testA();
}
function select(obj, file){
if (obj.className!="selected") { obj.className="selected";}
else  { obj.className="of";}
}
function download(){
var myFile = selectFile(1);
if (!myFile || myFile == 'undefined') return;
window.location.href=script+"?action=download&file="+myFile;
}
function editor(){
var myFile = selectFile(1);
if (!myFile || myFile == 'undefined') return;
var page=script+"?action=edit&file="+myFile
showresize(page, 468,700, 'no', 'editor');
}
function view(){
var myFile = selectFile(1);
if (!myFile || myFile == 'undefined') return;
var page=script+"?action=view&file="+myFile;
showresize(page, 480,640, 'no');
}
function fview(file){
var page=script+"?action=view&file="+file;
if (document.mode.gzfile.value) page+="&gzfile="+document.mode.gzfile.value;
showresize(page, 480,640, 'no');
}
function chmod(){
var fileLine = selectFiles();
if (!fileLine || fileLine == 'undefined') {alert(select_file); return;}
var page=script+"?action=chmod"+fileLine;
show(page, 260, 280, 'no');
}
function rename(){
var myFile = selectFile();
if (!myFile || myFile == 'undefined') return;
var page=script+"?action=rename&dir="+currentDir()+"&file="+myFile;
show(page, 170,400, 'no');
}
function copy(){
if(overQuota){
alert("overQuota");
return;
}
var fileLine = selectFiles();
if (!fileLine || fileLine == 'undefined') {alert(select_file); return;}
var page=script+"?action=copy&dir="+currentDir()+""+fileLine;
show(page, 480,420, 'no');
}
function notes(){
var myFile = selectFile();
if (!myFile || myFile == 'undefined') return;
var page=script+"?action=notes&dir="+currentDir()+"&file="+myFile;
show(page, 540, 500, 'yes');
}
function notesview(file){
var page=script+"?action=notes&dir="+currentDir()+"&file="+file;
show(page, 540, 500, 'yes');
}
function batch_download(){
var fileLine = selectFiles();
if (!fileLine) {alert(select_file); return;}
var tsd = 'file';
if (filesSelected>1) tsd = 'files/directories';
var Check = prompt(enter_zipname,'');
if (!Check) return;
top.location.href=script+"?action=batch_download&zipname="+Check+"&dir="+currentDir()+fileLine;
}
function move(){
if(overQuota){
alert(over_quota);
return;
}
var fileLine = selectFiles();
if (!fileLine || fileLine == 'undefined') {alert(select_file); return;}
var page=script+"?action=move&dir="+currentDir()+""+fileLine;
show(page, 480,400, 'no');
}
function pack(){
if(overQuota){
alert(over_quota);
return;
}
var fileLine = selectFiles();
if (!fileLine) {alert(select_file); return;}
var page=script+"?action=pack&dir="+currentDir()+"&"+fileLine;
show(page, 170,400,'no');
}
function unpack(){
if(overQuota){
alert(over_quota);
return;
}
var myFile = selectFile();
if (!myFile || myFile == 'undefined') return;
var page=script+"?action=unpack&dir="+currentDir()+"&file="+myFile;
show(page, 170,400, 'no');
}
function delete_f(){
var fileLine = selectFiles();
var confirmdel = confirm_delete;
if (!fileLine) {alert(select_file); return;}
var tsd = 'file';
if (filesSelected>1) tsd = 'files/directories';
else if(itDir==1) tsd = 'directories';
if(confirm(confirmdel +": "+tsd+" ?")){
location.href=script+"?action=delete&dir="+currentDir()+"&r="+fileLine+"&shared=";
}
else return;
}
function hotlink(){
var myFile = selectFile(1);
if (!myFile || myFile == 'undefined') return;
var page=script+"?action=hotlink&dir="+currentDir()+"&file="+myFile;
show(page,430,400, 'no');
}
function mkdir(){
var page=script+"?action=mkdir&dir="+currentDir()+"";
show(page, 200,400);
}
function findfile(){
var page=script+"?action=findfile&dir="+currentDir()+"";
show(page, 10,370);
}
function about(){
var page=script+"?action=about&dir="+currentDir()+"";
shownoscroll(page, 321,385);
}
function upload(){
if (window.newWnd && !newWnd.closed){
if (newWnd.location.href.indexOf("action=upload")>=0) {newWnd.focus();}
else newWnd.close();
return;
}
if(overQuota){
alert(over_quota);
return;
}
var mode=0;
if(document.mode.transfer.value=='b') mode=1;
if(document.mode.transfer.value=='t') mode=2;
var hWind = 590;
show(script+"?action=upload&dir="+currentDir()+"&mode="+mode, 720, 460);
}
function load(){
document.getElementById('loadI').style.visibility= 'visible';
}
function show(url,height, width, scroll){
if(!scroll) scroll = "yes";
newWnd=window.open(url, '_show', "height="+height+", width="+width+", top=100, left=100, status=none, scrollbars="+scroll+", location=none");
newWnd.focus();
}
function shownoscroll(url,height, width, scroll){
if(!scroll) scroll = "yes";
newWnd=window.open(url, 'show', "height="+height+", width="+width+", top=100, left=100, status=none, scrollbars=none, location=none");
newWnd.focus();
}
function showresize(url,height, width, scroll, name){
if(!scroll) name='show';
if(!scroll) scroll = "yes";
newWnd=window.open(url, name, "height="+height+", width="+width+", top=100, left=100, status=none, resizable=yes, scrollbars=yes, location=none");
newWnd.focus();
}
function logout(){
//if(opener) window.close();
//else 
top.location.href=script+"?action=logout";
}
function test(ifFile){
var m=0;
var fileName;
var itDir;
for(i=0; i<document.files.folder.length; i++){
if (document.files.folder[i].checked) {fileName = document.files.folder[i].value;m++; itDir=1;}
}
for(i=0; i<document.files.file.length; i++){
if (document.files.file[i].checked) {fileName = document.files.file[i].value;m++}
}
if (!fileName) {alert(select_file); return;}
if (m>1){alert(only_one_file); return;}
if(itDir && ifFile){alert(no_selection); return;}
return fileName;
}
function testA(){
var m=0;
var Line ="";
filesSelected=0; itDir = 0;
for(i=0; i<document.files.folder.length-1; i++){
if (document.files.folder[i].checked) {
Line += "&file="+encodeURI(document.files.folder[i].value);
itDir = 1;
filesSelected++;
}
}
for(i=0; i<document.files.file.length-1; i++){
if (document.files.file[i].checked) {
Line += "&file="+encodeURI(document.files.file[i].value);
filesSelected++;
}
}
return Line;
}
function go(){
opener.location.reload();
//opener.focus();
window.close();
}     
function SetMod(){
var U = 0; var G = 0; var O =0;
for(a=0;a<3;a++){
if (document.wndForm.U[a].checked) U += 1*document.wndForm.U[a].value;
if (document.wndForm.G[a].checked) G += 1*document.wndForm.G[a].value;
if (document.wndForm.O[a].checked) O += 1*document.wndForm.O[a].value;
}
document.wndForm.cmd.value= "0"+U+G+O;
}    
function fwLoadMenus() {
if (window.fw_menu_0) return;
window.fw_menu_0 = new Menu("root",120,13,"Verdana, Arial, Helvetica, sans-serif;",9,"#000000","#ffffff","#F3F3F3","#2A4D88");
if(isAdmin){
fw_menu_0.addMenuItem(ControlPanel,"window.open(ClientScriptName,'_blank')");
}
//fw_menu_0.addMenuItem(MyAccount,"javascript:show(script+'?action=userarea',650, 610)");
fw_menu_0.addMenuItem(Exit,"logout()");
fw_menu_0.hideOnMouseOut=true;
window.fw_menu_1 = new Menu("root",120,13,"Verdana",9,"#000000","#ffffff","#F3F3F3","#2A4D88");
if (arrRights['o']) fw_menu_1.addMenuItem(Copy,"javascript:copy();");
if (arrRights['a']) fw_menu_1.addMenuItem(Rename,"javascript:rename();");
if (arrRights['d']) fw_menu_1.addMenuItem(Delete,"javascript:delete_f();");
if (arrRights['m']) fw_menu_1.addMenuItem(Move,"javascript:move();");
if (arrRights['c']) fw_menu_1.addMenuItem(Chmod,"javascript:chmod();");
fw_menu_1.addMenuItem(Search,"javascript:findfile();");
fw_menu_1.addMenuItem(SelectAll," document.files.all_file.checked=true; selectAll();");
fw_menu_1.hideOnMouseOut=true;
window.fw_menu_2 = new Menu("root",120,13,"Verdana, Arial, Helvetica, sans-serif",9,"#000000","#ffffff","#F3F3F3","#2A4D88");
if (arrRights['u']) fw_menu_2.addMenuItem(Upload,"javascript:upload();");
if (arrRights['r']) fw_menu_2.addMenuItem(Download,"javascript:download();");
if (arrRights['v']) fw_menu_2.addMenuItem(Preview,"javascript:view();");
if (arrRights['p']) fw_menu_2.addMenuItem(Pack,"javascript:pack();");
if (arrRights['k']) fw_menu_2.addMenuItem(Unpack,"javascript:unpack();");
if (arrRights['w']) fw_menu_2.addMenuItem(Editor,"javascript:editor();");
fw_menu_2.hideOnMouseOut=true;
window.fw_menu_3 = new Menu("root",120,13,"Verdana, Arial, Helvetica, sans-serif",9,"#000000","#ffffff","#F3F3F3","#2A4D88");
//fw_menu_3.addMenuItem(ContactUs,"window.open(ContactUsLink,'_blank');");
//fw_menu_3.addMenuItem(About,"javascript:about();");
fw_menu_3.hideOnMouseOut=true;
fw_menu_3.writeMenus();
}
function setPath2(path){
var rest = document.getElementById('cmd').value;
if (document.getElementById('cmd').value.lastIndexOf('\/')>=0) rest = rest.substr(document.getElementById('cmd').value.lastIndexOf('\/')+1);
if (path) path="/"+path;
document.getElementById('cmd').value=path+"/"+ rest;
}
function pageLoad(){
tre  = document.getElementById('tree');
}
function tMove(e, over){
var e = e || window.event;
e = e.target || e.srcElement;
if (e.tagName!='SPAN') return;
if (over)
e.className+=' h';
else
e.className = e.className.substring(0, e.className.length-2);
}
function tClick(e){
var e = e || window.event;
e = e.target || e.srcElement;
var i, d, clickAtImg;
if (e.tagName=='IMG') {
i = e;
e = e.nextSibling;
clickAtImg = 1;
}
if (e.tagName=='SPAN')
i = e.previousSibling;
else {
return;
}
d = e.nextSibling.nextSibling;
if (d && d.tagName=='DIV' && (clickAtImg)) {
d.className = (d.className=='')? 'blk' : '' ;
i.src = '/FileManager/FileManagerData/' +
((d.className=='blk')?'e.gif':'c.gif');
}
if (!clickAtImg){
parent.setPath2(e.id.substring(1));
// window.close();
}
}
function ResetIdle()
{
clearTimeout(timerId) ;
timerId = window.setTimeout("PageTimeout()", timeOut*1000) ;
}
function PageTimeout()
{
clearTimeout(timerId);
parent.location.href=script+"?action=logout";
}
function chkFrm(){
var badChar = "\*|\?|\�|\<|\+|\&|\'|\$|\^|\:|\£|\'|\%|\[|\]|\"|\(|\)||\!|\>|\||\;|\@|\~|\{|\}";
var doc = document['wndForm']['cmd'];
for (j=0;j<badChar.length;j++){
var illChar = badChar.charAt(j);
if (doc.value.indexOf(illChar,0) !=-1){
alert ("A File or Folder name cannot contain any of the following illegal characters:\r\n  * ? <> | : & ! ; [ ] ^ + @ ' \~ { }  $ ! £ % ( )");
doc.value = doc.value.slice(illChar,-1); 
}
}
}
function chkFrmrn(){
var badChar = "\*|\?|\�|\<|\+|\&|\'|\$|\^|\:|\£|\'|\%|\[|\]|\"|\(|\)||\!|\>|\||\;|\@|\~|\{|\}";
var doc = document['wndForm']['cmd'];
for (j=0;j<badChar.length;j++){
var illChar = badChar.charAt(j);
if (doc.value.indexOf(illChar,0) !=-1){
alert ("A File or Folder name cannot contain any of the following illegal characters:\r\n  * ? <> | : & ! ; [ ] ^ + @ '  \~ { }  $ ! £ % ( )");
javascript:document.wndForm.reset();
}
}
}