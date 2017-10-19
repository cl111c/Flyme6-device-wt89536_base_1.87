.class public Lcom/android/exsettings/DataEnabler;
.super Ljava/lang/Object;
.source "DataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;
    }
.end annotation


# static fields
.field private static switch_on_waiting_is_check:Z


# instance fields
.field private mConnService:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mOldMobileDataEnabled:Ljava/lang/Boolean;

.field private final mReceiver:Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;

.field private mSetDataCallRunnable:Ljava/lang/Runnable;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/exsettings/DataEnabler;->switch_on_waiting_is_check:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataSwitch"    # Landroid/widget/Switch;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lcom/android/exsettings/DataEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataEnabler$1;-><init>(Lcom/android/exsettings/DataEnabler;)V

    iput-object v0, p0, Lcom/android/exsettings/DataEnabler;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 157
    new-instance v0, Lcom/android/exsettings/DataEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataEnabler$2;-><init>(Lcom/android/exsettings/DataEnabler;)V

    iput-object v0, p0, Lcom/android/exsettings/DataEnabler;->mSetDataCallRunnable:Ljava/lang/Runnable;

    .line 217
    new-instance v0, Lcom/android/exsettings/DataEnabler$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/DataEnabler$4;-><init>(Lcom/android/exsettings/DataEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/exsettings/DataEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 70
    iput-object p1, p0, Lcom/android/exsettings/DataEnabler;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/exsettings/DataEnabler;->mSwitch:Landroid/widget/Switch;

    .line 72
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/exsettings/DataEnabler;->mConnService:Landroid/net/ConnectivityManager;

    .line 74
    new-instance v0, Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;-><init>(Lcom/android/exsettings/DataEnabler;Lcom/android/exsettings/DataEnabler$1;)V

    iput-object v0, p0, Lcom/android/exsettings/DataEnabler;->mReceiver:Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/DataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 76
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/android/exsettings/DataEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/DataEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/exsettings/DataEnabler;->setDataEnable(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/exsettings/DataEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataEnabler;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 58
    sput-boolean p0, Lcom/android/exsettings/DataEnabler;->switch_on_waiting_is_check:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/exsettings/DataEnabler;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataEnabler;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/exsettings/DataEnabler;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/DataEnabler;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/exsettings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/exsettings/DataEnabler;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataEnabler;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mConnService:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/DataEnabler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataEnabler;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/exsettings/DataEnabler;->isAirPlaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/DataEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataEnabler;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/exsettings/DataEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/DataEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/exsettings/DataEnabler;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/exsettings/DataEnabler;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataEnabler;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mOldMobileDataEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/exsettings/DataEnabler;)Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataEnabler;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mReceiver:Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/exsettings/DataEnabler;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DataEnabler;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method private isAirPlaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, Lcom/android/exsettings/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 166
    .local v0, "on":Z
    :cond_0
    return v0
.end method

.method private isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method private setDataEnable(Z)V
    .locals 3
    .param p1, "isChecked"    # Z

    .prologue
    .line 117
    const-string v0, "DataEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataEnable isChecked= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mMobileDataEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/exsettings/DataEnabler;->mOldMobileDataEnabled:Ljava/lang/Boolean;

    .line 120
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 121
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/exsettings/DataEnabler;->mSetDataCallRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 122
    invoke-direct {p0}, Lcom/android/exsettings/DataEnabler;->isAirPlaneModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/DataEnabler;->switch_on_waiting()V

    .line 127
    :cond_1
    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/exsettings/DataEnabler;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 233
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 234
    return-void
.end method


# virtual methods
.method public hasIccCard()Z
    .locals 5

    .prologue
    .line 170
    iget-object v3, p0, Lcom/android/exsettings/DataEnabler;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 171
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 173
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 174
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    .line 175
    const/4 v3, 0x1

    .line 179
    :goto_1
    return v3

    .line 173
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/DataEnabler;->mReceiver:Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    invoke-direct {p0}, Lcom/android/exsettings/DataEnabler;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/DataEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/DataEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 81
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exsettings/DataEnabler;->mReceiver:Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;

    iget-object v3, p0, Lcom/android/exsettings/DataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 83
    iget-object v2, p0, Lcom/android/exsettings/DataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/exsettings/DataEnabler;->isAirPlaneModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/DataEnabler;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/exsettings/DataEnabler;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/exsettings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 86
    invoke-direct {p0}, Lcom/android/exsettings/DataEnabler;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/DataEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 96
    :goto_1
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/DataEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/DataEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1
.end method

.method public switch_on_waiting()V
    .locals 2

    .prologue
    .line 185
    sget-boolean v1, Lcom/android/exsettings/DataEnabler;->switch_on_waiting_is_check:Z

    if-nez v1, :cond_0

    .line 187
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/exsettings/DataEnabler;->switch_on_waiting_is_check:Z

    .line 188
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/exsettings/DataEnabler$3;

    invoke-direct {v1, p0}, Lcom/android/exsettings/DataEnabler$3;-><init>(Lcom/android/exsettings/DataEnabler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 205
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 207
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_0
    return-void
.end method
