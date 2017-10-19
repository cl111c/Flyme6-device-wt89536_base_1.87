.class public Lcom/android/exsettings/wakeup/AppSelect;
.super Landroid/app/ListFragment;
.source "AppSelect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/wakeup/AppSelect$AppInfoAdapter;,
        Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;,
        Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    }
.end annotation


# static fields
.field private static gestureState:I


# instance fields
.field private final GESTURE_PK_KEY_C:Ljava/lang/String;

.field private final GESTURE_PK_KEY_DOUBLE_CLICK:Ljava/lang/String;

.field private final GESTURE_PK_KEY_DOWN_ARROW:Ljava/lang/String;

.field private final GESTURE_PK_KEY_E:Ljava/lang/String;

.field private final GESTURE_PK_KEY_M:Ljava/lang/String;

.field private final GESTURE_PK_KEY_O:Ljava/lang/String;

.field private final GESTURE_PK_KEY_RIGHT_ARROW:Ljava/lang/String;

.field private final GESTURE_PK_KEY_S:Ljava/lang/String;

.field private final GESTURE_PK_KEY_SCROLL_DOWN:Ljava/lang/String;

.field private final GESTURE_PK_KEY_SCROLL_LEFT:Ljava/lang/String;

.field private final GESTURE_PK_KEY_SCROLL_RIGHT:Ljava/lang/String;

.field private final GESTURE_PK_KEY_SCROLL_UP:Ljava/lang/String;

.field private final GESTURE_PK_KEY_UP_ARROW:Ljava/lang/String;

.field private final GESTURE_PK_KEY_W:Ljava/lang/String;

.field private final GESTURE_PK_KEY_Z:Ljava/lang/String;

.field private lastPos:I

.field private lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/wakeup/AppSelect$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mPm:Landroid/content/pm/PackageManager;

.field private packages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pkName:Ljava/lang/String;

.field private rootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput v0, Lcom/android/exsettings/wakeup/AppSelect;->gestureState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    .line 80
    const-string v0, "pk_name_for_c"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->GESTURE_PK_KEY_C:Ljava/lang/String;

    .line 81
    const-string v0, "pk_name_for_e"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->GESTURE_PK_KEY_E:Ljava/lang/String;

    .line 82
    const-string v0, "pk_name_for_w"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->GESTURE_PK_KEY_W:Ljava/lang/String;

    .line 83
    const-string v0, "pk_name_for_m"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->GESTURE_PK_KEY_M:Ljava/lang/String;

    .line 84
    const-string v0, "pk_name_for_o"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->GESTURE_PK_KEY_O:Ljava/lang/String;

    .line 85
    const-string v0, "pk_name_for_s"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->GESTURE_PK_KEY_S:Ljava/lang/String;

    .line 86
    const-string v0, "pk_name_for_z"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->GESTURE_PK_KEY_Z:Ljava/lang/String;

    .line 87
    const-string v0, "pk_name_for_up_arrow"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->GESTURE_PK_KEY_UP_ARROW:Ljava/lang/String;

    .line 88
    const-string v0, "pk_name_for_down_arrow"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->GESTURE_PK_KEY_DOWN_ARROW:Ljava/lang/String;

    .line 89
    const-string v0, "pk_name_for_right_arrow"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->GESTURE_PK_KEY_RIGHT_ARROW:Ljava/lang/String;

    .line 90
    const-string v0, "pk_name_for_double_click"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->GESTURE_PK_KEY_DOUBLE_CLICK:Ljava/lang/String;

    .line 91
    const-string v0, "pk_name_for_scroll_up"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->GESTURE_PK_KEY_SCROLL_UP:Ljava/lang/String;

    .line 92
    const-string v0, "pk_name_for_scroll_down"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->GESTURE_PK_KEY_SCROLL_DOWN:Ljava/lang/String;

    .line 93
    const-string v0, "pk_name_for_scroll_left"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->GESTURE_PK_KEY_SCROLL_LEFT:Ljava/lang/String;

    .line 94
    const-string v0, "pk_name_for_scroll_right"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->GESTURE_PK_KEY_SCROLL_RIGHT:Ljava/lang/String;

    .line 784
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/wakeup/AppSelect;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/AppSelect;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/wakeup/AppSelect;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/AppSelect;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/exsettings/wakeup/AppSelect;->positionToKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/wakeup/AppSelect;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/AppSelect;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mActions:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/wakeup/AppSelect;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/AppSelect;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/exsettings/wakeup/AppSelect;->positionToGestureEnableKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/wakeup/AppSelect;Landroid/widget/ListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/AppSelect;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/exsettings/wakeup/AppSelect;->resetCheck(Landroid/widget/ListView;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/exsettings/wakeup/AppSelect;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/AppSelect;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/exsettings/wakeup/AppSelect;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/AppSelect;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/exsettings/wakeup/AppSelect;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/AppSelect;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkAction(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 492
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/android/exsettings/wakeup/AppSelect;->mActions:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 492
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 497
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private dealItemClick(ILandroid/view/View;Landroid/widget/ListView;)Z
    .locals 10
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "l"    # Landroid/widget/ListView;

    .prologue
    .line 681
    const/4 v9, 0x0

    .line 683
    .local v9, "isRepeat":Z
    const/4 v4, 0x0

    .line 684
    .local v4, "actionName":Ljava/lang/String;
    const/16 v0, 0xe

    if-gt p1, v0, :cond_1

    .line 685
    invoke-direct {p0, p1}, Lcom/android/exsettings/wakeup/AppSelect;->getDefaultActionKey(I)Ljava/lang/String;

    move-result-object v3

    .line 686
    .local v3, "pkname":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/exsettings/wakeup/AppSelect;->getDefaultName(I)Ljava/lang/String;

    move-result-object v4

    .line 699
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/exsettings/wakeup/AppSelect;->checkAction(Ljava/lang/String;)I

    move-result v1

    .line 700
    .local v1, "result":I
    const-string v0, "noAction"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    sget v0, Lcom/android/exsettings/wakeup/AppSelect;->gestureState:I

    if-eq v1, v0, :cond_2

    .line 701
    const/4 v9, 0x1

    .line 702
    sget v2, Lcom/android/exsettings/wakeup/AppSelect;->gestureState:I

    move-object v0, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/exsettings/wakeup/AppSelect;->showConfirmDialog(IILjava/lang/String;Ljava/lang/String;ILandroid/view/View;Landroid/widget/ListView;)V

    .line 712
    :cond_0
    :goto_1
    return v9

    .line 688
    .end local v1    # "result":I
    .end local v3    # "pkname":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->packages:Ljava/util/List;

    add-int/lit8 v5, p1, -0xf

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "//"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->packages:Ljava/util/List;

    add-int/lit8 v5, p1, -0xf

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 691
    .restart local v3    # "pkname":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/wakeup/AppSelect;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/exsettings/wakeup/AppSelect;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->packages:Ljava/util/List;

    add-int/lit8 v6, p1, -0xf

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x80

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 695
    :catch_0
    move-exception v8

    .line 696
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 704
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "result":I
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v2, Lcom/android/exsettings/wakeup/AppSelect;->gestureState:I

    invoke-direct {p0, v2}, Lcom/android/exsettings/wakeup/AppSelect;->positionToKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 706
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v2, Lcom/android/exsettings/wakeup/AppSelect;->gestureState:I

    invoke-direct {p0, v2}, Lcom/android/exsettings/wakeup/AppSelect;->positionToGestureEnableKey(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 708
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    invoke-direct {p0}, Lcom/android/exsettings/wakeup/AppSelect;->showUnlockTips()V

    goto/16 :goto_1
.end method

.method private getDefaultActionKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "postion"    # I

    .prologue
    .line 397
    packed-switch p1, :pswitch_data_0

    .line 429
    const-string v0, "noAction"

    :goto_0
    return-object v0

    .line 399
    :pswitch_0
    const-string v0, "noAction"

    goto :goto_0

    .line 401
    :pswitch_1
    const-string v0, "screenOnAction"

    goto :goto_0

    .line 403
    :pswitch_2
    const-string v0, "keyguardOffAction"

    goto :goto_0

    .line 405
    :pswitch_3
    const-string v0, "callAction"

    goto :goto_0

    .line 407
    :pswitch_4
    const-string v0, "messageAction"

    goto :goto_0

    .line 409
    :pswitch_5
    const-string v0, "internetAction"

    goto :goto_0

    .line 411
    :pswitch_6
    const-string v0, "cameraAction"

    goto :goto_0

    .line 413
    :pswitch_7
    const-string v0, "videoAction"

    goto :goto_0

    .line 415
    :pswitch_8
    const-string v0, "musicAction"

    goto :goto_0

    .line 417
    :pswitch_9
    const-string v0, "playMusicAction"

    goto :goto_0

    .line 419
    :pswitch_a
    const-string v0, "preMusicAction"

    goto :goto_0

    .line 421
    :pswitch_b
    const-string v0, "nextMusicAction"

    goto :goto_0

    .line 423
    :pswitch_c
    const-string v0, "recordAction"

    goto :goto_0

    .line 425
    :pswitch_d
    const-string v0, "fmRadioAction"

    goto :goto_0

    .line 427
    :pswitch_e
    const-string v0, "calculatorAction"

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private getDefaultName(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 571
    packed-switch p1, :pswitch_data_0

    .line 605
    const-string v0, ""

    :goto_0
    return-object v0

    .line 573
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0cae

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 575
    :pswitch_1
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0caf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 577
    :pswitch_2
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0cb0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 579
    :pswitch_3
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0cb1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 581
    :pswitch_4
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0cb3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 583
    :pswitch_5
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0cb6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 585
    :pswitch_6
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0cb8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 587
    :pswitch_7
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0cba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 589
    :pswitch_8
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0cbc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 591
    :pswitch_9
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0cbe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 593
    :pswitch_a
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0cbf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 595
    :pswitch_b
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0cc0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 597
    :pswitch_c
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0cc1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 599
    :pswitch_d
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0cc3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 601
    :pswitch_e
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0cc5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 603
    :pswitch_f
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0cc6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 571
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private getGestureByPos(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 535
    packed-switch p1, :pswitch_data_0

    .line 567
    const-string v0, ""

    :goto_0
    return-object v0

    .line 537
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0c83

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 539
    :pswitch_1
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0c84

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 541
    :pswitch_2
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0c85

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 543
    :pswitch_3
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0c86

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 545
    :pswitch_4
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0c87

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 547
    :pswitch_5
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0c88

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 549
    :pswitch_6
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0c89

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 551
    :pswitch_7
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0c8a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 553
    :pswitch_8
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0c8b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 555
    :pswitch_9
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0c8c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 557
    :pswitch_a
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0c8d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 559
    :pswitch_b
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0c8e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 561
    :pswitch_c
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0c8f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 563
    :pswitch_d
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0c90

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 565
    :pswitch_e
    iget-object v0, p0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0c91

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 535
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private initAppList(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 434
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 435
    .local v3, "mainIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 439
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 440
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 441
    .local v1, "flag":I
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_0

    .line 442
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 444
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    .end local v1    # "flag":I
    :cond_1
    new-instance v5, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v5, v4}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 449
    if-eqz v0, :cond_2

    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    return-object v0

    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method

.method private positionToGestureEnableKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 645
    packed-switch p1, :pswitch_data_0

    .line 677
    const-string v0, ""

    :goto_0
    return-object v0

    .line 647
    :pswitch_0
    const-string v0, "gesture_c_enable"

    goto :goto_0

    .line 649
    :pswitch_1
    const-string v0, "gesture_e_enable"

    goto :goto_0

    .line 651
    :pswitch_2
    const-string v0, "gesture_w_enable"

    goto :goto_0

    .line 653
    :pswitch_3
    const-string v0, "gesture_m_enable"

    goto :goto_0

    .line 655
    :pswitch_4
    const-string v0, "gesture_o_enable"

    goto :goto_0

    .line 657
    :pswitch_5
    const-string v0, "gesture_s_enable"

    goto :goto_0

    .line 659
    :pswitch_6
    const-string v0, "gesture_z_enable"

    goto :goto_0

    .line 661
    :pswitch_7
    const-string v0, "gesture_up_arrow_enable"

    goto :goto_0

    .line 663
    :pswitch_8
    const-string v0, "gesture_down_arrow_enable"

    goto :goto_0

    .line 665
    :pswitch_9
    const-string v0, "gesture_right_arrow_enable"

    goto :goto_0

    .line 667
    :pswitch_a
    const-string v0, "gesture_double_click_enable"

    goto :goto_0

    .line 669
    :pswitch_b
    const-string v0, "gesture_scroll_up_enable"

    goto :goto_0

    .line 671
    :pswitch_c
    const-string v0, "gesture_scroll_down_enable"

    goto :goto_0

    .line 673
    :pswitch_d
    const-string v0, "gesture_scroll_left_enable"

    goto :goto_0

    .line 675
    :pswitch_e
    const-string v0, "gesture_scroll_right_enable"

    goto :goto_0

    .line 645
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private positionToKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 609
    packed-switch p1, :pswitch_data_0

    .line 641
    const-string v0, ""

    :goto_0
    return-object v0

    .line 611
    :pswitch_0
    const-string v0, "pk_name_for_c"

    goto :goto_0

    .line 613
    :pswitch_1
    const-string v0, "pk_name_for_e"

    goto :goto_0

    .line 615
    :pswitch_2
    const-string v0, "pk_name_for_w"

    goto :goto_0

    .line 617
    :pswitch_3
    const-string v0, "pk_name_for_m"

    goto :goto_0

    .line 619
    :pswitch_4
    const-string v0, "pk_name_for_o"

    goto :goto_0

    .line 621
    :pswitch_5
    const-string v0, "pk_name_for_s"

    goto :goto_0

    .line 623
    :pswitch_6
    const-string v0, "pk_name_for_z"

    goto :goto_0

    .line 625
    :pswitch_7
    const-string v0, "pk_name_for_up_arrow"

    goto :goto_0

    .line 627
    :pswitch_8
    const-string v0, "pk_name_for_down_arrow"

    goto :goto_0

    .line 629
    :pswitch_9
    const-string v0, "pk_name_for_right_arrow"

    goto :goto_0

    .line 631
    :pswitch_a
    const-string v0, "pk_name_for_double_click"

    goto :goto_0

    .line 633
    :pswitch_b
    const-string v0, "pk_name_for_scroll_up"

    goto :goto_0

    .line 635
    :pswitch_c
    const-string v0, "pk_name_for_scroll_down"

    goto :goto_0

    .line 637
    :pswitch_d
    const-string v0, "pk_name_for_scroll_left"

    goto :goto_0

    .line 639
    :pswitch_e
    const-string v0, "pk_name_for_scroll_right"

    goto :goto_0

    .line 609
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private resetCheck(Landroid/widget/ListView;)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;

    .prologue
    .line 754
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 755
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;

    move-object v1, v2

    check-cast v1, Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;

    .line 756
    .local v1, "mvh":Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;
    iget-object v2, v1, Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 754
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 758
    .end local v1    # "mvh":Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;
    :cond_0
    return-void
.end method

.method private setAction()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 454
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pk_name_for_c"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "actionC":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/wakeup/AppSelect;->mActions:Ljava/util/HashMap;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-nez v0, :cond_0

    const-string v0, "callAction"

    .end local v0    # "actionC":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pk_name_for_e"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, "actionE":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/wakeup/AppSelect;->mActions:Ljava/util/HashMap;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-nez v2, :cond_1

    const-string v2, "internetAction"

    .end local v2    # "actionE":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v5, p0, Lcom/android/exsettings/wakeup/AppSelect;->mActions:Ljava/util/HashMap;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pk_name_for_w"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pk_name_for_m"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 464
    .local v3, "actionM":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/wakeup/AppSelect;->mActions:Ljava/util/HashMap;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-nez v3, :cond_2

    const-string v3, "messageAction"

    .end local v3    # "actionM":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v5, p0, Lcom/android/exsettings/wakeup/AppSelect;->mActions:Ljava/util/HashMap;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pk_name_for_o"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v5, p0, Lcom/android/exsettings/wakeup/AppSelect;->mActions:Ljava/util/HashMap;

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pk_name_for_s"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pk_name_for_z"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 471
    .local v4, "actionZ":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/wakeup/AppSelect;->mActions:Ljava/util/HashMap;

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-nez v4, :cond_3

    const-string v4, "cameraAction"

    .end local v4    # "actionZ":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v5, p0, Lcom/android/exsettings/wakeup/AppSelect;->mActions:Ljava/util/HashMap;

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pk_name_for_up_arrow"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    iget-object v5, p0, Lcom/android/exsettings/wakeup/AppSelect;->mActions:Ljava/util/HashMap;

    const/16 v6, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pk_name_for_down_arrow"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v5, p0, Lcom/android/exsettings/wakeup/AppSelect;->mActions:Ljava/util/HashMap;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pk_name_for_double_click"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "actionDoubleClick":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/wakeup/AppSelect;->mActions:Ljava/util/HashMap;

    const/16 v6, 0xb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-nez v1, :cond_4

    const-string v1, "screenOnAction"

    .end local v1    # "actionDoubleClick":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v5, p0, Lcom/android/exsettings/wakeup/AppSelect;->mActions:Ljava/util/HashMap;

    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object v5, p0, Lcom/android/exsettings/wakeup/AppSelect;->mActions:Ljava/util/HashMap;

    const/16 v6, 0xd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget-object v5, p0, Lcom/android/exsettings/wakeup/AppSelect;->mActions:Ljava/util/HashMap;

    const/16 v6, 0xe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v5, p0, Lcom/android/exsettings/wakeup/AppSelect;->mActions:Ljava/util/HashMap;

    const/16 v6, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    return-void
.end method

.method private showConfirmDialog(IILjava/lang/String;Ljava/lang/String;ILandroid/view/View;Landroid/widget/ListView;)V
    .locals 10
    .param p1, "oldPos"    # I
    .param p2, "newPos"    # I
    .param p3, "pkname"    # Ljava/lang/String;
    .param p4, "actionName"    # Ljava/lang/String;
    .param p5, "position"    # I
    .param p6, "v"    # Landroid/view/View;
    .param p7, "l"    # Landroid/widget/ListView;

    .prologue
    .line 502
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0c94

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0cd9

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v3, v4

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Lcom/android/exsettings/wakeup/AppSelect;->getGestureByPos(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0c0585

    new-instance v0, Lcom/android/exsettings/wakeup/AppSelect$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p7

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/exsettings/wakeup/AppSelect$2;-><init>(Lcom/android/exsettings/wakeup/AppSelect;IILjava/lang/String;Landroid/widget/ListView;ILandroid/view/View;)V

    invoke-virtual {v8, v9, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0140

    new-instance v2, Lcom/android/exsettings/wakeup/AppSelect$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/wakeup/AppSelect$1;-><init>(Lcom/android/exsettings/wakeup/AppSelect;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 532
    return-void
.end method

.method private showUnlockTips()V
    .locals 3

    .prologue
    .line 724
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0c94

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0cd8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0585

    new-instance v2, Lcom/android/exsettings/wakeup/AppSelect$3;

    invoke-direct {v2, p0}, Lcom/android/exsettings/wakeup/AppSelect$3;-><init>(Lcom/android/exsettings/wakeup/AppSelect;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 730
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 26
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    .line 107
    const v23, 0x7f040135

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, p2

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->rootView:Landroid/view/View;

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/exsettings/wakeup/AppSelect;->initAppList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->packages:Ljava/util/List;

    .line 109
    sget v23, Lcom/android/exsettings/wakeup/WakeUpSettings;->gestureState:I

    sput v23, Lcom/android/exsettings/wakeup/AppSelect;->gestureState:I

    .line 112
    new-instance v23, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 115
    new-instance v23, Ljava/util/HashMap;

    const/16 v24, 0xf

    invoke-direct/range {v23 .. v24}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->mActions:Ljava/util/HashMap;

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->mPm:Landroid/content/pm/PackageManager;

    .line 117
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wakeup/AppSelect;->setAction()V

    .line 119
    sget v23, Lcom/android/exsettings/wakeup/AppSelect;->gestureState:I

    packed-switch v23, :pswitch_data_0

    .line 270
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const v24, 0x7f0c0c93

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->setTitle(I)V

    .line 271
    const-string v23, "AppSelect"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "gestureState ="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lcom/android/exsettings/wakeup/AppSelect;->gestureState:I

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "    pkName="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v16, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0c0cae

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 274
    .local v16, "noAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    new-instance v21, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0c0caf

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 276
    .local v21, "screenOnAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    new-instance v11, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0c0cb0

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v11, v0, v1, v2}, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 278
    .local v11, "keyguardOffAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    new-instance v6, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0c0cb1

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0c0cb2

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v6, v0, v1, v2}, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 280
    .local v6, "callAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    new-instance v13, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0c0cb3

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0c0cb4

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v13, v0, v1, v2}, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 282
    .local v13, "messageAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    new-instance v10, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0c0cb6

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0c0cb7

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v10, v0, v1, v2}, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 284
    .local v10, "internetAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    new-instance v7, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0c0cb8

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0c0cb9

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v7, v0, v1, v2}, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 286
    .local v7, "cameraAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    new-instance v22, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0c0cba

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0c0cbb

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    invoke-direct/range {v22 .. v25}, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 288
    .local v22, "videoAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    new-instance v14, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0c0cbc

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0c0cbd

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v14, v0, v1, v2}, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 290
    .local v14, "musicAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    new-instance v17, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0c0cbe

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 292
    .local v17, "playMusicAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    new-instance v18, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0c0cbf

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 294
    .local v18, "preMusicAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    new-instance v15, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0c0cc0

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v15, v0, v1, v2}, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 296
    .local v15, "nextMusicAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    new-instance v19, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0c0cc1

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0c0cc2

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 298
    .local v19, "recordAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    new-instance v8, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0c0cc3

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0c0cc4

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v8, v0, v1, v2}, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 300
    .local v8, "fmRadioAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    new-instance v5, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0c0cc6

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0c0cc7

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v5, v0, v1, v2}, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 304
    .local v5, "calculatorAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    const/4 v4, 0x0

    .line 305
    .local v4, "actionIsOK":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "//"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 306
    const/4 v4, 0x1

    .line 308
    const-string v23, "noAction"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 309
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    .line 310
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    .line 355
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->packages:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v9, v0, :cond_1b

    .line 372
    new-instance v12, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    invoke-direct {v12}, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;-><init>()V

    .line 373
    .local v12, "mAppInfo":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->packages:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    .line 374
    .local v20, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v12, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->appName:Ljava/lang/String;

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 376
    add-int/lit8 v23, v9, 0xf

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    .line 378
    const/4 v4, 0x1

    .line 379
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v12, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    .line 383
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 121
    .end local v4    # "actionIsOK":Z
    .end local v5    # "calculatorAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .end local v6    # "callAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .end local v7    # "cameraAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .end local v8    # "fmRadioAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .end local v9    # "i":I
    .end local v10    # "internetAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .end local v11    # "keyguardOffAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .end local v12    # "mAppInfo":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .end local v13    # "messageAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .end local v14    # "musicAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .end local v15    # "nextMusicAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .end local v16    # "noAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .end local v17    # "playMusicAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .end local v18    # "preMusicAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .end local v19    # "recordAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .end local v20    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v21    # "screenOnAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .end local v22    # "videoAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "pk_name_for_c"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 124
    const/16 v23, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/exsettings/wakeup/AppSelect;->getDefaultActionKey(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 128
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const v24, 0x7f0c0c83

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_0

    .line 131
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "pk_name_for_e"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 134
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/exsettings/wakeup/AppSelect;->getDefaultActionKey(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 138
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const v24, 0x7f0c0c84

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_0

    .line 141
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "pk_name_for_w"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 144
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/exsettings/wakeup/AppSelect;->getDefaultActionKey(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 148
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const v24, 0x7f0c0c85

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_0

    .line 151
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "pk_name_for_m"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_5

    .line 154
    const/16 v23, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/exsettings/wakeup/AppSelect;->getDefaultActionKey(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 158
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const v24, 0x7f0c0c86

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_0

    .line 161
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "pk_name_for_o"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_6

    .line 164
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/exsettings/wakeup/AppSelect;->getDefaultActionKey(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 168
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const v24, 0x7f0c0c87

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_0

    .line 171
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "pk_name_for_s"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_7

    .line 174
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/exsettings/wakeup/AppSelect;->getDefaultActionKey(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 178
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const v24, 0x7f0c0c88

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_0

    .line 181
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "pk_name_for_z"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_8

    .line 184
    const/16 v23, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/exsettings/wakeup/AppSelect;->getDefaultActionKey(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 188
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const v24, 0x7f0c0c89

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_0

    .line 191
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "pk_name_for_up_arrow"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_9

    .line 195
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/exsettings/wakeup/AppSelect;->getDefaultActionKey(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 199
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const v24, 0x7f0c0c8a

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_0

    .line 202
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "pk_name_for_down_arrow"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_a

    .line 206
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/exsettings/wakeup/AppSelect;->getDefaultActionKey(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 210
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const v24, 0x7f0c0c8b

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_0

    .line 213
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "pk_name_for_right_arrow"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 217
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/exsettings/wakeup/AppSelect;->getDefaultActionKey(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    goto/16 :goto_0

    .line 222
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "pk_name_for_double_click"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_b

    .line 226
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/exsettings/wakeup/AppSelect;->getDefaultActionKey(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 230
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wakeup/AppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const v24, 0x7f0c0c8d

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_0

    .line 233
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "pk_name_for_scroll_up"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 237
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/exsettings/wakeup/AppSelect;->getDefaultActionKey(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    goto/16 :goto_0

    .line 242
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "pk_name_for_scroll_down"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 246
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/exsettings/wakeup/AppSelect;->getDefaultActionKey(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    goto/16 :goto_0

    .line 251
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "pk_name_for_scroll_left"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 255
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/exsettings/wakeup/AppSelect;->getDefaultActionKey(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    goto/16 :goto_0

    .line 260
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "pk_name_for_scroll_right"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 264
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/exsettings/wakeup/AppSelect;->getDefaultActionKey(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    goto/16 :goto_0

    .line 311
    .restart local v4    # "actionIsOK":Z
    .restart local v5    # "calculatorAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .restart local v6    # "callAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .restart local v7    # "cameraAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .restart local v8    # "fmRadioAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .restart local v10    # "internetAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .restart local v11    # "keyguardOffAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .restart local v13    # "messageAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .restart local v14    # "musicAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .restart local v15    # "nextMusicAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .restart local v16    # "noAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .restart local v17    # "playMusicAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .restart local v18    # "preMusicAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .restart local v19    # "recordAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .restart local v21    # "screenOnAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .restart local v22    # "videoAction":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    :cond_c
    const-string v23, "screenOnAction"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 312
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    .line 313
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    goto/16 :goto_1

    .line 314
    :cond_d
    const-string v23, "keyguardOffAction"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 315
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    .line 316
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v11, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    goto/16 :goto_1

    .line 317
    :cond_e
    const-string v23, "callAction"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 318
    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    .line 319
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v6, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    goto/16 :goto_1

    .line 320
    :cond_f
    const-string v23, "messageAction"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 321
    const/16 v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    .line 322
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v13, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    goto/16 :goto_1

    .line 323
    :cond_10
    const-string v23, "internetAction"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 324
    const/16 v23, 0x5

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    .line 325
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v10, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    goto/16 :goto_1

    .line 326
    :cond_11
    const-string v23, "cameraAction"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 327
    const/16 v23, 0x6

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    .line 328
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v7, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    goto/16 :goto_1

    .line 329
    :cond_12
    const-string v23, "videoAction"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 330
    const/16 v23, 0x7

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    .line 331
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    goto/16 :goto_1

    .line 332
    :cond_13
    const-string v23, "musicAction"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 333
    const/16 v23, 0x8

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    .line 334
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v14, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    goto/16 :goto_1

    .line 335
    :cond_14
    const-string v23, "playMusicAction"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 336
    const/16 v23, 0x9

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    .line 337
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    goto/16 :goto_1

    .line 338
    :cond_15
    const-string v23, "preMusicAction"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 339
    const/16 v23, 0xa

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    .line 340
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    goto/16 :goto_1

    .line 341
    :cond_16
    const-string v23, "nextMusicAction"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 342
    const/16 v23, 0xb

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    .line 343
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v15, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    goto/16 :goto_1

    .line 344
    :cond_17
    const-string v23, "recordAction"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 345
    const/16 v23, 0xc

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    .line 346
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    goto/16 :goto_1

    .line 347
    :cond_18
    const-string v23, "fmRadioAction"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 348
    const/16 v23, 0xd

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    .line 349
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v8, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    goto/16 :goto_1

    .line 350
    :cond_19
    const-string v23, "calculatorAction"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->pkName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 351
    const/16 v23, 0xe

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    .line 352
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v5, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    goto/16 :goto_1

    .line 381
    .restart local v9    # "i":I
    .restart local v12    # "mAppInfo":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .restart local v20    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1a
    const/16 v23, 0x0

    move/from16 v0, v23

    iput-boolean v0, v12, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    goto/16 :goto_3

    .line 386
    .end local v12    # "mAppInfo":Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
    .end local v20    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1b
    if-nez v4, :cond_1c

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    .line 388
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    sget v24, Lcom/android/exsettings/wakeup/AppSelect;->gestureState:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/exsettings/wakeup/AppSelect;->positionToKey(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/exsettings/wakeup/AppSelect;->getDefaultActionKey(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 393
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wakeup/AppSelect;->rootView:Landroid/view/View;

    move-object/from16 v23, v0

    return-object v23

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v3, 0x1

    .line 739
    invoke-direct {p0, p3, p2, p1}, Lcom/android/exsettings/wakeup/AppSelect;->dealItemClick(ILandroid/view/View;Landroid/widget/ListView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 740
    invoke-direct {p0, p1}, Lcom/android/exsettings/wakeup/AppSelect;->resetCheck(Landroid/widget/ListView;)V

    .line 741
    iget v1, p0, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 742
    iget-object v1, p0, Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    .line 744
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    iput-boolean v3, v1, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    .line 745
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;

    .line 746
    .local v0, "vh":Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;
    iget-object v1, v0, Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 747
    iput p3, p0, Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I

    .line 750
    .end local v0    # "vh":Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 718
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 719
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/AppSelect;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/exsettings/wakeup/AppSelect$AppInfoAdapter;

    invoke-direct {v1, p0}, Lcom/android/exsettings/wakeup/AppSelect$AppInfoAdapter;-><init>(Lcom/android/exsettings/wakeup/AppSelect;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 720
    return-void
.end method
