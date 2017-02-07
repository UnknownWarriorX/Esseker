if (!isServer) exitWith {};

while {true} do
{
    if (daytime >= 20 || daytime < 5) then   // after 7pm and before 5am time multiplier changes
    {
        setTimeMultiplier 4      // adjust this value for slower or faster night cycle ( 24 hours will take 1 hour )
    }
    else
    {
        setTimeMultiplier 2     // adjust this value for slower or faster day cycle  ( 12 hours will take 1 hour )
    };

    uiSleep 30;
};