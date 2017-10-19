.class public Lcom/android/exsettings/MultisimAndDataSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "MultisimAndDataSettings.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private mMDPreference:Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;

.field private mMultiSim:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/android/exsettings/MultisimAndDataSettings$2;

    invoke-direct {v0}, Lcom/android/exsettings/MultisimAndDataSettings$2;-><init>()V

    sput-object v0, Lcom/android/exsettings/MultisimAndDataSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 53
    new-instance v0, Lcom/android/exsettings/MultisimAndDataSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/MultisimAndDataSettings$1;-><init>(Lcom/android/exsettings/MultisimAndDataSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/MultisimAndDataSettings;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/MultisimAndDataSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/MultisimAndDataSettings;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/exsettings/MultisimAndDataSettings;->onAirplaneModeChanged()V

    return-void
.end method

.method private hasIccCard()Z
    .locals 3

    .prologue
    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 122
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 124
    const/4 v1, 0x1

    .line 128
    :goto_1
    return v1

    .line 121
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private onAirplaneModeChanged()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/exsettings/MultisimAndDataSettings;->mMDPreference:Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;

    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/exsettings/MultisimAndDataSettings;->mMDPreference:Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;

    invoke-direct {p0}, Lcom/android/exsettings/MultisimAndDataSettings;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/exsettings/MultisimAndDataSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;->setEnabled(Z)V

    .line 140
    :cond_0
    return-void

    .line 133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x58

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lcom/android/exsettings/MultisimAndDataSettings;->addPreferencesFromResource(I)V

    .line 86
    const-string v0, "toggle_mobile_data"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/MultisimAndDataSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;

    iput-object v0, p0, Lcom/android/exsettings/MultisimAndDataSettings;->mMDPreference:Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;

    .line 87
    const-string v0, "multi_sim_settings"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/MultisimAndDataSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/exsettings/MultisimAndDataSettings;->mMultiSim:Landroid/preference/PreferenceScreen;

    .line 89
    iget-object v1, p0, Lcom/android/exsettings/MultisimAndDataSettings;->mMDPreference:Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;

    invoke-direct {p0}, Lcom/android/exsettings/MultisimAndDataSettings;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/MultisimAndDataSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;->setEnabled(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/android/exsettings/MultisimAndDataSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/MultisimAndDataSettings;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 117
    invoke-virtual {p0}, Lcom/android/exsettings/MultisimAndDataSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/MultisimAndDataSettings;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 109
    iget-object v0, p0, Lcom/android/exsettings/MultisimAndDataSettings;->mMDPreference:Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/exsettings/MultisimAndDataSettings;->mMDPreference:Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;

    invoke-virtual {v0}, Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;->onPause()V

    .line 112
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/android/exsettings/MultisimAndDataSettings;->mMDPreference:Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/exsettings/MultisimAndDataSettings;->mMDPreference:Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;

    invoke-virtual {v0}, Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;->onResume()V

    .line 104
    :cond_0
    return-void
.end method
