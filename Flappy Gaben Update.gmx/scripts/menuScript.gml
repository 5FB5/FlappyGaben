switch (mpos) {
       case 0: { //start
            room_goto(r_gameplay);
            break;
       }

       case 1: {  //options
            main_menu_active = 0;
            instance_create(x + 420, y + 115, oOptions_new);
            second_menu_active = 1;
            
            break;
       }
       
       case 2: { //credits
            room_goto(r_credits);
            
            break;
       }
       
       case 3: { //exit
            game_end();
            break;
       }

       
       default: break;
 }
