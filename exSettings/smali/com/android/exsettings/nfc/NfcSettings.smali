.class public Lcom/android/exsettings/nfc/NfcSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "NfcSettings.java"


# static fields
.field private static KEY_ANDROID_BEAM_EXPLAIN:Ljava/lang/String;

.field private static KEY_ANDROID_BEAM_TOGGLE:Ljava/lang/String;

.field private static KEY_NFC_TOGGLE:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAndroidBeamPref:Landroid/preference/SwitchPreference;

.field private mAndroidBeamText:Landroid/preference/Preference;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnablerPref:Landroid/preference/SwitchPreference;

.field private mTctNfcEnabler:Lcom/android/exsettings/nfc/TctNfcEnabler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "NfcSettings"

    sput-object v0, Lcom/android/exsettings/nfc/NfcSettings;->TAG:Ljava/lang/String;

    .line 55
    const-string v0, "toggle_nfc"

    sput-object v0, Lcom/android/exsettings/nfc/NfcSettings;->KEY_NFC_TOGGLE:Ljava/lang/String;

    .line 56
    const-string v0, "toggle_android_beam"

    sput-object v0, Lcom/android/exsettings/nfc/NfcSettings;->KEY_ANDROID_BEAM_TOGGLE:Ljava/lang/String;

    .line 57
    const-string v0, "android_beam_explain"

    sput-object v0, Lcom/android/exsettings/nfc/NfcSettings;->KEY_ANDROID_BEAM_EXPLAIN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0x45

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 87
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSettings;->mAndroidBeamText:Landroid/preference/Preference;

    const v1, 0x7f040005

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 90
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSettings;->mAndroidBeamText:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 91
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/android/exsettings/nfc/NfcSettings;->addPreferencesFromResource(I)V

    .line 74
    sget-object v0, Lcom/android/exsettings/nfc/NfcSettings;->KEY_NFC_TOGGLE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/exsettings/nfc/NfcSettings;->mNfcEnablerPref:Landroid/preference/SwitchPreference;

    .line 75
    sget-object v0, Lcom/android/exsettings/nfc/NfcSettings;->KEY_ANDROID_BEAM_TOGGLE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/exsettings/nfc/NfcSettings;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    .line 76
    sget-object v0, Lcom/android/exsettings/nfc/NfcSettings;->KEY_ANDROID_BEAM_EXPLAIN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/nfc/NfcSettings;->mAndroidBeamText:Landroid/preference/Preference;

    .line 78
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 80
    new-instance v0, Lcom/android/exsettings/nfc/TctNfcEnabler;

    invoke-virtual {p0}, Lcom/android/exsettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/nfc/NfcSettings;->mNfcEnablerPref:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/exsettings/nfc/NfcSettings;->mAndroidBeamPref:Landroid/preference/SwitchPreference;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exsettings/nfc/TctNfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;)V

    iput-object v0, p0, Lcom/android/exsettings/nfc/NfcSettings;->mTctNfcEnabler:Lcom/android/exsettings/nfc/TctNfcEnabler;

    .line 81
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 109
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSettings;->mTctNfcEnabler:Lcom/android/exsettings/nfc/TctNfcEnabler;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSettings;->mTctNfcEnabler:Lcom/android/exsettings/nfc/TctNfcEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/nfc/TctNfcEnabler;->pause()V

    .line 112
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 101
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSettings;->mTctNfcEnabler:Lcom/android/exsettings/nfc/TctNfcEnabler;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcSettings;->mTctNfcEnabler:Lcom/android/exsettings/nfc/TctNfcEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/nfc/TctNfcEnabler;->resume()V

    .line 104
    :cond_0
    return-void
.end method
