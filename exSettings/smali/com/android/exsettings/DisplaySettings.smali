.class public Lcom/android/exsettings/DisplaySettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/exsettings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAccelerometer:Landroid/preference/SwitchPreference;

.field private mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

.field private mCameraGesturePreference:Landroid/preference/SwitchPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDozePreference:Landroid/preference/SwitchPreference;

.field private mFontSizePref:Lcom/android/exsettings/WarnedListPreference;

.field private mLiftToWakePreference:Landroid/preference/SwitchPreference;

.field private mLightPreference:Landroid/preference/SwitchPreference;

.field private mNightModePreference:Landroid/preference/ListPreference;

.field private mNotificationPulse:Landroid/preference/TwoStatePreference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenSaverPreference:Landroid/preference/Preference;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mTapToWakePreference:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 849
    new-instance v0, Lcom/android/exsettings/DisplaySettings$6;

    invoke-direct {v0}, Lcom/android/exsettings/DisplaySettings$6;-><init>()V

    sput-object v0, Lcom/android/exsettings/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 139
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 176
    new-instance v0, Lcom/android/exsettings/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DisplaySettings$1;-><init>(Lcom/android/exsettings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/exsettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 185
    new-instance v0, Lcom/android/exsettings/DisplaySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/DisplaySettings$2;-><init>(Lcom/android/exsettings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/exsettings/DisplaySettings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/DisplaySettings;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/exsettings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/exsettings/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/DisplaySettings;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/exsettings/DisplaySettings;->onBrightnessModeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/exsettings/DisplaySettings;)Lcom/android/exsettings/WarnedListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DisplaySettings;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/exsettings/DisplaySettings;->mFontSizePref:Lcom/android/exsettings/WarnedListPreference;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/exsettings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/exsettings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/exsettings/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/exsettings/DisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/exsettings/DisplaySettings;->isCameraGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/exsettings/DisplaySettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 14
    .param p1, "screenTimeoutPreference"    # Landroid/preference/ListPreference;

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 537
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 538
    .local v4, "maxTimeout":J
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-nez v11, :cond_1

    .line 572
    :goto_1
    return-void

    .line 537
    .end local v4    # "maxTimeout":J
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 541
    .restart local v4    # "maxTimeout":J
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 542
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 543
    .local v10, "values":[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v3, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v6, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 546
    aget-object v11, v10, v2

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 547
    .local v8, "timeout":J
    cmp-long v11, v8, v4

    if-gtz v11, :cond_2

    .line 548
    aget-object v11, v1, v2

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 552
    .end local v8    # "timeout":J
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_5

    .line 553
    :cond_4
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 554
    .local v7, "userPreference":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 556
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 558
    int-to-long v12, v7

    cmp-long v11, v12, v4

    if-gtz v11, :cond_6

    .line 559
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 571
    .end local v7    # "userPreference":I
    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1

    .line 560
    .restart local v7    # "userPreference":I
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v11, v12, v4

    if-nez v11, :cond_5

    .line 564
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 571
    .end local v7    # "userPreference":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 903
    move v0, p1

    .line 905
    .local v0, "brightnessMode":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 909
    :goto_0
    return v0

    .line 907
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initLight()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 440
    const-string v1, "light_effect_settings"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/exsettings/DisplaySettings;->mLightPreference:Landroid/preference/SwitchPreference;

    .line 441
    iget-object v1, p0, Lcom/android/exsettings/DisplaySettings;->mLightPreference:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_0

    .line 442
    const-string v1, "DisplaySettings"

    const-string v2, "Preference not found: light_effect_settings"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_0
    return-void

    .line 446
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettings/DisplaySettings;->mLightPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "notification_light_setting"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_2
    iget-object v1, p0, Lcom/android/exsettings/DisplaySettings;->mLightPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 446
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "DisplaySettings"

    const-string v2, "notification_light_setting not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private initPulse()V
    .locals 2

    .prologue
    .line 376
    const-string v0, "notification_pulse"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/exsettings/DisplaySettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    .line 377
    iget-object v0, p0, Lcom/android/exsettings/DisplaySettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 378
    const-string v0, "DisplaySettings"

    const-string v1, "Preference not found: notification_pulse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/DisplaySettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 385
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/DisplaySettings;->updatePulse()V

    .line 386
    iget-object v0, p0, Lcom/android/exsettings/DisplaySettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/exsettings/DisplaySettings$4;

    invoke-direct {v1, p0}, Lcom/android/exsettings/DisplaySettings$4;-><init>(Lcom/android/exsettings/DisplaySettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private static isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 480
    const v0, 0x1120026

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 491
    const v0, 0x11200b0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isCameraGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 484
    const v3, 0x10e00a2

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move v0, v1

    .line 486
    .local v0, "configSet":Z
    :goto_0
    if-eqz v0, :cond_1

    const-string v3, "gesture.disable_camera_launch"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    return v1

    .end local v0    # "configSet":Z
    :cond_0
    move v0, v2

    .line 484
    goto :goto_0

    .restart local v0    # "configSet":Z
    :cond_1
    move v1, v2

    .line 486
    goto :goto_1
.end method

.method private static isDozeAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 467
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string v1, "debug.doze.component"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 472
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 467
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 472
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isLiftToWakeAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 462
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 463
    .local v0, "sensors":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isTapToWakeAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 476
    const v0, 0x11200a1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private onBrightnessModeChanged()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 715
    invoke-direct {p0, v1}, Lcom/android/exsettings/DisplaySettings;->getBrightnessMode(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 717
    .local v0, "checked":Z
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 718
    return-void

    .end local v0    # "checked":Z
    :cond_0
    move v0, v1

    .line 715
    goto :goto_0
.end method

.method private updateAccelerometerRotationCheckbox()V
    .locals 2

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 702
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updatePulse()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 399
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v2, :cond_0

    .line 408
    :goto_0
    return-void

    .line 403
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_light_pulse"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "DisplaySettings"

    const-string v2, "notification_light_pulse not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 403
    .end local v0    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/exsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/exsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 696
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 641
    invoke-direct {p0}, Lcom/android/exsettings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    .line 642
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings;->mFontSizePref:Lcom/android/exsettings/WarnedListPreference;

    invoke-virtual {p0, v2}, Lcom/android/exsettings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 643
    invoke-direct {p0}, Lcom/android/exsettings/DisplaySettings;->updateScreenSaverSummary()V

    .line 646
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 649
    .local v0, "brightnessMode":I
    iget-object v5, p0, Lcom/android/exsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_6

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 660
    .end local v0    # "brightnessMode":I
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 661
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wake_gesture_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 662
    .local v1, "value":I
    iget-object v5, p0, Lcom/android/exsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_7

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 666
    .end local v1    # "value":I
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 667
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "doze_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 668
    .restart local v1    # "value":I
    iget-object v5, p0, Lcom/android/exsettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_8

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 672
    .end local v1    # "value":I
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_3

    .line 673
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "double_tap_to_wake"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 674
    .restart local v1    # "value":I
    iget-object v5, p0, Lcom/android/exsettings/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_9

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 678
    .end local v1    # "value":I
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    .line 679
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "camera_gesture_disabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 680
    .restart local v1    # "value":I
    iget-object v5, p0, Lcom/android/exsettings/DisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_a

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 684
    .end local v1    # "value":I
    :cond_4
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_5

    .line 685
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "camera_double_tap_power_gesture_disabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 687
    .restart local v1    # "value":I
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_b

    :goto_5
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 689
    .end local v1    # "value":I
    :cond_5
    return-void

    .restart local v0    # "brightnessMode":I
    :cond_6
    move v2, v4

    .line 649
    goto :goto_0

    .end local v0    # "brightnessMode":I
    .restart local v1    # "value":I
    :cond_7
    move v2, v4

    .line 662
    goto :goto_1

    :cond_8
    move v2, v4

    .line 668
    goto :goto_2

    :cond_9
    move v2, v4

    .line 674
    goto :goto_3

    :cond_a
    move v2, v4

    .line 680
    goto :goto_4

    :cond_b
    move v3, v4

    .line 687
    goto :goto_5
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .param p1, "currentTimeout"    # J

    .prologue
    .line 496
    iget-object v3, p0, Lcom/android/exsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 498
    .local v3, "preference":Landroid/preference/ListPreference;
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    .line 500
    const-string v4, ""

    .line 530
    .local v4, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 531
    return-void

    .line 502
    .end local v4    # "summary":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 503
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 504
    .local v5, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    array-length v8, v1

    if-nez v8, :cond_2

    .line 505
    :cond_1
    const-string v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 507
    .end local v4    # "summary":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 508
    .local v0, "best":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v5

    if-ge v2, v8, :cond_4

    .line 509
    aget-object v8, v5, v2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 510
    .local v6, "timeout":J
    cmp-long v8, p1, v6

    if-ltz v8, :cond_3

    .line 511
    move v0, v2

    .line 508
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 515
    .end local v6    # "timeout":J
    :cond_4
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    if-ne v0, v8, :cond_5

    .line 516
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c0d0f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 518
    .end local v4    # "summary":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c0398

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v1, v0

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .param p1, "val"    # F

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, "indices":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 577
    .local v2, "lastVal":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 578
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 579
    .local v3, "thisVal":F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 580
    add-int/lit8 v4, v0, -0x1

    .line 584
    .end local v3    # "thisVal":F
    :goto_1
    return v4

    .line 582
    .restart local v3    # "thisVal":F
    :cond_0
    move v2, v3

    .line 577
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
    .end local v3    # "thisVal":F
    :cond_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 846
    const v0, 0x7f0c097d

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 172
    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 198
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 200
    .local v5, "resolver":Landroid/content/ContentResolver;
    const v7, 0x7f080022

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 202
    const-string v7, "screensaver"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    .line 203
    iget-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x112006a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 210
    :cond_0
    const-string v7, "accelerometer"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    .line 211
    iget-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 217
    const-string v7, "screen_timeout"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 218
    const-string v7, "screen_off_timeout"

    const-wide/16 v8, 0x7530

    invoke-static {v5, v7, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 220
    .local v2, "currentTimeout":J
    iget-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 221
    iget-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 222
    iget-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v7}, Lcom/android/exsettings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 223
    invoke-direct {p0, v2, v3}, Lcom/android/exsettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 225
    const-string v7, "font_size"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/exsettings/WarnedListPreference;

    iput-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mFontSizePref:Lcom/android/exsettings/WarnedListPreference;

    .line 226
    iget-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mFontSizePref:Lcom/android/exsettings/WarnedListPreference;

    invoke-virtual {v7, p0}, Lcom/android/exsettings/WarnedListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 227
    iget-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mFontSizePref:Lcom/android/exsettings/WarnedListPreference;

    invoke-virtual {v7, p0}, Lcom/android/exsettings/WarnedListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exsettings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 230
    const-string v7, "auto_brightness"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    .line 231
    iget-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 236
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x11200b8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 249
    .local v4, "enableOperatorName":Z
    invoke-static {v0}, Lcom/android/exsettings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 250
    const-string v7, "lift_to_wake"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    .line 251
    iget-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 260
    :goto_1
    const-string v7, "doze"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exsettings/DisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 264
    const-string v7, "tap_to_wake"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    .line 265
    iget-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 270
    :goto_2
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exsettings/DisplaySettings;->isCameraGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 271
    const-string v7, "camera_gesture"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    .line 272
    iget-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 277
    :goto_3
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exsettings/DisplaySettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 278
    const-string v7, "camera_double_tap_power_gesture"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    .line 280
    iget-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 320
    :goto_4
    const-string v7, "auto_rotate"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 323
    const-string v7, "night_mode"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    .line 324
    iget-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    if-eqz v7, :cond_1

    .line 325
    const-string v7, "uimode"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/UiModeManager;

    .line 327
    .local v6, "uiManager":Landroid/app/UiModeManager;
    invoke-virtual {v6}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v1

    .line 328
    .local v1, "currentNightMode":I
    iget-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 329
    iget-object v7, p0, Lcom/android/exsettings/DisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 342
    .end local v1    # "currentNightMode":I
    .end local v6    # "uiManager":Landroid/app/UiModeManager;
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/DisplaySettings;->initPulse()V

    .line 351
    invoke-direct {p0}, Lcom/android/exsettings/DisplaySettings;->initLight()V

    .line 355
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "screen_brightness_mode"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/exsettings/DisplaySettings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 360
    return-void

    .line 233
    .end local v4    # "enableOperatorName":Z
    :cond_2
    const-string v7, "auto_brightness"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 253
    .restart local v4    # "enableOperatorName":Z
    :cond_3
    const-string v7, "lift_to_wake"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 267
    :cond_4
    const-string v7, "tap_to_wake"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 274
    :cond_5
    const-string v7, "camera_gesture"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto :goto_3

    .line 282
    :cond_6
    const-string v7, "camera_double_tap_power_gesture"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 627
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0963

    new-instance v2, Lcom/android/exsettings/DisplaySettings$5;

    invoke-direct {v2, p0}, Lcom/android/exsettings/DisplaySettings$5;-><init>(Lcom/android/exsettings/DisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/exsettings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 636
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 898
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 899
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 900
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/exsettings/DisplaySettings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 901
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 618
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 620
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 622
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 734
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 736
    .local v4, "key":Ljava/lang/String;
    const-string v8, "screen_timeout"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 738
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 739
    .local v7, "value":I
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "screen_off_timeout"

    invoke-static {v8, v11, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 740
    int-to-long v12, v7

    invoke-direct {p0, v12, v13}, Lcom/android/exsettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    .end local v7    # "value":I
    :cond_0
    :goto_0
    const-string v8, "font_size"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 746
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/exsettings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 748
    :cond_1
    iget-object v8, p0, Lcom/android/exsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-ne p1, v8, :cond_2

    move-object/from16 v8, p2

    .line 749
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 750
    .local v2, "auto":Z
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "screen_brightness_mode"

    if-eqz v2, :cond_b

    move v8, v9

    :goto_1
    invoke-static {v11, v12, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 762
    .end local v2    # "auto":Z
    :cond_2
    iget-object v8, p0, Lcom/android/exsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v8, :cond_3

    move-object/from16 v8, p2

    .line 763
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 764
    .local v7, "value":Z
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wake_gesture_enabled"

    if-eqz v7, :cond_c

    move v8, v9

    :goto_2
    invoke-static {v11, v12, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 766
    .end local v7    # "value":Z
    :cond_3
    iget-object v8, p0, Lcom/android/exsettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v8, :cond_4

    move-object/from16 v8, p2

    .line 767
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 768
    .restart local v7    # "value":Z
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "doze_enabled"

    if-eqz v7, :cond_d

    move v8, v9

    :goto_3
    invoke-static {v11, v12, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 770
    .end local v7    # "value":Z
    :cond_4
    iget-object v8, p0, Lcom/android/exsettings/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v8, :cond_5

    move-object/from16 v8, p2

    .line 771
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 772
    .restart local v7    # "value":Z
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "double_tap_to_wake"

    if-eqz v7, :cond_e

    move v8, v9

    :goto_4
    invoke-static {v11, v12, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 774
    .end local v7    # "value":Z
    :cond_5
    iget-object v8, p0, Lcom/android/exsettings/DisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v8, :cond_6

    move-object/from16 v8, p2

    .line 775
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 776
    .restart local v7    # "value":Z
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "camera_gesture_disabled"

    if-eqz v7, :cond_f

    move v8, v10

    :goto_5
    invoke-static {v11, v12, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 779
    .end local v7    # "value":Z
    :cond_6
    iget-object v8, p0, Lcom/android/exsettings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v8, :cond_7

    move-object/from16 v8, p2

    .line 780
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 781
    .restart local v7    # "value":Z
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "camera_double_tap_power_gesture_disabled"

    if-eqz v7, :cond_10

    move v8, v10

    :goto_6
    invoke-static {v11, v12, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 784
    .end local v7    # "value":Z
    :cond_7
    iget-object v8, p0, Lcom/android/exsettings/DisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    if-ne p1, v8, :cond_8

    .line 786
    :try_start_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 787
    .local v7, "value":I
    const-string v8, "uimode"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/UiModeManager;

    .line 789
    .local v6, "uiManager":Landroid/app/UiModeManager;
    invoke-virtual {v6, v7}, Landroid/app/UiModeManager;->setNightMode(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 795
    .end local v6    # "uiManager":Landroid/app/UiModeManager;
    .end local v7    # "value":I
    :cond_8
    :goto_7
    iget-object v8, p0, Lcom/android/exsettings/DisplaySettings;->mLightPreference:Landroid/preference/SwitchPreference;

    if-ne p1, v8, :cond_a

    .line 796
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->updateNotificationLightEnable()V

    .line 798
    :try_start_2
    iget-object v8, p0, Lcom/android/exsettings/DisplaySettings;->mLightPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "notification_light_setting"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v11

    if-ne v11, v9, :cond_9

    move v10, v9

    :cond_9
    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 813
    :cond_a
    :goto_8
    return v9

    .line 741
    .restart local p2    # "objValue":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 742
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v8, "DisplaySettings"

    const-string v11, "could not persist screen timeout setting"

    invoke-static {v8, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "auto":Z
    :cond_b
    move v8, v10

    .line 750
    goto/16 :goto_1

    .end local v2    # "auto":Z
    .local v7, "value":Z
    :cond_c
    move v8, v10

    .line 764
    goto/16 :goto_2

    :cond_d
    move v8, v10

    .line 768
    goto/16 :goto_3

    :cond_e
    move v8, v10

    .line 772
    goto :goto_4

    :cond_f
    move v8, v9

    .line 776
    goto :goto_5

    :cond_10
    move v8, v9

    .line 781
    goto :goto_6

    .line 790
    .end local v7    # "value":Z
    .end local p2    # "objValue":Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 791
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const-string v8, "DisplaySettings"

    const-string v11, "could not persist night mode setting"

    invoke-static {v8, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 800
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v5

    .line 801
    .local v5, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v8, "DisplaySettings"

    const-string v10, "notification_light_setting not found"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 818
    iget-object v1, p0, Lcom/android/exsettings/DisplaySettings;->mFontSizePref:Lcom/android/exsettings/WarnedListPreference;

    if-ne p1, v1, :cond_1

    .line 819
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    invoke-virtual {p0, v0}, Lcom/android/exsettings/DisplaySettings;->showDialog(I)V

    .line 841
    :goto_0
    return v0

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/DisplaySettings;->mFontSizePref:Lcom/android/exsettings/WarnedListPreference;

    invoke-virtual {v0}, Lcom/android/exsettings/WarnedListPreference;->click()V

    .line 841
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/exsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_0

    .line 724
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/android/exsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 729
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 724
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 607
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 609
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 613
    invoke-direct {p0}, Lcom/android/exsettings/DisplaySettings;->updateState()V

    .line 614
    return-void
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 8
    .param p1, "pref"    # Landroid/preference/ListPreference;

    .prologue
    .line 589
    :try_start_0
    iget-object v4, p0, Lcom/android/exsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_0
    iget-object v4, p0, Lcom/android/exsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v4}, Lcom/android/exsettings/DisplaySettings;->floatToIndex(F)I

    move-result v2

    .line 596
    .local v2, "index":I
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 599
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 600
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0a000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 601
    .local v1, "fontSizeNames":[Ljava/lang/String;
    const v4, 0x7f0c03aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v1, v2

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 603
    return-void

    .line 590
    .end local v1    # "fontSizeNames":[Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "DisplaySettings"

    const-string v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateNotificationLightEnable()V
    .locals 4

    .prologue
    .line 412
    const/4 v1, 0x1

    .line 414
    .local v1, "temp":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_light_setting"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 419
    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 420
    const/4 v1, 0x0

    .line 424
    :goto_1
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_light_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 426
    return-void

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "DisplaySettings"

    const-string v3, "notification_light_setting not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 422
    .end local v0    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 3
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 707
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 708
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :goto_0
    return-void

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
