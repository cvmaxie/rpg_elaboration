//dictates which player sprites are visible (for collecting wood in basket)
if (global.state >= 8 && global.state < 11) { //collecting wood state
    if (room == seashore && global.wood == 0) { //no wood - empty basket
        upsprite = spr_up_basket;
        sidesprite = spr_side_basket;
        downsprite = spr_down_basket;
		freezesprite = spr_freeze_basket;
    } else if (global.wood == 1) { //first piece of wood - one in basket
        upsprite = spr_up_basket1;
        sidesprite = spr_side_basket1;
        downsprite = spr_down_basket1;
        sideattacksprite = spr_side_atk_1;
        upattacksprite = spr_up_atk_1;
        downattacksprite = spr_down_atk_1;
		freezesprite = spr_freeze_1;
    } else if (global.wood > 2 && global.wood < 4) { //3rd piece of wood - 2 in basket
        upsprite = spr_up_basket2;
        sidesprite = spr_side_basket2;
        downsprite = spr_down_basket2;
        sideattacksprite = spr_side_atk_2;
        upattacksprite = spr_up_atk_2;
        downattacksprite = spr_down_atk_2;
		freezesprite = spr_freeze_2
    } else if (global.wood > 3) { //4-5 pieces of wood - full basket
        upsprite = spr_up_basket3;
        sidesprite = spr_side_basket3;
        downsprite = spr_down_basket3;
        sideattacksprite = spr_side_atk_3;
        upattacksprite = spr_up_atk_3;
        downattacksprite = spr_down_atk_3;
		freezesprite = spr_freeze_3;
    }
} else {
    upsprite = spr_up;
    downsprite = spr_down;
    sidesprite = spr_side;
}