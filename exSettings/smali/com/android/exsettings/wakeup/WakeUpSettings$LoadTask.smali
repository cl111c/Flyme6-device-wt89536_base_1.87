.class Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;
.super Landroid/os/AsyncTask;
.source "WakeUpSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wakeup/WakeUpSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wakeup/WakeUpSettings;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private getDefaultInfo(Ljava/lang/String;I)Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "key"    # I

    .prologue
    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, "label":Ljava/lang/String;
    const-string v1, "noAction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0cae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 557
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    iget-object v2, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-direct {v1, v2, v0, p2}, Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;-><init>(Lcom/android/exsettings/wakeup/WakeUpSettings;Ljava/lang/String;I)V

    return-object v1

    .line 527
    :cond_1
    const-string v1, "screenOnAction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 528
    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0caf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 529
    :cond_2
    const-string v1, "keyguardOffAction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 530
    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0cb0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 531
    :cond_3
    const-string v1, "callAction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 532
    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0cb1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 533
    :cond_4
    const-string v1, "messageAction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 534
    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0cb3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 535
    :cond_5
    const-string v1, "internetAction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 537
    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0cb5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 538
    :cond_6
    const-string v1, "cameraAction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 539
    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0cb8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 540
    :cond_7
    const-string v1, "videoAction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 541
    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0cba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 542
    :cond_8
    const-string v1, "musicAction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 543
    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0cbc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 544
    :cond_9
    const-string v1, "playMusicAction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 545
    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0cbe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 546
    :cond_a
    const-string v1, "preMusicAction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 547
    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0cbf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 548
    :cond_b
    const-string v1, "nextMusicAction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 549
    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0cc0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 550
    :cond_c
    const-string v1, "recordAction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 551
    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0cc1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 552
    :cond_d
    const-string v1, "fmRadioAction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 553
    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0cc3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 554
    :cond_e
    const-string v1, "calculatorAction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0cc6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getItemInfo(Ljava/lang/String;I)Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;
    .locals 9
    .param p1, "pkname"    # Ljava/lang/String;
    .param p2, "key"    # I

    .prologue
    const v8, 0x7f0c0cae

    .line 470
    iget-object v6, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v6}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 471
    .local v4, "mPm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 472
    .local v2, "label":Ljava/lang/String;
    if-eqz p1, :cond_1

    const-string v6, "//"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 473
    const/4 v6, 0x0

    const-string v7, "//"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 475
    .local v5, "packageName":Ljava/lang/String;
    const-string v6, "//"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "activityName":Ljava/lang/String;
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .local v3, "mComponent":Landroid/content/ComponentName;
    const/16 v6, 0x80

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 487
    .end local v3    # "mComponent":Landroid/content/ComponentName;
    :goto_0
    if-nez v2, :cond_0

    .line 488
    iget-object v6, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v6}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 520
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_1
    new-instance v6, Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    iget-object v7, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-direct {v6, v7, v2, p2}, Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;-><init>(Lcom/android/exsettings/wakeup/WakeUpSettings;Ljava/lang/String;I)V

    :goto_2
    return-object v6

    .line 481
    .restart local v0    # "activityName":Ljava/lang/String;
    .restart local v5    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 482
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 483
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 491
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 492
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->getDefaultInfo(Ljava/lang/String;I)Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    move-result-object v6

    goto :goto_2

    .line 493
    :cond_2
    if-nez p1, :cond_0

    .line 494
    packed-switch p2, :pswitch_data_0

    .line 516
    :goto_3
    :pswitch_0
    if-nez v2, :cond_0

    .line 517
    iget-object v6, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v6}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 496
    :pswitch_1
    iget-object v6, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v6}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0cb1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 497
    goto :goto_3

    .line 500
    :pswitch_2
    iget-object v6, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v6}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0cb5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 502
    goto :goto_3

    .line 504
    :pswitch_3
    iget-object v6, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v6}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0cb3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 506
    goto :goto_3

    .line 508
    :pswitch_4
    iget-object v6, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v6}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0cb8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 510
    goto :goto_3

    .line 512
    :pswitch_5
    iget-object v6, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v6}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0caf

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 420
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 429
    new-array v0, v3, [Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pk_name_for_c"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->getItemInfo(Ljava/lang/String;I)Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->publishProgress([Ljava/lang/Object;)V

    .line 432
    new-array v0, v3, [Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pk_name_for_e"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->getItemInfo(Ljava/lang/String;I)Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->publishProgress([Ljava/lang/Object;)V

    .line 435
    new-array v0, v3, [Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pk_name_for_w"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->getItemInfo(Ljava/lang/String;I)Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->publishProgress([Ljava/lang/Object;)V

    .line 438
    new-array v0, v3, [Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pk_name_for_m"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->getItemInfo(Ljava/lang/String;I)Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->publishProgress([Ljava/lang/Object;)V

    .line 441
    new-array v0, v3, [Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pk_name_for_o"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->getItemInfo(Ljava/lang/String;I)Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->publishProgress([Ljava/lang/Object;)V

    .line 444
    new-array v0, v3, [Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pk_name_for_s"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->getItemInfo(Ljava/lang/String;I)Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->publishProgress([Ljava/lang/Object;)V

    .line 447
    new-array v0, v3, [Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pk_name_for_z"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->getItemInfo(Ljava/lang/String;I)Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->publishProgress([Ljava/lang/Object;)V

    .line 450
    new-array v0, v3, [Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pk_name_for_up_arrow"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->getItemInfo(Ljava/lang/String;I)Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->publishProgress([Ljava/lang/Object;)V

    .line 452
    new-array v0, v3, [Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pk_name_for_down_arrow"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->getItemInfo(Ljava/lang/String;I)Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->publishProgress([Ljava/lang/Object;)V

    .line 456
    new-array v0, v3, [Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    iget-object v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pk_name_for_double_click"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->getItemInfo(Ljava/lang/String;I)Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->publishProgress([Ljava/lang/Object;)V

    .line 466
    const/4 v0, 0x0

    return-object v0
.end method

.method protected varargs onProgressUpdate([Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;)V
    .locals 2
    .param p1, "values"    # [Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    # invokes: Lcom/android/exsettings/wakeup/WakeUpSettings;->setItem(Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;)V
    invoke-static {v0, v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->access$000(Lcom/android/exsettings/wakeup/WakeUpSettings;Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;)V

    .line 425
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 420
    check-cast p1, [Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->onProgressUpdate([Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;)V

    return-void
.end method
