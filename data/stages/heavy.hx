var sky:FlxSprite;

function create(){
    sky = new FlxSprite(-800, -630).loadGraphic(Paths.image('stages/heavy/sky'));
    sky.antialiasing = true;
    sky.scrollFactor.set(0.1, 0.1);
    sky.active = false;
    sky.setGraphicSize(Std.int(sky.width * 1.5));
    insert(members.indexOf(gf), sky);
    add(sky);

    back = new FlxSprite(-1800, -3550).loadGraphic(Paths.image('stages/heavy/back'));
    back.antialiasing = true;
    back.scrollFactor.set(1, 1);
    back.active = false;
    insert(members.indexOf(gf), back);
    add(back);

    spy = new FlxSprite(-200, -280);
    spy.frames = Paths.getSparrowAtlas('stages/heavy/spy');
    spy.animation.addByPrefix('dance', 'spy idle', 24, false);
    spy.animation.play('dance');
    spy.antialiasing = true;
    spy.setGraphicSize(Std.int(spy.width * 0.8));
    spy.scrollFactor.set(1, 1);
    spy.active = true;
    insert(members.indexOf(gf), spy);
    add(spy);

    deadspy = new FlxSprite(-370, -580);
    deadspy.frames = Paths.getSparrowAtlas('stages/heavy/spykill');
    deadspy.animation.addByPrefix('kill', 'spykill die', 24, false);
    deadspy.animation.play('kill');
    deadspy.antialiasing = true;
    deadspy.setGraphicSize(Std.int(deadspy.width * 0.8));
    deadspy.scrollFactor.set(1, 1);
    deadspy.active = false;
    deadspy.alpha = 0;
    insert(members.indexOf(gf), deadspy);

    scout = new FlxSprite(-470, -270);
    scout.frames = Paths.getSparrowAtlas('stages/heavy/scout');
    scout.animation.addByPrefix('dance', 'scout idle', 24, false);
    scout.animation.play('dance');
    scout.antialiasing = true;
    scout.setGraphicSize(Std.int(scout.width * 0.85));
    scout.scrollFactor.set(1, 1);
    scout.active = true;
    insert(members.indexOf(gf), scout);
    add(spy);

    demo = new FlxSprite(-800, 300);
    demo.frames = Paths.getSparrowAtlas('stages/heavy/demo');
    demo.animation.addByPrefix('dance', 'demo idle', 24, false);
    demo.animation.play('dance');
    demo.antialiasing = true;
    demo.setGraphicSize(Std.int(demo.width * 0.8));
    demo.scrollFactor.set(1, 1);
    demo.active = true;
    insert(members.indexOf(gf), demo);
    add(demo);

    soldier = new FlxSprite(1290, -270);
    soldier.frames = Paths.getSparrowAtlas('stages/heavy/soldier');
    soldier.animation.addByPrefix('dance', 'soldier idle', 24, false);
    soldier.animation.play('dance');
    soldier.antialiasing = true;
    soldier.setGraphicSize(Std.int(soldier.width * 0.9));
    soldier.scrollFactor.set(1, 1);
    soldier.active = true;
    insert(members.indexOf(gf), soldier);
    add(soldier);

    sniper = new FlxSprite(1230, -100);
    sniper.frames = Paths.getSparrowAtlas('stages/heavy/sniper');
    sniper.animation.addByPrefix('dance', 'sniper idle', 24, false);
    sniper.animation.play('dance');
    sniper.antialiasing = true;
    sniper.setGraphicSize(Std.int(sniper.width * 0.9));
    sniper.scrollFactor.set(1, 1);
    sniper.active = true;
    add(sniper);

    deadsniper = new FlxSprite(800, -450);
    deadsniper.frames = Paths.getSparrowAtlas('stages/heavy/sniperkill');
    deadsniper.animation.addByPrefix('kill', 'sniperkill die', 24, false);
    deadsniper.animation.play('kill');
    deadsniper.antialiasing = true;
    deadsniper.setGraphicSize(Std.int(deadsniper.width * 0.9));
    deadsniper.scrollFactor.set(1, 1);
    deadsniper.alpha = 0;
    deadsniper.active = false;
    add(deadsniper);

    medic = new FlxSprite(-800, 100);
    medic.frames = Paths.getSparrowAtlas('stages/heavy/medic');
    medic.animation.addByPrefix('dance', 'medic idle', 24, false);
    medic.animation.play('dance');
    medic.antialiasing = true;
    medic.setGraphicSize(Std.int(medic.width * 0.9));
    medic.scrollFactor.set(1.5, 1.5);
    medic.active = true;
    add(medic);

    deadmedic = new FlxSprite(-1200, -630);
    deadmedic.frames = Paths.getSparrowAtlas('stages/heavy/medickill');
    deadmedic.animation.addByPrefix('kill', 'medickill die', 24, false);
    deadmedic.animation.play('kill');
    deadmedic.antialiasing = true;
    deadmedic.setGraphicSize(Std.int(medic.width * 1.9));
    deadmedic.scrollFactor.set(1.5, 1.5);
    deadmedic.alpha= 0;
    deadmedic.active = false;
    add(deadmedic);

    engineer = new FlxSprite(400, 400);
    engineer.frames = Paths.getSparrowAtlas('stages/heavy/engineer');
    engineer.animation.addByPrefix('dance', 'engineer idle', 24, false);
    engineer.animation.play('dance');
    engineer.antialiasing = true;
    engineer.setGraphicSize(Std.int(engineer.width * 0.9));
    engineer.scrollFactor.set(1.5, 1.5);
    engineer.active = true;
    add(engineer);

    deadengineer = new FlxSprite(-100, -250);
    deadengineer.frames = Paths.getSparrowAtlas('stages/heavy/engykill');
    deadengineer.animation.addByPrefix('kill', 'engykill die', 24, false);
    deadengineer.animation.play('kill');
    deadengineer.antialiasing = true;
    deadengineer.setGraphicSize(Std.int(deadengineer.width * 0.9));
    deadengineer.scrollFactor.set(1.5, 1.5);
    deadengineer.alpha= 0;
    deadengineer.active = false;

    overlay = new FlxSprite(-700, -900).loadGraphic(Paths.image('stages/heavy/overlay'));
    overlay.antialiasing = true;
    overlay.scrollFactor.set(0, 0);
    overlay.active = false;
    add(overlay);
}

function beatHit() if (curBeat % 1 == 0) for (i in [spy, scout, demo, soldier, sniper, medic, engineer]) i.animation.play("dance");

function stepHit()
    {
      switch (curStep)
       {
         case 780:
        remove(medic);
        add(deadmedic);
        deadmedic.active = true;
        deadmedic.alpha = 1;

          case 819:
        remove(engineer);
        add(deadengineer);
        deadengineer.active = true;
        deadengineer.alpha = 1;

          case 860:
        remove(sniper);
        add(deadsniper);
        deadsniper.active = true;
        deadsniper.alpha = 1;

        case 940:
          remove(spy);
          add(deadspy);
          deadspy.active = true;
          deadspy.alpha = 1;
       }
    }
     
    
