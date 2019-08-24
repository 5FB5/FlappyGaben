//!#import instance.*

gamepadSupport();
var file, fileWrite, fileRead, playerMoney, fileSkin1Data, skin1Have, fileSkin2Data, skin2Have, fileSkin3Data, skin3Have, fileSkin4Data, skin4Have;

switch (mpos) {
       case 0: { //skin1
    
        instance_create(window_get_width() / 2, window_get_height() / 2, obj_shopSign1);
        break;
}

       case 1: { //skin2
        
        instance_create(window_get_width() / 2, window_get_height() / 2, obj_shopSign2)
        break;
    }
       
       case 2: { //skin3
    
        instance_create(window_get_width() / 2, window_get_height() / 2, obj_shopSign3)
        break;
    }
       
       case 3: { //skin3
    
        instance_create(window_get_width() / 2, window_get_height() / 2, obj_shopSign4)
        break;
    }
       
       case 4: { //next
    
            room_goto(r_shop2);
            
            break;
    }
       
       case 5: {
            room_goto(r_menu);
            break;
       }
       
       default: break;
 }
