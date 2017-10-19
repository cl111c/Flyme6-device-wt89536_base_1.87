.class public Lcom/android/exsettings/nfc/NfcSwitchEnabler;
.super Ljava/lang/Object;
.source "NfcSwitchEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mValidListener:Z

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/android/exsettings/nfc/NfcSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/nfc/NfcSwitchEnabler$1;-><init>(Lcom/android/exsettings/nfc/NfcSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    iput-object p1, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 96
    iput-boolean v1, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mValidListener:Z

    .line 98
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 99
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 102
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->resolver:Landroid/content/ContentResolver;

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    goto :goto_0
.end method

.method private setChecked(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 199
    iget-boolean v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 203
    iget-boolean v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 207
    :cond_1
    return-void
.end method


# virtual methods
.method handleNfcStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 174
    packed-switch p1, :pswitch_data_0

    .line 190
    invoke-direct {p0, v1}, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->setChecked(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 193
    :goto_0
    return-void

    .line 176
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 179
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->setChecked(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 183
    :pswitch_2
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 186
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->setChecked(Z)V

    .line 187
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 157
    if-eqz p2, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->resolver:Landroid/content/ContentResolver;

    const-string v1, "nfc_status_system_settings"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 162
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 170
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 171
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->resolver:Landroid/content/ContentResolver;

    const-string v1, "nfc_status_system_settings"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->handleNfcStateChanged(I)V

    .line 115
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 8
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 130
    iget-object v6, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v6, p1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v6, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 132
    iput-object p1, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 133
    iget-object v6, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iget-boolean v7, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mValidListener:Z

    if-eqz v7, :cond_1

    move-object v3, p0

    :cond_1
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    const/4 v2, 0x1

    .line 136
    .local v2, "nfcState":I
    iget-object v3, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v3, :cond_2

    .line 137
    iget-object v3, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    .line 139
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    move v1, v4

    .line 140
    .local v1, "isOn":Z
    :goto_1
    if-ne v2, v4, :cond_6

    move v0, v4

    .line 141
    .local v0, "isOff":Z
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->setChecked(Z)V

    .line 142
    iget-object v3, p0, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    move v5, v4

    :cond_4
    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .end local v0    # "isOff":Z
    .end local v1    # "isOn":Z
    :cond_5
    move v1, v5

    .line 139
    goto :goto_1

    .restart local v1    # "isOn":Z
    :cond_6
    move v0, v5

    .line 140
    goto :goto_2
.end method
