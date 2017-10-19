.class public Lcom/android/exsettings/WifiSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiSwitchEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance v0, Lcom/android/exsettings/WifiSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/WifiSwitchEnabler$1;-><init>(Lcom/android/exsettings/WifiSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    iput-object p1, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 84
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 87
    iget-object v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/WifiSwitchEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/WifiSwitchEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/exsettings/WifiSwitchEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/exsettings/WifiSwitchEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/WifiSwitchEnabler;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/WifiSwitchEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/WifiSwitchEnabler;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/exsettings/WifiSwitchEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 232
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 178
    packed-switch p1, :pswitch_data_0

    .line 194
    invoke-direct {p0, v1}, Lcom/android/exsettings/WifiSwitchEnabler;->setSwitchChecked(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 198
    :goto_0
    return-void

    .line 180
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 183
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/exsettings/WifiSwitchEnabler;->setSwitchChecked(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 187
    :pswitch_2
    iget-object v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 190
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/exsettings/WifiSwitchEnabler;->setSwitchChecked(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mStateMachineEvent:Z

    .line 203
    iget-object v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mStateMachineEvent:Z

    .line 206
    :cond_0
    return-void
.end method

.method private setSwitchState()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 210
    iget-object v5, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 211
    .local v2, "wifiState":I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    move v1, v3

    .line 212
    .local v1, "isEnabled":Z
    :goto_0
    if-ne v2, v3, :cond_3

    move v0, v3

    .line 213
    .local v0, "isDisabled":Z
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/exsettings/WifiSwitchEnabler;->setSwitchChecked(Z)V

    .line 214
    iget-object v5, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 215
    return-void

    .end local v0    # "isDisabled":Z
    .end local v1    # "isEnabled":Z
    :cond_2
    move v1, v4

    .line 211
    goto :goto_0

    .restart local v1    # "isEnabled":Z
    :cond_3
    move v0, v4

    .line 212
    goto :goto_1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 151
    iget-boolean v1, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/exsettings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0280

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 159
    iget-object v1, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 165
    .local v0, "wifiApState":I
    if-eqz p2, :cond_4

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 170
    :cond_4
    iget-object v1, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 173
    iget-object v1, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c027e

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    iget-object v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    iget-object v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    invoke-direct {p0}, Lcom/android/exsettings/WifiSwitchEnabler;->setSwitchState()V

    .line 107
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    iput-object p1, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 137
    iget-object v0, p0, Lcom/android/exsettings/WifiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 145
    invoke-direct {p0}, Lcom/android/exsettings/WifiSwitchEnabler;->setSwitchState()V

    goto :goto_0
.end method
