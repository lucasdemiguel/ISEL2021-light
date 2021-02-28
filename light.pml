int button;
int deadline;
int light;
active proctype fsm() {
    int state = 0;
    printf("0\n");
    do
    :: (state == 0)  ->
        if
        :: (button) -> light = 1; state = 1; button = 0; printf("0 to 1\n");
        fi
    :: (state == 1) ->
        if
        :: (button) -> button = 0;
        :: (deadline && !button) -> state = 0; deadline = 0; printf("0 to 1\n");
        fi
    od
}
