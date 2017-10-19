.class public Lcom/android/exsettings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mListeningToOnSwitchChange:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/exsettings/widget/SwitchBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/exsettings/widget/SwitchBar;

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Lcom/android/exsettings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WifiEnabler$1;-><init>(Lcom/android/exsettings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    new-instance v0, Lcom/android/exsettings/wifi/WifiEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WifiEnabler$2;-><init>(Lcom/android/exsettings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    .line 97
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 101
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiEnabler;->setupSwitchBar()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/wifi/WifiEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/exsettings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiEnabler;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiEnabler;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/exsettings/wifi/WifiEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiEnabler;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 209
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 150
    packed-switch p1, :pswitch_data_0

    .line 172
    invoke-direct {p0, v1}, Lcom/android/exsettings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 173
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/exsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/SwitchBar;->setSwitchDividerVisibility(I)V

    .line 176
    invoke-direct {p0, v1}, Lcom/android/exsettings/wifi/WifiEnabler;->updateSearchIndex(Z)V

    .line 178
    :goto_0
    return-void

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 155
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/exsettings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/exsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/SwitchBar;->setSwitchDividerVisibility(I)V

    .line 159
    invoke-direct {p0, v2}, Lcom/android/exsettings/wifi/WifiEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 162
    :pswitch_2
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 165
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/exsettings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/exsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/SwitchBar;->setSwitchDividerVisibility(I)V

    .line 169
    invoke-direct {p0, v1}, Lcom/android/exsettings/wifi/WifiEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSwitchBarChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 191
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/widget/SwitchBar;->setChecked(Z)V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 193
    return-void
.end method

.method private updateSearchIndex(Z)V
    .locals 3
    .param p1, "isWiFiOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 184
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 185
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_wifi_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 186
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 187
    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 214
    iget-boolean v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/exsettingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 219
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0280

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 221
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/exsettings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 226
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 227
    .local v0, "wifiApState":I
    if-eqz p2, :cond_4

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 229
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 231
    :cond_4
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_5

    const/16 v1, 0x8b

    :goto_1
    invoke-static {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 233
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/exsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 236
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c027e

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 231
    :cond_5
    const/16 v1, 0x8a

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    iget-boolean v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 147
    :cond_0
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 134
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    iget-boolean v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 139
    :cond_0
    return-void
.end method

.method public setupSwitchBar()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 108
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 109
    .local v0, "state":I
    invoke-direct {p0, v0}, Lcom/android/exsettings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    .line 110
    iget-boolean v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 112
    iput-boolean v4, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/exsettings/widget/SwitchBar;->show()V

    .line 116
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0c80

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/android/exsettings/widget/SwitchBar;->setOverlayTextView(ZLjava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c02a3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/exsettings/widget/SwitchBar;->setSummary(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->hide()V

    .line 129
    return-void
.end method
