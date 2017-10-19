.class public final Lcom/android/exsettings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/exsettings/widget/SwitchBar;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/exsettings/widget/SwitchBar;

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v1, Lcom/android/exsettings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/exsettings/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v1, Lcom/android/exsettings/bluetooth/BluetoothEnabler$2;

    invoke-direct {v1, p0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler$2;-><init>(Lcom/android/exsettings/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    .line 88
    invoke-virtual {p2}, Lcom/android/exsettings/widget/SwitchBar;->getSwitch()Lcom/android/exsettings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 89
    iput-boolean v2, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 91
    invoke-static {p1}, Lcom/android/exsettings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 92
    .local v0, "manager":Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 94
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    .line 95
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 99
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 100
    return-void

    .line 97
    :cond_0
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/exsettings/bluetooth/BluetoothEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 168
    iget-boolean v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 172
    iget-boolean v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 176
    :cond_1
    return-void
.end method

.method private updateSearchIndex(Z)V
    .locals 3
    .param p1, "isBluetoothOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 182
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 183
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_bluetooth_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 185
    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    packed-switch p1, :pswitch_data_0

    .line 158
    invoke-direct {p0, v1}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 160
    invoke-direct {p0, v1}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    .line 162
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 144
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 146
    invoke-direct {p0, v2}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    goto :goto_0

    .line 150
    :pswitch_2
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 153
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 155
    invoke-direct {p0, v1}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 190
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/exsettingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0280

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 194
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    const v1, 0x7f0c0d44

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/SwitchBar;->setTextView(I)V

    .line 199
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const/16 v1, 0x9f

    invoke-static {v0, v1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 201
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p2}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 205
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 134
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 126
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_1

    .line 117
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 123
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public setupSwitchBar()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->show()V

    .line 104
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->hide()V

    .line 108
    return-void
.end method
