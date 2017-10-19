.class public final Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;
.super Ljava/lang/Object;
.source "BluetoothSwitchEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v1, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler$1;-><init>(Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;)V

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 68
    iput-boolean v2, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mValidListener:Z

    .line 70
    invoke-static {p1, v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 71
    .local v0, "manager":Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 73
    iput-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    .line 74
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 78
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 79
    return-void

    .line 76
    :cond_0
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method private setChecked(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 164
    iget-boolean v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 168
    iget-boolean v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 172
    :cond_1
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

    .line 155
    invoke-direct {p0, v1}, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->setChecked(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 158
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 144
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->setChecked(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 148
    :pswitch_2
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 151
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->setChecked(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

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

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 124
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/exsettings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0280

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 128
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p2}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 136
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->handleStateChanged(I)V

    .line 91
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 8
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 109
    iget-object v6, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v6, p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v6, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 112
    iget-object v6, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iget-boolean v7, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mValidListener:Z

    if-eqz v7, :cond_1

    move-object v3, p0

    :cond_1
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    const/16 v0, 0xa

    .line 115
    .local v0, "bluetoothState":I
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 116
    :cond_2
    const/16 v3, 0xc

    if-ne v0, v3, :cond_5

    move v2, v4

    .line 117
    .local v2, "isOn":Z
    :goto_1
    const/16 v3, 0xa

    if-ne v0, v3, :cond_6

    move v1, v4

    .line 118
    .local v1, "isOff":Z
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->setChecked(Z)V

    .line 119
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v5, v4

    :cond_4
    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .end local v1    # "isOff":Z
    .end local v2    # "isOn":Z
    :cond_5
    move v2, v5

    .line 116
    goto :goto_1

    .restart local v2    # "isOn":Z
    :cond_6
    move v1, v5

    .line 117
    goto :goto_2
.end method
