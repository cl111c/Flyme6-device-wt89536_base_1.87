.class public Lcom/android/exsettings/WirelessSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/exsettings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/exsettings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/SwitchPreference;

.field private mButton4glte:Landroid/preference/SwitchPreference;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mLteEnabled:Z

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mNsdEnabler:Lcom/android/exsettings/NsdEnabler;

.field private mPlugin:Ljava/lang/Object;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mUm:Landroid/os/UserManager;

.field private mVoLtePreference:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 645
    new-instance v0, Lcom/android/exsettings/WirelessSettings$2;

    invoke-direct {v0}, Lcom/android/exsettings/WirelessSettings$2;-><init>()V

    sput-object v0, Lcom/android/exsettings/WirelessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/WirelessSettings;->mLteEnabled:Z

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/WirelessSettings;->mPlugin:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/WirelessSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/WirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/exsettings/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/exsettings/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/WirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 815
    invoke-static {p0}, Lcom/android/exsettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 821
    :cond_0
    :goto_0
    return v1

    .line 819
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 821
    .local v0, "toggleable":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 309
    const-string v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 615
    const v0, 0x7f0c098a

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 314
    const/16 v0, 0x6e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 604
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 605
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 607
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/exsettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/exsettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/exsettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/exsettings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 610
    .end local v0    # "isChoiceYes":Ljava/lang/Boolean;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 611
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 326
    invoke-super/range {p0 .. p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 327
    if-eqz p1, :cond_0

    .line 328
    const-string v17, "mManageMobilePlanMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 330
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onCreate: mManageMobilePlanMessage="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/exsettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 332
    const-string v17, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 333
    const-string v17, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 335
    const-string v17, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/UserManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/WirelessSettings;->mUm:Landroid/os/UserManager;

    .line 337
    const v17, 0x7f080070

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 339
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 340
    .local v11, "myUserId":I
    if-eqz v11, :cond_f

    const/4 v7, 0x1

    .line 344
    .local v7, "isSecondaryUser":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 345
    .local v2, "activity":Landroid/app/Activity;
    const-string v17, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    .line 350
    const-string v17, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/SwitchPreference;

    .line 352
    .local v12, "nsd":Landroid/preference/SwitchPreference;
    new-instance v17, Lcom/android/exsettings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/android/exsettings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/exsettings/AirplaneModeEnabler;

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 374
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "airplane_mode_toggleable_radios"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 378
    .local v16, "toggleable":Ljava/lang/String;
    if-nez v7, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1120069

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-eqz v17, :cond_10

    const/4 v8, 0x1

    .line 380
    .local v8, "isWimaxEnabled":Z
    :goto_1
    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v17, v0

    const-string v18, "no_config_mobile_networks"

    invoke-virtual/range {v17 .. v18}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 382
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 383
    .local v15, "root":Landroid/preference/PreferenceScreen;
    const-string v17, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 384
    .local v14, "ps":Landroid/preference/Preference;
    if-eqz v14, :cond_2

    invoke-virtual {v15, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 394
    .end local v14    # "ps":Landroid/preference/Preference;
    .end local v15    # "root":Landroid/preference/PreferenceScreen;
    :cond_2
    :goto_2
    if-eqz v16, :cond_3

    const-string v17, "wifi"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 395
    :cond_3
    const-string v17, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    const-string v18, "toggle_airplane"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 400
    :cond_4
    if-nez v7, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v17, v0

    const-string v18, "no_config_vpn"

    invoke-virtual/range {v17 .. v18}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 401
    :cond_5
    const-string v17, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 405
    :cond_6
    if-eqz v16, :cond_7

    const-string v17, "bluetooth"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 427
    :cond_7
    if-nez v7, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/exsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v17, v0

    const-string v18, "no_config_mobile_networks"

    invoke-virtual/range {v17 .. v18}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 429
    :cond_8
    const-string v17, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 430
    const-string v17, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 434
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f100009

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 436
    .local v6, "isMobilePlanEnabled":Z
    if-nez v6, :cond_a

    .line 437
    const-string v17, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 438
    .local v13, "pref":Landroid/preference/Preference;
    if-eqz v13, :cond_a

    .line 439
    const-string v17, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 451
    .end local v13    # "pref":Landroid/preference/Preference;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    const-string v18, "android.hardware.type.television"

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 452
    const-string v17, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 456
    :cond_b
    const-string v17, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 457
    .local v10, "mGlobalProxy":Landroid/preference/Preference;
    const-string v17, "device_policy"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .line 460
    .local v9, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 461
    invoke-virtual {v9}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v17

    if-nez v17, :cond_13

    const/16 v17, 0x1

    :goto_3
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 464
    const-string v17, "connectivity"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 481
    .local v3, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1120072

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 484
    .local v5, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v5, :cond_c

    .line 485
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    const-string v18, "com.android.cellbroadcastreceiver"

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 487
    const/4 v5, 0x0

    .line 493
    :cond_c
    :goto_4
    if-nez v7, :cond_d

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v17, v0

    const-string v18, "no_config_cell_broadcasts"

    invoke-virtual/range {v17 .. v18}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 495
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 496
    .restart local v15    # "root":Landroid/preference/PreferenceScreen;
    const-string v17, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 497
    .restart local v14    # "ps":Landroid/preference/Preference;
    if-eqz v14, :cond_e

    invoke-virtual {v15, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 500
    .end local v14    # "ps":Landroid/preference/Preference;
    .end local v15    # "root":Landroid/preference/PreferenceScreen;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f10003b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/WirelessSettings;->mLteEnabled:Z

    .line 501
    const-string v17, "voice_over_lte"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/WirelessSettings;->mVoLtePreference:Landroid/preference/SwitchPreference;

    .line 502
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/WirelessSettings;->mLteEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mVoLtePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 517
    :goto_5
    const-string v17, "enhanced_4g_lte"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/WirelessSettings;->mButton4glte:Landroid/preference/SwitchPreference;

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mButton4glte:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mButton4glte:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 527
    return-void

    .line 340
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    .end local v5    # "isCellBroadcastAppLinkEnabled":Z
    .end local v6    # "isMobilePlanEnabled":Z
    .end local v7    # "isSecondaryUser":Z
    .end local v8    # "isWimaxEnabled":Z
    .end local v9    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "mGlobalProxy":Landroid/preference/Preference;
    .end local v12    # "nsd":Landroid/preference/SwitchPreference;
    .end local v16    # "toggleable":Ljava/lang/String;
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 378
    .restart local v2    # "activity":Landroid/app/Activity;
    .restart local v7    # "isSecondaryUser":Z
    .restart local v12    # "nsd":Landroid/preference/SwitchPreference;
    .restart local v16    # "toggleable":Ljava/lang/String;
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 386
    .restart local v8    # "isWimaxEnabled":Z
    :cond_11
    if-eqz v16, :cond_12

    const-string v17, "wimax"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    if-eqz v8, :cond_2

    .line 388
    :cond_12
    const-string v17, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 389
    .restart local v14    # "ps":Landroid/preference/Preference;
    const-string v17, "toggle_airplane"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 461
    .end local v14    # "ps":Landroid/preference/Preference;
    .restart local v6    # "isMobilePlanEnabled":Z
    .restart local v9    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v10    # "mGlobalProxy":Landroid/preference/Preference;
    :cond_13
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 490
    .restart local v3    # "cm":Landroid/net/ConnectivityManager;
    .restart local v5    # "isCellBroadcastAppLinkEnabled":Z
    :catch_0
    move-exception v4

    .line 491
    .local v4, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 506
    .end local v4    # "ignored":Ljava/lang/IllegalArgumentException;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mVoLtePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 290
    packed-switch p1, :pswitch_data_0

    .line 305
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 292
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/exsettings/WirelessSettings$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/WirelessSettings$1;-><init>(Lcom/android/exsettings/WirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onManageMobilePlanClick()V
    .locals 12

    .prologue
    const v9, 0x7f0c04d7

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 183
    const-string v8, "onManageMobilePlanClick:"

    invoke-direct {p0, v8}, Lcom/android/exsettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 184
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Lcom/android/exsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 187
    .local v6, "resources":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 188
    .local v3, "ni":Landroid/net/NetworkInfo;
    iget-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v3, :cond_6

    .line 190
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_CARRIER_SETUP"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v5, "provisioningIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v5}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 193
    .local v0, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 194
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v11, :cond_0

    .line 195
    const-string v8, "WirelessSettings"

    const-string v9, "Multiple matching carrier apps found, launching the first."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v5}, Lcom/android/exsettings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 245
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 203
    .restart local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "provisioningIntent":Landroid/content/Intent;
    :cond_2
    iget-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 205
    const-string v8, "android.intent.action.MAIN"

    const-string v9, "android.intent.category.APP_BROWSER"

    invoke-static {v8, v9}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 207
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 208
    const/high16 v8, 0x10400000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 211
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/exsettings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    .end local v7    # "url":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 242
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onManageMobilePlanClick: message="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/exsettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0, v11}, Lcom/android/exsettings/WirelessSettings;->showDialog(I)V

    goto :goto_0

    .line 212
    .restart local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v5    # "provisioningIntent":Landroid/content/Intent;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v8, "WirelessSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onManageMobilePlanClick: startActivity failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 217
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "operatorName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 221
    iget-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 223
    const v8, 0x7f0c04d6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_1

    .line 226
    :cond_4
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {v6, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_1

    .line 230
    :cond_5
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {v6, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_1

    .line 234
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "operatorName":Ljava/lang/String;
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    .end local v7    # "url":Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-nez v8, :cond_7

    .line 236
    const v8, 0x7f0c04d8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_1

    .line 239
    :cond_7
    const v8, 0x7f0c04d9

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 584
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 586
    iget-object v0, p0, Lcom/android/exsettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/exsettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/AirplaneModeEnabler;->pause()V

    .line 592
    iget-object v0, p0, Lcom/android/exsettings/WirelessSettings;->mNsdEnabler:Lcom/android/exsettings/NsdEnabler;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/exsettings/WirelessSettings;->mNsdEnabler:Lcom/android/exsettings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/NsdEnabler;->pause()V

    .line 600
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 621
    invoke-virtual {p0}, Lcom/android/exsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 632
    .local v0, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/android/exsettings/WirelessSettings;->mButton4glte:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_0

    move-object v2, p1

    .line 633
    check-cast v2, Landroid/preference/SwitchPreference;

    .line 634
    .local v2, "enhanced4gModePref":Landroid/preference/SwitchPreference;
    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x1

    .line 635
    .local v1, "enhanced4gMode":Z
    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 636
    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-static {v0, v4}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V

    .line 639
    .end local v1    # "enhanced4gMode":Z
    .end local v2    # "enhanced4gModePref":Landroid/preference/SwitchPreference;
    :cond_0
    return v3

    .restart local v2    # "enhanced4gModePref":Landroid/preference/SwitchPreference;
    :cond_1
    move v1, v3

    .line 634
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick: preference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/exsettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/android/exsettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 178
    :goto_0
    return v0

    .line 172
    :cond_0
    const-string v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/android/exsettings/WirelessSettings;->onManageMobilePlanClick()V

    .line 178
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0

    .line 174
    :cond_2
    iget-boolean v0, p0, Lcom/android/exsettings/WirelessSettings;->mLteEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/exsettings/WirelessSettings;->mVoLtePreference:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/android/exsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/WirelessSettings;->mVoLtePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 531
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 533
    iget-object v2, p0, Lcom/android/exsettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/exsettings/AirplaneModeEnabler;

    invoke-virtual {v2}, Lcom/android/exsettings/AirplaneModeEnabler;->resume()V

    .line 539
    iget-object v2, p0, Lcom/android/exsettings/WirelessSettings;->mNsdEnabler:Lcom/android/exsettings/NsdEnabler;

    if-eqz v2, :cond_0

    .line 540
    iget-object v2, p0, Lcom/android/exsettings/WirelessSettings;->mNsdEnabler:Lcom/android/exsettings/NsdEnabler;

    invoke-virtual {v2}, Lcom/android/exsettings/NsdEnabler;->resume()V

    .line 543
    :cond_0
    const/4 v0, 0x0

    .line 544
    .local v0, "hasIccCard":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 545
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    .line 546
    if-eqz v0, :cond_3

    .line 550
    :cond_1
    if-nez v0, :cond_2

    .line 551
    const-string v2, "enhanced_4g_lte"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 571
    :cond_2
    return-void

    .line 544
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 575
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 577
    iget-object v0, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    const-string v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_0
    return-void
.end method
