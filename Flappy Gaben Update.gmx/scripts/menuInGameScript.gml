switch (mpos) {
       case 0: { //continue game
            pause = 0;
            break;
       }
       
       case 1: { //exit
            room_goto(r_menu);
            break;
       }
       
       default: break;
 }
