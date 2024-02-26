var sky:FlxSprite;

function create(){
    sky = new FlxSprite(-800, -630).loadGraphic(Paths.image('stages/heavy/sky'));
    sky.antialiasing = true;
    sky.scrollFactor.set(0.1, 0.1);
    sky.active = false;
    sky.setGraphicSize(Std.int(sky.width * 1.5));
    insert(members.indexOf(dad), sky);
    add(sky);

    back = new FlxSprite(-1800, -3550).loadGraphic(Paths.image('stages/heavy/back'));
    back.antialiasing = true;
    back.scrollFactor.set(1, 1);
    back.active = false;
    insert(members.indexOf(dad), back);
    add(back);

    spy = new FlxSprite(-200, -230);
    spy.frames = Paths.getSparrowAtlas('stages/heavy/spy');
    spy.animation.addByPrefix('dance', 'spy idle', 24, false);
    spy.animation.play('dance');
    spy.antialiasing = true;
    spy.setGraphicSize(Std.int(spy.width * 0.8));
    spy.scrollFactor.set(1, 1);
    spy.active = true;
    insert(members.indexOf(dad), spy);
    add(spy);

    overlay = new FlxSprite(-700, -900).loadGraphic(Paths.image('stages/heavy/overlay'));
    overlay.antialiasing = true;
    overlay.scrollFactor.set(0, 0);
    overlay.active = false;
    add(overlay);
}

function beatHit() if (curBeat % 2 == 0) for (i in [spy]) i.animation.play("dance");
