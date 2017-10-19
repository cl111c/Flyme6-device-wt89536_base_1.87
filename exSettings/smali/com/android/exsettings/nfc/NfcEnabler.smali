.class public Lcom/android/exsettings/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mAndroidBeam:Landroid/preference/PreferenceScreen;

.field private mBeamDisallowed:Z

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mSwitch:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic access$000(Lcom/android/exsettings/nfc/NfcEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/nfc/NfcEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/exsettings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method private handleNfcStateChanged(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    packed-switch p1, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v2, p0, Lcom/android/exsettings/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 113
    iget-object v2, p0, Lcom/android/exsettings/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c026f

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v2, p0, Lcom/android/exsettings/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 119
    iget-object v2, p0, Lcom/android/exsettings/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 120
    iget-object v2, p0, Lcom/android/exsettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    iget-boolean v3, p0, Lcom/android/exsettings/nfc/NfcEnabler;->mBeamDisallowed:Z

    if-nez v3, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/exsettings/nfc/NfcEnabler;->mBeamDisallowed:Z

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c026d

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 120
    goto :goto_1

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c026e

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v2, p0, Lcom/android/exsettings/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 133
    :pswitch_3
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 134
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 110
    nop

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
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 97
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 98
    .local v0, "desiredState":Z
    iget-object v1, p0, Lcom/android/exsettings/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 100
    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/exsettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 106
    :goto_0
    return v2

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method
