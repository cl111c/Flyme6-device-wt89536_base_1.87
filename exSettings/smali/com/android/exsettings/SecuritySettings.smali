.class public Lcom/android/exsettings/SecuritySettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/SecuritySettings$SecuritySearchIndexProvider;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/exsettings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoPref:Landroid/preference/Preference;

.field private mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mShowPassword:Landroid/preference/SwitchPreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mToggleAppInstallation:Landroid/preference/SwitchPreference;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mVisiblePattern:Landroid/preference/SwitchPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/exsettings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 122
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lock_after_timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "visiblepattern"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "power_button_instantly_locks"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "show_password"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "toggle_install_applications"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exsettings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 129
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    .line 761
    new-instance v0, Lcom/android/exsettings/SecuritySettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/exsettings/SecuritySettings$SecuritySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/exsettings/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 764
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    return v0
.end method

.method static synthetic access$100(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/PackageManager;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "x2"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    .line 83
    invoke-static {p0, p1, p2}, Lcom/android/exsettings/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private addTrustAgentSettings(Landroid/preference/PreferenceGroup;)V
    .locals 10
    .param p1, "securityCategory"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v9, 0x0

    .line 400
    iget-object v6, p0, Lcom/android/exsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 401
    .local v2, "hasSecurity":Z
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/exsettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v6, v7, v8}, Lcom/android/exsettings/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    .line 403
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 404
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 405
    .local v0, "agent":Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 407
    .local v5, "trustAgentPreference":Landroid/preference/Preference;
    const-string v6, "trust_agent"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 408
    iget-object v6, v0, Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v6, v0, Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 411
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 412
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, v0, Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 413
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 416
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 418
    iget-boolean v6, v0, Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;->disabledByAdministrator:Z

    if-eqz v6, :cond_1

    .line 419
    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 420
    const v6, 0x7f0c0ae1

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 403
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 421
    :cond_1
    if-nez v2, :cond_0

    .line 422
    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 423
    const v6, 0x7f0c0209

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 426
    .end local v0    # "agent":Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "trustAgentPreference":Landroid/preference/Preference;
    :cond_2
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 24

    .prologue
    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 213
    .local v13, "root":Landroid/preference/PreferenceScreen;
    if-eqz v13, :cond_0

    .line 214
    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 216
    :cond_0
    const v19, 0x7f080043

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 227
    sget v19, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    if-nez v19, :cond_d

    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/SecuritySettings;->mIsPrimary:Z

    .line 229
    const-string v19, "owner_info_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/exsettings/SecuritySettings$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exsettings/SecuritySettings$1;-><init>(Lcom/android/exsettings/SecuritySettings;)V

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 240
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 241
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 243
    const v19, 0x7f080045

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 251
    :cond_2
    :goto_1
    const-string v19, "security_category"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceGroup;

    .line 253
    .local v14, "securityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v14, :cond_3

    .line 254
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/SecuritySettings;->maybeAddFingerprintPreference(Landroid/preference/PreferenceGroup;)V

    .line 255
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/SecuritySettings;->addTrustAgentSettings(Landroid/preference/PreferenceGroup;)V

    .line 259
    :cond_3
    const-string v19, "lock_after_timeout"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/ListPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 261
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->setupLockAfterPreference()V

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 266
    :cond_4
    const-string v19, "visiblepattern"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    .line 269
    const-string v19, "power_button_instantly_locks"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    .line 271
    const-string v19, "trust_agent"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 272
    .local v17, "trustAgentPreference":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-lez v19, :cond_5

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0c053a

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 281
    :cond_5
    const v19, 0x7f080048

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 284
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v16

    .line 285
    .local v16, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string v20, "carrier_config"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CarrierConfigManager;

    .line 287
    .local v5, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v5}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 288
    .local v4, "b":Landroid/os/PersistableBundle;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->isSimIccReady()Z

    move-result v19

    if-eqz v19, :cond_6

    const-string v19, "hide_sim_lock_settings_bool"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 290
    :cond_6
    const-string v19, "sim_lock"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 295
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "lock_to_app_enabled"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_7

    .line 297
    const-string v19, "screen_pinning_settings"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c0a94

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 302
    :cond_7
    const-string v19, "show_password"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    .line 303
    const-string v19, "credentials_reset"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string v20, "user"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/UserManager;

    .line 307
    .local v18, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 308
    const-string v19, "no_config_credentials"

    invoke-virtual/range {v18 .. v19}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_11

    .line 309
    const-string v19, "credential_storage_type"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 311
    .local v6, "credentialStorageType":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v19

    if-eqz v19, :cond_10

    const v15, 0x7f0c07bf

    .line 314
    .local v15, "storageSummaryRes":I
    :goto_3
    invoke-virtual {v6, v15}, Landroid/preference/Preference;->setSummary(I)V

    .line 324
    .end local v6    # "credentialStorageType":Landroid/preference/Preference;
    .end local v15    # "storageSummaryRes":I
    :goto_4
    const-string v19, "device_admin_category"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    .line 326
    .local v8, "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    const-string v19, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    sget v19, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual/range {v18 .. v19}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v19

    if-nez v19, :cond_12

    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 332
    const-string v19, "no_install_unknown_sources"

    invoke-virtual/range {v18 .. v19}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_8

    const-string v19, "no_install_apps"

    invoke-virtual/range {v18 .. v19}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 334
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 336
    :cond_9
    invoke-static {}, Lcom/android/exsettings/SecuritySettings;->isStrictOpEnable()Z

    move-result v19

    if-nez v19, :cond_a

    .line 337
    const-string v19, "file_protection"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 338
    .local v9, "fileProtection":Landroid/preference/Preference;
    if-eqz v8, :cond_a

    .line 339
    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 343
    .end local v9    # "fileProtection":Landroid/preference/Preference;
    :cond_a
    const-string v19, "advanced_security"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 345
    .local v3, "advancedCategory":Landroid/preference/PreferenceGroup;
    if-eqz v3, :cond_b

    .line 346
    const-string v19, "manage_trust_agents"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 347
    .local v11, "manageAgents":Landroid/preference/Preference;
    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    sget v20, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v19

    if-nez v19, :cond_b

    .line 348
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 349
    const v19, 0x7f0c0209

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 356
    .end local v11    # "manageAgents":Landroid/preference/Preference;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/exsettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/exsettings/search/Index;

    move-result-object v19

    const-class v20, Lcom/android/exsettings/SecuritySettings;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/exsettings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 359
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6
    sget-object v19, Lcom/android/exsettings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_13

    .line 360
    sget-object v19, Lcom/android/exsettings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v19, v19, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 361
    .local v12, "pref":Landroid/preference/Preference;
    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 359
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 227
    .end local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .end local v4    # "b":Landroid/os/PersistableBundle;
    .end local v5    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .end local v8    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    .end local v10    # "i":I
    .end local v12    # "pref":Landroid/preference/Preference;
    .end local v14    # "securityCategory":Landroid/preference/PreferenceGroup;
    .end local v16    # "tm":Landroid/telephony/TelephonyManager;
    .end local v17    # "trustAgentPreference":Landroid/preference/Preference;
    .end local v18    # "um":Landroid/os/UserManager;
    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 246
    :cond_e
    const v19, 0x7f08004e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 293
    .restart local v4    # "b":Landroid/os/PersistableBundle;
    .restart local v5    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .restart local v14    # "securityCategory":Landroid/preference/PreferenceGroup;
    .restart local v16    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v17    # "trustAgentPreference":Landroid/preference/Preference;
    :cond_f
    const-string v19, "sim_lock"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->isSimReady()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 311
    .restart local v6    # "credentialStorageType":Landroid/preference/Preference;
    .restart local v18    # "um":Landroid/os/UserManager;
    :cond_10
    const v15, 0x7f0c07c0

    goto/16 :goto_3

    .line 316
    .end local v6    # "credentialStorageType":Landroid/preference/Preference;
    :cond_11
    const-string v19, "credentials_management"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    .line 318
    .local v7, "credentialsManager":Landroid/preference/PreferenceGroup;
    const-string v19, "credentials_reset"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 319
    const-string v19, "credentials_install"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 320
    const-string v19, "credential_storage_type"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 331
    .end local v7    # "credentialsManager":Landroid/preference/PreferenceGroup;
    .restart local v8    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 363
    .restart local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .restart local v10    # "i":I
    :cond_13
    return-object v13
.end method

.method private disableUnusableTimeouts(J)V
    .locals 11
    .param p1, "maxTimeout"    # J

    .prologue
    .line 593
    iget-object v8, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 594
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 595
    .local v7, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 598
    aget-object v8, v7, v1

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 599
    .local v4, "timeout":J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 600
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 604
    .end local v4    # "timeout":J
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v0

    if-ne v8, v9, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v7

    if-eq v8, v9, :cond_3

    .line 605
    :cond_2
    iget-object v9, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 607
    iget-object v9, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 609
    iget-object v8, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 610
    .local v6, "userPreference":I
    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    .line 611
    iget-object v8, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 618
    .end local v6    # "userPreference":I
    :cond_3
    iget-object v9, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 619
    return-void

    .line 618
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private static getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 472
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    sget-object v8, Lcom/android/exsettings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v9, 0x80

    invoke-virtual {p0, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 475
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v8, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v8}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v1

    .line 477
    .local v1, "enabledTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p2, v10}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v8

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_1

    move v0, v7

    .line 480
    .local v0, "disableTrustAgents":Z
    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 481
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 482
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 483
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v8, :cond_2

    .line 481
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 477
    .end local v0    # "disableTrustAgents":Z
    .end local v2    # "i":I
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 484
    .restart local v0    # "disableTrustAgents":Z
    .restart local v2    # "i":I
    .restart local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-static {v3, p0}, Lcom/android/exsettings/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 485
    invoke-static {p0, v3}, Lcom/android/exsettings/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v6

    .line 487
    .local v6, "trustAgentComponentInfo":Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;
    iget-object v8, v6, Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_0

    invoke-static {v3}, Lcom/android/exsettings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v6, Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 491
    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/android/exsettings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {p2, v10, v8}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_3

    .line 493
    iput-boolean v7, v6, Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;->disabledByAdministrator:Z

    .line 495
    :cond_3
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    .end local v2    # "i":I
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "trustAgentComponentInfo":Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;
    :cond_4
    return-object v5
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 503
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isPasswordVisible()Z
    .locals 3

    .prologue
    .line 659
    const/4 v0, 0x1

    .line 660
    .local v0, "defaultValue":I
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    const/4 v0, 0x0

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_password"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSimIccReady()Z
    .locals 5

    .prologue
    .line 431
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 432
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/exsettings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 435
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_1

    .line 436
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 437
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 438
    const/4 v4, 0x1

    .line 443
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isSimReady()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 450
    const/4 v1, 0x0

    .line 451
    .local v1, "simState":I
    iget-object v5, p0, Lcom/android/exsettings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 453
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 454
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 455
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 456
    if-eq v1, v4, :cond_0

    if-eqz v1, :cond_0

    .line 462
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static isStrictOpEnable()Z
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x0

    return v0
.end method

.method private maybeAddFingerprintPreference(Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p1, "securityCategory"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 372
    .local v0, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    const-string v1, "SecuritySettings"

    const-string v2, "No fingerprint hardware detected!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 509
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 549
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 551
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 552
    iget-object v8, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 553
    iget-object v8, p0, Lcom/android/exsettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/exsettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 554
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 556
    .local v4, "displayTimeout":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 560
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/exsettings/SecuritySettings;->disableUnusableTimeouts(J)V

    .line 562
    :cond_0
    return-void

    .end local v0    # "adminTimeout":J
    .end local v4    # "displayTimeout":J
    :cond_1
    move-wide v0, v6

    .line 553
    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 14

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 568
    .local v2, "currentTimeout":J
    iget-object v9, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 569
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 570
    .local v8, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 571
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v8

    if-ge v4, v9, :cond_1

    .line 572
    aget-object v9, v8, v4

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 573
    .local v6, "timeout":J
    cmp-long v9, v2, v6

    if-ltz v9, :cond_0

    .line 574
    move v0, v4

    .line 571
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 578
    .end local v6    # "timeout":J
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "trust_agent"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 579
    .local v5, "preference":Landroid/preference/Preference;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 580
    aget-object v9, v8, v0

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 581
    iget-object v9, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f0c0172

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/exsettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 590
    :goto_1
    return-void

    .line 584
    :cond_2
    iget-object v9, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f0c0173

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v1, v0

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/exsettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 588
    :cond_3
    iget-object v9, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f0c0171

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v1, v0

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/exsettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 519
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0492

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0549

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 526
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 755
    const v0, 0x7f0c0995

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 156
    const/16 v0, 0x57

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 705
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 706
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 709
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 530
    iget-object v1, p0, Lcom/android/exsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    .line 531
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 532
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/exsettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 533
    iget-object v1, p0, Lcom/android/exsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/android/exsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 537
    .end local v0    # "turnOn":Z
    :cond_0
    return-void

    .line 531
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 165
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 167
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 169
    new-instance v0, Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/exsettings/ChooseLockSettingsHelper;

    .line 171
    if-eqz p1, :cond_0

    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 175
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 541
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 542
    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 545
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 718
    const/4 v3, 0x1

    .line 719
    .local v3, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/exsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 721
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v5, "lock_after_timeout"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 722
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 724
    .local v4, "timeout":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_lock_after_timeout"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :goto_0
    invoke-direct {p0}, Lcom/android/exsettings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 750
    .end local v4    # "timeout":I
    :cond_0
    :goto_1
    return v3

    .line 726
    .restart local v4    # "timeout":I
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "SecuritySettings"

    const-string v6, "could not persist lockAfter timeout setting"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 730
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "timeout":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v5, "visiblepattern"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 731
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sget v6, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    goto :goto_1

    .line 732
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v5, "power_button_instantly_locks"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 733
    iget-object v5, p0, Lcom/android/exsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    sget v7, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    goto :goto_1

    .line 734
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string v5, "show_password"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, p2

    .line 736
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sget v7, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v2, v5, v7}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 737
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "show_password"

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_2
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 739
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sget v6, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    goto :goto_1

    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    move v5, v6

    .line 737
    goto :goto_2

    .line 740
    :cond_5
    const-string v5, "toggle_install_applications"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 741
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 742
    iget-object v5, p0, Lcom/android/exsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 743
    invoke-direct {p0}, Lcom/android/exsettings/SecuritySettings;->warnAppInstallation()V

    .line 745
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 747
    :cond_6
    invoke-direct {p0, v6}, Lcom/android/exsettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    .line 678
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 679
    .local v8, "key":Ljava/lang/String;
    const-string v0, "unlock_set_or_change"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0c01cc

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 697
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 682
    :cond_1
    const-string v0, "trust_agent"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 683
    new-instance v7, Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0, p0}, Lcom/android/exsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 685
    .local v7, "helper":Lcom/android/exsettings/ChooseLockSettingsHelper;
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 686
    const/16 v0, 0x7e

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/exsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v6

    .line 688
    .local v6, "confirmationLaunched":Z
    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 691
    iput-object v5, p0, Lcom/android/exsettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto :goto_0

    .line 695
    .end local v6    # "confirmationLaunched":Z
    .end local v7    # "helper":Lcom/android/exsettings/ChooseLockSettingsHelper;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 631
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 635
    invoke-direct {p0}, Lcom/android/exsettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 637
    iget-object v1, p0, Lcom/android/exsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/exsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 638
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v1, p0, Lcom/android/exsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/android/exsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    sget v2, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 642
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 643
    iget-object v1, p0, Lcom/android/exsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    sget v2, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 647
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    .line 648
    iget-object v1, p0, Lcom/android/exsettings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/exsettings/SecuritySettings;->isPasswordVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 651
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v1, :cond_3

    .line 652
    iget-object v2, p0, Lcom/android/exsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/exsettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 655
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->updateOwnerInfo()V

    .line 656
    return-void

    .line 652
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 623
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 624
    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 625
    const-string v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/android/exsettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 627
    :cond_0
    return-void
.end method

.method public updateOwnerInfo()V
    .locals 3

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 670
    iget-object v1, p0, Lcom/android/exsettings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 674
    :cond_0
    return-void

    .line 670
    :cond_1
    const v0, 0x7f0c0178

    invoke-virtual {p0, v0}, Lcom/android/exsettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
