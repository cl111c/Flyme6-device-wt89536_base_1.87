.class public Lcom/android/exsettings/AirplaneModeEnabler;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final mSwitchPref:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "airplaneModeSwitchPreference"    # Landroid/preference/SwitchPreference;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/android/exsettings/AirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/AirplaneModeEnabler$1;-><init>(Lcom/android/exsettings/AirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/android/exsettings/AirplaneModeEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/AirplaneModeEnabler$2;-><init>(Lcom/android/exsettings/AirplaneModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 73
    iput-object p1, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 78
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 79
    iget-object v0, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/AirplaneModeEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/AirplaneModeEnabler;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/exsettings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/exsettingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 121
    return-void
.end method

.method private setAirplaneModeOn(Z)V
    .locals 4
    .param p1, "enabling"    # Z

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    iget-object v1, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 109
    return-void

    .line 101
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 127
    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_0
    move-object v0, p2

    .line 131
    check-cast v0, Ljava/lang/Boolean;

    .line 132
    .local v0, "value":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    const/16 v2, 0xb1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 133
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/exsettings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 95
    iget-object v0, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    iget-object v0, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 97
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/exsettingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 87
    iget-object v0, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    iget-object v0, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/exsettings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    return-void
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 0
    .param p1, "isECMExit"    # Z
    .param p2, "isAirplaneModeOn"    # Z

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 141
    invoke-direct {p0, p2}, Lcom/android/exsettings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    goto :goto_0
.end method
