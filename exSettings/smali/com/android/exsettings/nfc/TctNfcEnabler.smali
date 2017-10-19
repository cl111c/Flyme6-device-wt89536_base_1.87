.class public Lcom/android/exsettings/nfc/TctNfcEnabler;
.super Ljava/lang/Object;
.source "TctNfcEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mAndroidBeamPref:Landroid/preference/SwitchPreference;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mNfcPref:Landroid/preference/SwitchPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "NfcEnabler"    # Landroid/preference/SwitchPreference;
    .param p3, "androidBeam"    # Landroid/preference/SwitchPreference;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/android/exsettings/nfc/TctNfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/nfc/TctNfcEnabler$1;-><init>(Lcom/android/exsettings/nfc/TctNfcEnabler;)V

    iput-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    iput-object p1, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcPref:Landroid/preference/SwitchPreference;

    .line 80
    iput-object p3, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    .line 81
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->resolver:Landroid/content/ContentResolver;

    .line 85
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/exsettings/nfc/TctNfcEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/nfc/TctNfcEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/exsettings/nfc/TctNfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method private handleNfcStateChanged(I)V
    .locals 6
    .param p1, "newState"    # I

    .prologue
    const v5, 0x7f0c026f

    const v4, 0x7f0c026d

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 172
    packed-switch p1, :pswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 174
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 179
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 185
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 188
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 193
    :goto_1
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0c026e

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 196
    :pswitch_2
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 208
    :goto_2
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 211
    :pswitch_3
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 214
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const v6, 0x7f0c026d

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 116
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 117
    .local v0, "desiredState":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toggle_nfc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 127
    if-eqz v0, :cond_3

    .line 129
    iget-object v2, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->resolver:Landroid/content/ContentResolver;

    const-string v3, "nfc_status_system_settings"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    iget-object v2, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 131
    iget-object v2, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 134
    iget-object v2, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 149
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toggle_android_beam"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, "success":Z
    iget-object v2, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 152
    if-eqz v0, :cond_5

    .line 153
    iget-object v2, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v1

    .line 157
    :goto_1
    if-eqz v1, :cond_1

    .line 158
    iget-object v2, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 159
    if-eqz v0, :cond_6

    .line 160
    iget-object v2, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 165
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 167
    .end local v1    # "success":Z
    :cond_2
    return v4

    .line 139
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 140
    iget-object v2, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 144
    :cond_4
    iget-object v2, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->resolver:Landroid/content/ContentResolver;

    const-string v3, "nfc_status_system_settings"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    iget-object v2, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0

    .line 155
    .restart local v1    # "success":Z
    :cond_5
    iget-object v2, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v1

    goto :goto_1

    .line 162
    :cond_6
    iget-object v2, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    const v3, 0x7f0c026e

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/nfc/TctNfcEnabler;->handleNfcStateChanged(I)V

    .line 100
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mNfcPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/exsettings/nfc/TctNfcEnabler;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method
