var search = argument0;

switch (language) {
    case 0 :
        var lang = "english";
        break;
    
    case 1 :
        var lang = "russian";
        break;
    
    case 2 :
        var lang = "spanish";
        break;
    
    case 3 :
        var lang = "french";
        break;
        
    case 4 :
        var lang = "italian";
        break;
        
    default : 
        var lang = "english";
        break;
}

ini_open("languages.ini");

var findStr = ini_read_string(lang, string(search), "No strings found!");
ini_close();

findStr = string_replace_all(findStr, "*", "#");

return findStr;
