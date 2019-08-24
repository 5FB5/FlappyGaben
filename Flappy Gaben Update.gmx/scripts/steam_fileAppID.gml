var fileCreate, fileWrite, fileWWrite;

if (file_exists("AppID.sav")) {

}
 else {
      fileCreate = file_text_open_write("AppID.sav");
      fileWrite = file_text_write_string(fileCreate, "Эта фигня не работает. Я думал, что можно вывести номер приложения, но низя. Видимо я тупой и этот ID выдаётся при релизе в Стиме");;
      file_text_close(fileCreate);      
 }
 
