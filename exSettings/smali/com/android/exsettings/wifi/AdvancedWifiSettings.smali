.class public Lcom/android/exsettings/wifi/AdvancedWifiSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/wifi/AdvancedWifiSettings$WpsFragment;
    }
.end annotation


# instance fields
.field private mAutoConnectEnablePref:Landroid/preference/CheckBoxPreference;

.field private mCellularToWlanHintPref:Landroid/preference/CheckBoxPreference;

.field private mCellularToWlanPref:Landroid/preference/ListPreference;

.field private mFilter:Landroid/content/IntentFilter;

.field private mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWapiCertInstall:Landroid/preference/Preference;

.field private mWapiCertUninstall:Landroid/preference/Preference;

.field private mWifiAssistantPreference:Lcom/android/exsettings/AppListSwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 132
    new-instance v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings$1;-><init>(Lcom/android/exsettings/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 716
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    return-void
.end method

.method private getCellularToWlanValue()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 445
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->isAutoConnectEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cellular_to_wlan_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private ifNotifyConnect()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 425
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notify_user_when_connect_cmcc"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initPreferences()V
    .locals 22

    .prologue
    .line 224
    const-string v19, "notify_open_networks"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    .line 226
    .local v7, "notifyOpenNetworks":Landroid/preference/SwitchPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "wifi_networks_available_notification_on"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 230
    const-string v19, "enable_hs2"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    .line 232
    .local v3, "enableHs2":Landroid/preference/SwitchPreference;
    if-eqz v3, :cond_0

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x11200bd

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "wifi_hotspot2_enabled"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 243
    :cond_0
    :goto_2
    new-instance v5, Landroid/content/Intent;

    const-string v19, "android.credentials.INSTALL_AS_USER"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v5, "intent":Landroid/content/Intent;
    const-string v19, "com.android.certinstaller"

    const-string v20, "com.android.certinstaller.CertInstallerMain"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v19, "install_as_uid"

    const/16 v20, 0x3f2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    const-string v19, "install_credentials"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 248
    .local v8, "pref":Landroid/preference/Preference;
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 251
    .local v2, "context":Landroid/content/Context;
    const-string v19, "wifi_assistant"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Lcom/android/exsettings/AppListSwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/exsettings/AppListSwitchPreference;

    .line 252
    invoke-static {v2}, Landroid/net/NetworkScorerAppManager;->getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v10

    .line 254
    .local v10, "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    if-nez v19, :cond_14

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_14

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/exsettings/AppListSwitchPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/AppListSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 256
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->initWifiAssistantPreference(Ljava/util/Collection;)V

    .line 261
    :cond_1
    :goto_3
    new-instance v14, Landroid/content/Intent;

    const-class v19, Lcom/android/exsettings/Settings$WifiP2pSettingsActivity;

    move-object/from16 v0, v19

    invoke-direct {v14, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .local v14, "wifiDirectIntent":Landroid/content/Intent;
    const-string v19, "wifi_direct"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 265
    .local v15, "wifiDirectPref":Landroid/preference/Preference;
    if-eqz v15, :cond_2

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 270
    :cond_2
    if-eqz v15, :cond_3

    .line 271
    invoke-virtual {v15, v14}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 276
    :cond_3
    const-string v19, "wps_push_button"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 277
    .local v18, "wpsPushPref":Landroid/preference/Preference;
    if-eqz v18, :cond_4

    .line 278
    new-instance v19, Lcom/android/exsettings/wifi/AdvancedWifiSettings$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings$2;-><init>(Lcom/android/exsettings/wifi/AdvancedWifiSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 287
    :cond_4
    const-string v19, "wps_pin_entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 288
    .local v17, "wpsPinPref":Landroid/preference/Preference;
    if-eqz v17, :cond_5

    .line 289
    new-instance v19, Lcom/android/exsettings/wifi/AdvancedWifiSettings$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings$3;-><init>(Lcom/android/exsettings/wifi/AdvancedWifiSettings;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 298
    :cond_5
    if-eqz v18, :cond_6

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 301
    :cond_6
    if-eqz v17, :cond_7

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 306
    :cond_7
    const-string v19, "wifi_priority_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 307
    .local v9, "prioritySettingPref":Landroid/preference/Preference;
    if-eqz v9, :cond_15

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f10001b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    if-nez v19, :cond_8

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 315
    :cond_8
    :goto_4
    const-string v19, "frequency_band"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 317
    .local v4, "frequencyPref":Landroid/preference/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v19

    if-eqz v19, :cond_17

    .line 318
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v13

    .line 320
    .local v13, "value":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_16

    .line 321
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/preference/Preference;I)V

    .line 333
    .end local v13    # "value":I
    :cond_9
    :goto_5
    const-string v19, "sleep_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    .line 334
    .local v11, "sleepPolicyPref":Landroid/preference/ListPreference;
    if-eqz v11, :cond_b

    .line 335
    invoke-static {v2}, Lcom/android/exsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 336
    const v19, 0x7f0a0021

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 338
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "wifi_sleep_policy"

    const/16 v21, 0x2

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 342
    .restart local v13    # "value":I
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 343
    .local v12, "stringValue":Ljava/lang/String;
    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 347
    .end local v12    # "stringValue":Ljava/lang/String;
    .end local v13    # "value":I
    :cond_b
    const-string v19, "auto_connect_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/preference/CheckBoxPreference;

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f10001c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->isAutoConnectEnabled()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 358
    :cond_c
    :goto_6
    const-string v19, "cellular_to_wlan"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/ListPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/preference/ListPreference;

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f10001d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 362
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getCellularToWlanValue()I

    move-result v13

    .line 363
    .restart local v13    # "value":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v13}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->updateCellToWlanSummary(Landroid/preference/Preference;I)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 371
    .end local v13    # "value":I
    :cond_d
    :goto_7
    const-string v19, "wlan_to_cellular_hint"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/CheckBoxPreference;

    .line 373
    .local v16, "wlanToCellularHintPref":Landroid/preference/CheckBoxPreference;
    if-eqz v16, :cond_e

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f100020

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 375
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->isWlanToCellHintEnable()Z

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 376
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 382
    :cond_e
    :goto_8
    const-string v19, "notify_ap_connected"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 384
    .local v6, "notifyConnectedApPref":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_f

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f10001e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 386
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->ifNotifyConnect()Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 387
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 393
    :cond_f
    :goto_9
    const-string v19, "cellular_to_wlan_hint"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/preference/CheckBoxPreference;

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f10001f

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->isCellularToWlanHintEnable()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 402
    :cond_10
    :goto_a
    return-void

    .line 226
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "enableHs2":Landroid/preference/SwitchPreference;
    .end local v4    # "frequencyPref":Landroid/preference/ListPreference;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "notifyConnectedApPref":Landroid/preference/CheckBoxPreference;
    .end local v8    # "pref":Landroid/preference/Preference;
    .end local v9    # "prioritySettingPref":Landroid/preference/Preference;
    .end local v10    # "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    .end local v11    # "sleepPolicyPref":Landroid/preference/ListPreference;
    .end local v14    # "wifiDirectIntent":Landroid/content/Intent;
    .end local v15    # "wifiDirectPref":Landroid/preference/Preference;
    .end local v16    # "wlanToCellularHintPref":Landroid/preference/CheckBoxPreference;
    .end local v17    # "wpsPinPref":Landroid/preference/Preference;
    .end local v18    # "wpsPushPref":Landroid/preference/Preference;
    :cond_11
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 235
    .restart local v3    # "enableHs2":Landroid/preference/SwitchPreference;
    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 239
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 257
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v8    # "pref":Landroid/preference/Preference;
    .restart local v10    # "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/exsettings/AppListSwitchPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/exsettings/AppListSwitchPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 312
    .restart local v9    # "prioritySettingPref":Landroid/preference/Preference;
    .restart local v14    # "wifiDirectIntent":Landroid/content/Intent;
    .restart local v15    # "wifiDirectPref":Landroid/preference/Preference;
    .restart local v17    # "wpsPinPref":Landroid/preference/Preference;
    .restart local v18    # "wpsPushPref":Landroid/preference/Preference;
    :cond_15
    const-string v19, "AdvancedWifiSettings"

    const-string v20, "Fail to get priority pref..."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 324
    .restart local v4    # "frequencyPref":Landroid/preference/ListPreference;
    .restart local v13    # "value":I
    :cond_16
    const-string v19, "AdvancedWifiSettings"

    const-string v20, "Failed to fetch frequency band"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 327
    .end local v13    # "value":I
    :cond_17
    if-eqz v4, :cond_9

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 354
    .restart local v11    # "sleepPolicyPref":Landroid/preference/ListPreference;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 367
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 378
    .restart local v16    # "wlanToCellularHintPref":Landroid/preference/CheckBoxPreference;
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 389
    .restart local v6    # "notifyConnectedApPref":Landroid/preference/CheckBoxPreference;
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    .line 399
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_a
.end method

.method private initWapiCertInstallPreference()V
    .locals 3

    .prologue
    .line 736
    const-string v1, "wapi_cert_install"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 737
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 738
    const-string v1, "AdvancedWifiSettings"

    const-string v2, "initWapiCertInstallPreference pref != null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 743
    :goto_0
    return-void

    .line 741
    :cond_0
    const-string v1, "AdvancedWifiSettings"

    const-string v2, "initWapiCertInstallPreference pref == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initWapiCertUninstallPreference()V
    .locals 3

    .prologue
    .line 746
    const-string v1, "wapi_cert_uninstall"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 747
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 748
    const-string v1, "AdvancedWifiSettings"

    const-string v2, "initWapiCertUninstallPreference pref != null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 753
    :goto_0
    return-void

    .line 751
    :cond_0
    const-string v1, "AdvancedWifiSettings"

    const-string v2, "initWapiCertUninstallPreference pref == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initWifiAssistantPreference(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p1, "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 455
    .local v0, "count":I
    new-array v3, v0, [Ljava/lang/String;

    .line 456
    .local v3, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 457
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    .line 458
    .local v4, "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    iget-object v5, v4, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    aput-object v5, v3, v1

    .line 459
    add-int/lit8 v1, v1, 0x1

    .line 460
    goto :goto_0

    .line 461
    .end local v4    # "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/exsettings/AppListSwitchPreference;

    iget-object v6, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v6}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/exsettings/AppListSwitchPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 463
    return-void
.end method

.method private isAutoConnectEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_auto_connect_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCellularToWlanHintEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 405
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cellular_to_wlan_hint"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isWlanToCellHintEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 410
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wlan_to_cellular_hint"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private refreshWifiInfo()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    const v14, 0x7f0c03ef

    .line 668
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 669
    .local v0, "context":Landroid/content/Context;
    iget-object v12, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 671
    .local v8, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v12, "mac_address"

    invoke-virtual {p0, v12}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 672
    .local v10, "wifiMacAddressPref":Landroid/preference/Preference;
    if-nez v8, :cond_6

    const/4 v4, 0x0

    .line 673
    .local v4, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .end local v4    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v10, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 675
    invoke-virtual {v10, v13}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 677
    const-string v12, "current_ip_address"

    invoke-virtual {p0, v12}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 678
    .local v9, "wifiIpAddressPref":Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/exsettings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, "ipAddress":Ljava/lang/String;
    if-nez v3, :cond_0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "ipAddress":Ljava/lang/String;
    :cond_0
    invoke-virtual {v9, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 681
    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 682
    const-string v12, "current_gateway"

    invoke-virtual {p0, v12}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 683
    .local v7, "wifiGatewayPref":Landroid/preference/Preference;
    const/4 v2, 0x0

    .line 684
    .local v2, "gateway":Ljava/lang/String;
    const-string v12, "current_netmask"

    invoke-virtual {p0, v12}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 685
    .local v11, "wifiNetmaskPref":Landroid/preference/Preference;
    const/4 v5, 0x0

    .line 686
    .local v5, "netmask":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f10000c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 687
    iget-object v12, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 688
    .local v1, "dhcpInfo":Landroid/net/DhcpInfo;
    if-eqz v8, :cond_1

    .line 689
    if-eqz v1, :cond_1

    .line 690
    iget v12, v1, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v12}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v2

    .line 691
    iget v12, v1, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v12}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v5

    .line 694
    :cond_1
    if-eqz v7, :cond_3

    .line 695
    if-eqz v2, :cond_2

    iget v12, v1, Landroid/net/DhcpInfo;->gateway:I

    if-nez v12, :cond_8

    :cond_2
    invoke-virtual {p0, v14}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-virtual {v7, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 698
    :cond_3
    if-eqz v11, :cond_5

    .line 699
    if-eqz v5, :cond_4

    iget v12, v1, Landroid/net/DhcpInfo;->netmask:I

    if-nez v12, :cond_9

    :cond_4
    invoke-virtual {p0, v14}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_3
    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 713
    .end local v1    # "dhcpInfo":Landroid/net/DhcpInfo;
    :cond_5
    :goto_4
    return-void

    .line 672
    .end local v2    # "gateway":Ljava/lang/String;
    .end local v5    # "netmask":Ljava/lang/String;
    .end local v7    # "wifiGatewayPref":Landroid/preference/Preference;
    .end local v9    # "wifiIpAddressPref":Landroid/preference/Preference;
    .end local v11    # "wifiNetmaskPref":Landroid/preference/Preference;
    :cond_6
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 673
    .restart local v4    # "macAddress":Ljava/lang/String;
    :cond_7
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .end local v4    # "macAddress":Ljava/lang/String;
    .restart local v1    # "dhcpInfo":Landroid/net/DhcpInfo;
    .restart local v2    # "gateway":Ljava/lang/String;
    .restart local v5    # "netmask":Ljava/lang/String;
    .restart local v7    # "wifiGatewayPref":Landroid/preference/Preference;
    .restart local v9    # "wifiIpAddressPref":Landroid/preference/Preference;
    .restart local v11    # "wifiNetmaskPref":Landroid/preference/Preference;
    :cond_8
    move-object v12, v2

    .line 695
    goto :goto_2

    :cond_9
    move-object v12, v5

    .line 699
    goto :goto_3

    .line 703
    .end local v1    # "dhcpInfo":Landroid/net/DhcpInfo;
    :cond_a
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 704
    .local v6, "screen":Landroid/preference/PreferenceScreen;
    if-eqz v6, :cond_5

    .line 705
    if-eqz v7, :cond_b

    .line 706
    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 708
    :cond_b
    if-eqz v11, :cond_5

    .line 709
    invoke-virtual {v6, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method private setApConnectedNotify(Z)V
    .locals 3
    .param p1, "needNotify"    # Z

    .prologue
    .line 633
    if-eqz p1, :cond_0

    .line 634
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notify_user_when_connect_cmcc"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 640
    :goto_0
    return-void

    .line 637
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notify_user_when_connect_cmcc"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setAutoConnectTypeEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 435
    if-eqz p1, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_auto_connect_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 442
    :goto_0
    return-void

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_auto_connect_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setCellToWlanType(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 644
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cellular_to_wlan_type"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_0
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0bc2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setCellularToWlanHintEnable(Z)V
    .locals 3
    .param p1, "needNotify"    # Z

    .prologue
    .line 623
    if-eqz p1, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cellular_to_wlan_hint"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 630
    :goto_0
    return-void

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cellular_to_wlan_hint"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setWlanToCellularHintEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 415
    if-eqz p1, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wlan_to_cellular_hint"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 422
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wlan_to_cellular_hint"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private updateAutoConnectPref(Z)V
    .locals 1
    .param p1, "isAutoMode"    # Z

    .prologue
    .line 663
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->setAutoConnectTypeEnabled(Z)V

    .line 664
    iget-object v0, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 665
    return-void
.end method

.method private updateCellToWlanSummary(Landroid/preference/Preference;I)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "index"    # I

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "summaries":[Ljava/lang/String;
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 493
    return-void
.end method

.method private updateCellularToWifiPrefs(Z)V
    .locals 3
    .param p1, "isAutoEnabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 653
    if-nez p1, :cond_0

    .line 654
    invoke-direct {p0, v0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->updateCellularToWlanHintPref(Z)V

    .line 656
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 657
    .local v0, "value":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cellular_to_wlan_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 658
    iget-object v1, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 659
    iget-object v1, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->updateCellToWlanSummary(Landroid/preference/Preference;I)V

    .line 660
    return-void
.end method

.method private updateCellularToWlanHintPref(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 619
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->setCellularToWlanHintEnable(Z)V

    .line 620
    return-void
.end method

.method private updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    .locals 3
    .param p1, "frequencyBandPref"    # Landroid/preference/Preference;
    .param p2, "index"    # I

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "summaries":[Ljava/lang/String;
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 498
    return-void
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .param p1, "sleepPolicyPref"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 466
    if-eqz p2, :cond_2

    .line 467
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f0a0021

    .line 470
    .local v2, "summaryArrayResId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "summaries":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 472
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 473
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 474
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 488
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :goto_2
    return-void

    .line 468
    .restart local v3    # "values":[Ljava/lang/String;
    :cond_0
    const v2, 0x7f0a001f

    goto :goto_0

    .line 471
    .restart local v0    # "i":I
    .restart local v1    # "summaries":[Ljava/lang/String;
    .restart local v2    # "summaryArrayResId":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 481
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :cond_2
    const-string v4, "wapi_cert_install"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWapiCertInstall:Landroid/preference/Preference;

    .line 482
    const-string v4, "wapi_cert_uninstall"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWapiCertUninstall:Landroid/preference/Preference;

    .line 486
    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 487
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0x68

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 172
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 173
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 174
    iget-object v0, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v0, "network_score"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    iput-object v0, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 178
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 160
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    .line 162
    const-string v0, "AdvancedWifiSettings"

    const-string v1, "Oncreate findpref."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v0, "wapi_cert_install"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWapiCertInstall:Landroid/preference/Preference;

    .line 164
    const-string v0, "wapi_cert_uninstall"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWapiCertUninstall:Landroid/preference/Preference;

    .line 167
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "dialogId"    # I

    .prologue
    .line 197
    packed-switch p1, :pswitch_data_0

    .line 210
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 199
    :pswitch_0
    new-instance v0, Lcom/android/exsettings/wifi/WapiCertMgmtDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/wifi/WapiCertMgmtDialog;-><init>(Landroid/content/Context;)V

    .line 200
    .local v0, "wapiDialog":Lcom/android/exsettings/wifi/WapiCertMgmtDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/WapiCertMgmtDialog;->setMode(I)V

    .line 201
    const v1, 0x7f0c02eb

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/WapiCertMgmtDialog;->setTitle(I)V

    goto :goto_0

    .line 205
    .end local v0    # "wapiDialog":Lcom/android/exsettings/wifi/WapiCertMgmtDialog;
    :pswitch_1
    new-instance v0, Lcom/android/exsettings/wifi/WapiCertMgmtDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/wifi/WapiCertMgmtDialog;-><init>(Landroid/content/Context;)V

    .line 206
    .restart local v0    # "wapiDialog":Lcom/android/exsettings/wifi/WapiCertMgmtDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/WapiCertMgmtDialog;->setMode(I)V

    .line 207
    const v1, 0x7f0c02ef

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/WapiCertMgmtDialog;->setTitle(I)V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 220
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 520
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 521
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 523
    .local v5, "key":Ljava/lang/String;
    const-string v9, "frequency_band"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 525
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 526
    .local v7, "value":I
    iget-object v9, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v12, 0x1

    invoke-virtual {v9, v7, v12}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    .line 527
    invoke-direct {p0, p1, v7}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    .end local v7    # "value":I
    :cond_0
    const-string v9, "sleep_policy"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 563
    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 564
    .local v6, "stringValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "wifi_sleep_policy"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v9, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 566
    invoke-direct {p0, p1, v6}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 574
    .end local v6    # "stringValue":Ljava/lang/String;
    :cond_1
    const-string v9, "wlan_to_cellular_hint"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object/from16 v9, p2

    .line 575
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 576
    .local v1, "checked":Z
    invoke-direct {p0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->setWlanToCellularHintEnable(Z)V

    .line 579
    .end local v1    # "checked":Z
    :cond_2
    const-string v9, "auto_connect_type"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object/from16 v9, p2

    .line 580
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 581
    .restart local v1    # "checked":Z
    invoke-direct {p0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->setAutoConnectTypeEnabled(Z)V

    .line 582
    invoke-direct {p0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->updateCellularToWifiPrefs(Z)V

    .line 583
    if-nez v1, :cond_3

    .line 584
    invoke-direct {p0, v10}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->updateCellularToWlanHintPref(Z)V

    .line 588
    .end local v1    # "checked":Z
    :cond_3
    const-string v9, "cellular_to_wlan"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object/from16 v9, p2

    .line 589
    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 590
    .restart local v7    # "value":I
    invoke-direct {p0, v7}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->setCellToWlanType(I)V

    .line 591
    iget-object v9, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/preference/ListPreference;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 592
    iget-object v9, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/preference/ListPreference;

    invoke-direct {p0, v9, v7}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->updateCellToWlanSummary(Landroid/preference/Preference;I)V

    .line 593
    if-nez v7, :cond_a

    move v9, v10

    :goto_0
    invoke-direct {p0, v9}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->updateAutoConnectPref(Z)V

    .line 594
    if-eqz v7, :cond_4

    .line 595
    invoke-direct {p0, v10}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->updateCellularToWlanHintPref(Z)V

    .line 599
    .end local v7    # "value":I
    :cond_4
    const-string v9, "notify_ap_connected"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object/from16 v9, p2

    .line 600
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 601
    .restart local v1    # "checked":Z
    invoke-direct {p0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->setApConnectedNotify(Z)V

    .line 604
    .end local v1    # "checked":Z
    :cond_5
    const-string v9, "cellular_to_wlan_hint"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 605
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 606
    .restart local v1    # "checked":Z
    invoke-direct {p0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->setCellularToWlanHintEnable(Z)V

    .line 607
    if-nez v1, :cond_6

    .line 608
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0bbe

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .end local v1    # "checked":Z
    :cond_6
    move v11, v10

    .line 614
    :goto_1
    return v11

    .line 528
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 529
    .local v3, "e":Ljava/lang/NumberFormatException;
    const v9, 0x7f0c0305

    invoke-static {v2, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 533
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const-string v9, "wifi_assistant"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 534
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-static {v2, v0}, Landroid/net/NetworkScorerAppManager;->getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v8

    .line 536
    .local v8, "wifiAssistant":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-nez v8, :cond_8

    .line 537
    iget-object v9, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/net/NetworkScoreManager;->setActiveScorer(Ljava/lang/String;)Z

    move v11, v10

    .line 538
    goto :goto_1

    .line 541
    :cond_8
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 542
    .local v4, "intent":Landroid/content/Intent;
    iget-object v9, v8, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 546
    iget-object v9, v8, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    iget-object v10, v8, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 550
    :cond_9
    const-string v9, "android.net.scoring.CHANGE_ACTIVE"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const-string v9, "packageName"

    iget-object v10, v8, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 567
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v8    # "wifiAssistant":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 568
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const v9, 0x7f0c0290

    invoke-static {v2, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "value":I
    :cond_a
    move v9, v11

    .line 593
    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 756
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "key":Ljava/lang/String;
    const-string v1, "AdvancedWifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceClick key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    if-nez v0, :cond_1

    .line 766
    :cond_0
    :goto_0
    return v4

    .line 759
    :cond_1
    const-string v1, "wapi_cert_install"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 760
    const-string v1, "AdvancedWifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceClick key 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->showDialog(I)V

    goto :goto_0

    .line 762
    :cond_2
    const-string v1, "wapi_cert_uninstall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    const-string v1, "AdvancedWifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceClick key 2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 502
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "key":Ljava/lang/String;
    const-string v3, "notify_open_networks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 505
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/SwitchPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 515
    :goto_0
    return v2

    .line 508
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    const-string v3, "enable_hs2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 509
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_hotspot2_enabled"

    check-cast p2, Landroid/preference/SwitchPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 513
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 182
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 183
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 185
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->initWapiCertInstallPreference()V

    .line 186
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->initWapiCertUninstallPreference()V

    .line 189
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 191
    return-void
.end method
