.class public Lcom/android/exsettings/widget/SettingsAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/widget/SettingsAppWidgetProvider$SettingsObserver;,
        Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker;,
        Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;,
        Lcom/android/exsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;,
        Lcom/android/exsettings/widget/SettingsAppWidgetProvider$WifiStateTracker;,
        Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field private static final IND_DRAWABLE_MID:[I

.field private static final IND_DRAWABLE_OFF:[I

.field private static final IND_DRAWABLE_ON:[I

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static final sBluetoothState:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static sLocalBluetoothAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

.field private static final sLocationState:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static final sRotationState:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static sSettingsObserver:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$SettingsObserver;

.field private static final sWifiState:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 62
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 66
    sput-object v3, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    .line 90
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    .line 96
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    .line 102
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    .line 113
    new-instance v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$WifiStateTracker;-><init>(Lcom/android/exsettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 114
    new-instance v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/exsettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 115
    new-instance v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;

    invoke-direct {v0, v3}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;-><init>(Lcom/android/exsettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 116
    new-instance v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker;

    invoke-direct {v0, v3}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker;-><init>(Lcom/android/exsettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sRotationState:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;

    return-void

    .line 90
    nop

    :array_0
    .array-data 4
        0x7f020014
        0x7f020013
        0x7f020015
    .end array-data

    .line 96
    :array_1
    .array-data 4
        0x7f020011
        0x7f020010
        0x7f020012
    .end array-data

    .line 102
    :array_2
    .array-data 4
        0x7f020017
        0x7f020016
        0x7f020018
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 705
    new-instance v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$1;-><init>(Lcom/android/exsettings/widget/SettingsAppWidgetProvider;)V

    iput-object v0, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 982
    return-void
.end method

.method static synthetic access$1000()Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sRotationState:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;

    return-object v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    .prologue
    .line 59
    sput-object p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/exsettings/widget/SettingsAppWidgetProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/widget/SettingsAppWidgetProvider;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 734
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040136

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 736
    .local v0, "views":Landroid/widget/RemoteViews;
    const v1, 0x7f120260

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 738
    const v1, 0x7f12026c

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 741
    const v1, 0x7f120269

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 744
    const v1, 0x7f120266

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 746
    const v1, 0x7f120263

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 750
    invoke-static {v0, p0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 751
    return-object v0
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 668
    sget-object v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-nez v0, :cond_0

    .line 669
    new-instance v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 671
    sget-object v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$SettingsObserver;->startObserving()V

    .line 673
    :cond_0
    return-void
.end method

.method private static getBrightness(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 897
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 902
    :goto_0
    return v0

    .line 900
    :catch_0
    move-exception v1

    .line 902
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getBrightnessMode(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 913
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 915
    .local v0, "brightnessMode":I
    if-ne v0, v2, :cond_0

    .line 919
    .end local v0    # "brightnessMode":I
    :goto_0
    return v2

    .restart local v0    # "brightnessMode":I
    :cond_0
    move v2, v3

    .line 915
    goto :goto_0

    .line 916
    .end local v0    # "brightnessMode":I
    :catch_0
    move-exception v1

    .line 917
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightnessMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 919
    goto :goto_0
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buttonId"    # I

    .prologue
    const/4 v4, 0x0

    .line 833
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 834
    .local v0, "launchIntent":Landroid/content/Intent;
    const-class v2, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 835
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 837
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 839
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private toggleBrightness(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 929
    :try_start_0
    const-string v6, "power"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v5

    .line 931
    .local v5, "power":Landroid/os/IPowerManager;
    if-eqz v5, :cond_1

    .line 932
    const-string v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 934
    .local v4, "pm":Landroid/os/PowerManager;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 935
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v6, "screen_brightness"

    invoke-static {v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 937
    .local v0, "brightness":I
    const/4 v1, 0x0

    .line 939
    .local v1, "brightnessMode":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1120026

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 941
    const-string v6, "screen_brightness_mode"

    invoke-static {v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 947
    :cond_0
    const/4 v6, 0x1

    if-ne v1, v6, :cond_2

    .line 948
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    .line 949
    const/4 v1, 0x0

    .line 959
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1120026

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 962
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness_mode"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 969
    :goto_1
    if-nez v1, :cond_1

    .line 970
    invoke-interface {v5, v0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 971
    const-string v6, "screen_brightness"

    invoke-static {v2, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 979
    .end local v0    # "brightness":I
    .end local v1    # "brightnessMode":I
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "pm":Landroid/os/PowerManager;
    .end local v5    # "power":Landroid/os/IPowerManager;
    :cond_1
    :goto_2
    return-void

    .line 950
    .restart local v0    # "brightness":I
    .restart local v1    # "brightnessMode":I
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v4    # "pm":Landroid/os/PowerManager;
    .restart local v5    # "power":Landroid/os/IPowerManager;
    :cond_2
    invoke-virtual {v4}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 951
    invoke-virtual {v4}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    goto :goto_0

    .line 952
    :cond_3
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 953
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    goto :goto_0

    .line 955
    :cond_4
    const/4 v1, 0x1

    .line 956
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 967
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 974
    .end local v0    # "brightness":I
    .end local v1    # "brightnessMode":I
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "pm":Landroid/os/PowerManager;
    .end local v5    # "power":Landroid/os/IPowerManager;
    :catch_0
    move-exception v3

    .line 975
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "SettingsAppWidgetProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "toggleBrightness: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 976
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 977
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v6, "SettingsAppWidgetProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "toggleBrightness: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 11
    .param p0, "views"    # Landroid/widget/RemoteViews;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v10, 0x7f12026d

    const v9, 0x7f12026c

    const v8, 0x7f0c07b0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 774
    sget-object v4, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 775
    sget-object v4, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 776
    sget-object v4, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 777
    sget-object v4, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sRotationState:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 779
    invoke-static {p1}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->getBrightnessMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 780
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0c07b1

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 783
    const v4, 0x7f0200db

    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 785
    const v4, 0x7f12026e

    const v5, 0x7f020018

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 823
    :goto_0
    return-void

    .line 788
    :cond_0
    invoke-static {p1}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->getBrightness(Landroid/content/Context;)I

    move-result v0

    .line 789
    .local v0, "brightness":I
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 791
    .local v3, "pm":Landroid/os/PowerManager;
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 793
    .local v1, "full":I
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 795
    .local v2, "half":I
    if-le v0, v1, :cond_1

    .line 796
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0c07b2

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 799
    const v4, 0x7f0200dc

    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 815
    :goto_1
    if-le v0, v2, :cond_3

    .line 816
    const v4, 0x7f12026e

    const v5, 0x7f020018

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 801
    :cond_1
    if-le v0, v2, :cond_2

    .line 802
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0c07b3

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 805
    const v4, 0x7f0200dd

    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 808
    :cond_2
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0c07b4

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 811
    const v4, 0x7f0200de

    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 819
    :cond_3
    const v4, 0x7f12026e

    const v5, 0x7f020015

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 760
    invoke-static {p0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 762
    .local v1, "views":Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 763
    .local v0, "gm":Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 764
    invoke-static {p0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 765
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 722
    sget-object v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-eqz v0, :cond_0

    .line 723
    sget-object v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$SettingsObserver;->stopObserving()V

    .line 724
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 727
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->unregisterRotationPolicyListener(Landroid/content/Context;)V

    .line 728
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 717
    invoke-static {p1}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 718
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 850
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 851
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 853
    sget-object v3, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 886
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 887
    :cond_1
    return-void

    .line 854
    :cond_2
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 855
    sget-object v3, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 856
    :cond_3
    const-string v3, "android.location.MODE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 857
    sget-object v3, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 862
    :cond_4
    const-string v3, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 863
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 864
    .local v2, "data":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 865
    .local v1, "buttonId":I
    if-nez v1, :cond_5

    .line 866
    sget-object v3, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 867
    :cond_5
    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    .line 868
    invoke-direct {p0, p1}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->toggleBrightness(Landroid/content/Context;)V

    goto :goto_0

    .line 870
    :cond_6
    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    .line 871
    sget-object v3, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sRotationState:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 873
    :cond_7
    const/4 v3, 0x3

    if-ne v1, v3, :cond_8

    .line 874
    sget-object v3, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 875
    :cond_8
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 876
    sget-object v3, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 679
    const-string v2, "SettingsAppWidgetProvider"

    const-string v3, "onUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iput-object p1, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->mContext:Landroid/content/Context;

    .line 682
    invoke-static {p1}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 684
    .local v1, "view":Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 685
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 687
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->registerRotationPolicyListener(Landroid/content/Context;)V

    .line 688
    return-void
.end method

.method public registerRotationPolicyListener(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 691
    invoke-static {p1}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "registerRotationPolicyListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V

    .line 696
    :cond_0
    return-void
.end method

.method public unregisterRotationPolicyListener(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 699
    invoke-static {p1}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "unregisterRotationPolicyListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v0, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {p1, v0}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 703
    :cond_0
    return-void
.end method
