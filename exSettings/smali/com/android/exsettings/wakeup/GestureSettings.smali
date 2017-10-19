.class public Lcom/android/exsettings/wakeup/GestureSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "GestureSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final ALARM_TURN_OVER_MUTE_KEY:Ljava/lang/String;

.field private final BLACK_GESTURE_ENABLE:Ljava/lang/String;

.field private final PRE_BLACKGESTURE_KEY:Ljava/lang/String;

.field private final PRE_GLOVE_MODE_SWITCH_KEY:Ljava/lang/String;

.field private final PRE_MISS_TOUCH_PROOF_KEY:Ljava/lang/String;

.field private final PRE_SCREENSHOTGESTURE_KEY:Ljava/lang/String;

.field private final PRE_TURN_OVER_MUTE_KEY:Ljava/lang/String;

.field private final PRE_VOLUMEGESTURE_KEY:Ljava/lang/String;

.field private final SCREENSHOT_GESTURE_ENABLE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private alarmTurnOverMute:Lcom/android/exsettings/QuickSwitchPreference;

.field private blackGesture:Lcom/android/exsettings/SwitchPreferenceOnly;

.field private gloveModePre:Lcom/android/exsettings/SwitchPreferenceOnly;

.field private isGloveModeActive:Z

.field private mAlarmItem:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGloveModeAlertDialog:Landroid/app/AlertDialog;

.field private mItemChoiceListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSnoozeEnable:Z

.field private missTouchProof:Lcom/android/exsettings/SwitchPreferenceOnly;

.field private screenshotGesture:Lcom/android/exsettings/SwitchPreferenceOnly;

.field private settings:Landroid/content/SharedPreferences;

.field private turnOverIndex:I

.field private turnOverMute:Lcom/android/exsettings/SwitchPreferenceOnly;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 80
    const-string v0, "GestureSettings"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->TAG:Ljava/lang/String;

    .line 81
    const-string v0, "black_gesture"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->PRE_BLACKGESTURE_KEY:Ljava/lang/String;

    .line 82
    const-string v0, "volume_settings"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->PRE_VOLUMEGESTURE_KEY:Ljava/lang/String;

    .line 83
    const-string v0, "screenshot_settings"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->PRE_SCREENSHOTGESTURE_KEY:Ljava/lang/String;

    .line 85
    const-string v0, "turn_over_mute"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->PRE_TURN_OVER_MUTE_KEY:Ljava/lang/String;

    .line 87
    const-string v0, "alarm_turn_over_mute"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->ALARM_TURN_OVER_MUTE_KEY:Ljava/lang/String;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mSnoozeEnable:Z

    .line 101
    const-string v0, "miss_touch_proof"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->PRE_MISS_TOUCH_PROOF_KEY:Ljava/lang/String;

    .line 103
    const-string v0, "glove_mode_switch"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->PRE_GLOVE_MODE_SWITCH_KEY:Ljava/lang/String;

    .line 105
    const-string v0, "black_gesture_enable"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->BLACK_GESTURE_ENABLE:Ljava/lang/String;

    .line 109
    const-string v0, "screenshot_gesture_enable"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->SCREENSHOT_GESTURE_ENABLE:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->isGloveModeActive:Z

    .line 452
    new-instance v0, Lcom/android/exsettings/wakeup/GestureSettings$5;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wakeup/GestureSettings$5;-><init>(Lcom/android/exsettings/wakeup/GestureSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mItemChoiceListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/wakeup/GestureSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/GestureSettings;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/wakeup/GestureSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/GestureSettings;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/wakeup/GestureSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/GestureSettings;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->settings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/wakeup/GestureSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/GestureSettings;
    .param p1, "x1"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/exsettings/wakeup/GestureSettings;->showGestureDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/exsettings/wakeup/GestureSettings;)Lcom/android/exsettings/SwitchPreferenceOnly;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/GestureSettings;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->missTouchProof:Lcom/android/exsettings/SwitchPreferenceOnly;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/wakeup/GestureSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/GestureSettings;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->showDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/exsettings/wakeup/GestureSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/GestureSettings;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->turnOverIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/exsettings/wakeup/GestureSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/GestureSettings;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/android/exsettings/wakeup/GestureSettings;->turnOverIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/exsettings/wakeup/GestureSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/GestureSettings;
    .param p1, "x1"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/exsettings/wakeup/GestureSettings;->clickTurnOverAlarmOK(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/exsettings/wakeup/GestureSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/GestureSettings;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mGloveModeAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private clickTurnOverAlarmOK(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 459
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mAlarmItem:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mAlarmItem:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->alarmTurnOverMute:Lcom/android/exsettings/QuickSwitchPreference;

    iget-object v1, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mAlarmItem:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/QuickSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 462
    :cond_0
    if-nez p1, :cond_2

    .line 466
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tct_alarm_snooze_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 467
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tct_alarm_dismiss_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 477
    :cond_1
    :goto_0
    return-void

    .line 469
    :cond_2
    if-ne p1, v2, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tct_alarm_snooze_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 474
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tct_alarm_dismiss_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private createGloveModePromptDialog()V
    .locals 3

    .prologue
    .line 525
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 526
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0cdf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 527
    const v1, 0x7f0c0ce2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 529
    const v1, 0x104000a

    new-instance v2, Lcom/android/exsettings/wakeup/GestureSettings$7;

    invoke-direct {v2, p0}, Lcom/android/exsettings/wakeup/GestureSettings$7;-><init>(Lcom/android/exsettings/wakeup/GestureSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 537
    new-instance v1, Lcom/android/exsettings/wakeup/GestureSettings$8;

    invoke-direct {v1, p0}, Lcom/android/exsettings/wakeup/GestureSettings$8;-><init>(Lcom/android/exsettings/wakeup/GestureSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 547
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mGloveModeAlertDialog:Landroid/app/AlertDialog;

    .line 548
    return-void
.end method

.method private initPreference()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 164
    const-string v0, "black_gesture"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SwitchPreferenceOnly;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->blackGesture:Lcom/android/exsettings/SwitchPreferenceOnly;

    .line 165
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->blackGesture:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->blackGesture:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 173
    const-string v0, "screenshot_settings"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SwitchPreferenceOnly;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->screenshotGesture:Lcom/android/exsettings/SwitchPreferenceOnly;

    .line 174
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->screenshotGesture:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->screenshotGesture:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 178
    iget-object v3, p0, Lcom/android/exsettings/wakeup/GestureSettings;->blackGesture:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "black_gesture_enable"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setChecked(Z)V

    .line 187
    iget-object v3, p0, Lcom/android/exsettings/wakeup/GestureSettings;->screenshotGesture:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "multi_finger_screen_shot_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setChecked(Z)V

    .line 193
    const-string v0, "turn_over_mute"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SwitchPreferenceOnly;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->turnOverMute:Lcom/android/exsettings/SwitchPreferenceOnly;

    .line 196
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->turnOverMute:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    const-string v0, "alarm_turn_over_mute"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/QuickSwitchPreference;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->alarmTurnOverMute:Lcom/android/exsettings/QuickSwitchPreference;

    .line 200
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->alarmTurnOverMute:Lcom/android/exsettings/QuickSwitchPreference;

    const v3, 0x7f0400ad

    invoke-virtual {v0, v3}, Lcom/android/exsettings/QuickSwitchPreference;->setLayoutResource(I)V

    .line 201
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->alarmTurnOverMute:Lcom/android/exsettings/QuickSwitchPreference;

    new-instance v3, Lcom/android/exsettings/wakeup/GestureSettings$1;

    invoke-direct {v3, p0}, Lcom/android/exsettings/wakeup/GestureSettings$1;-><init>(Lcom/android/exsettings/wakeup/GestureSettings;)V

    invoke-virtual {v0, v3}, Lcom/android/exsettings/QuickSwitchPreference;->setOnSwitchCaughtListener(Lcom/android/exsettings/QuickSwitchPreference$OnSwitchCaughtListener;)V

    .line 225
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->alarmTurnOverMute:Lcom/android/exsettings/QuickSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/QuickSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tct_alarm_snooze_enable"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mSnoozeEnable:Z

    .line 231
    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mSnoozeEnable:Z

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->alarmTurnOverMute:Lcom/android/exsettings/QuickSwitchPreference;

    iget-object v1, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mAlarmItem:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/exsettings/QuickSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 251
    :goto_3
    const-string v0, "miss_touch_proof"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SwitchPreferenceOnly;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->missTouchProof:Lcom/android/exsettings/SwitchPreferenceOnly;

    .line 254
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->missTouchProof:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings_preferences"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->settings:Landroid/content/SharedPreferences;

    .line 264
    const-string v0, "glove_mode_switch"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SwitchPreferenceOnly;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->gloveModePre:Lcom/android/exsettings/SwitchPreferenceOnly;

    .line 265
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->gloveModePre:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 268
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->gloveModePre:Lcom/android/exsettings/SwitchPreferenceOnly;

    iget-boolean v1, p0, Lcom/android/exsettings/wakeup/GestureSettings;->isGloveModeActive:Z

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setChecked(Z)V

    .line 270
    return-void

    :cond_0
    move v0, v2

    .line 178
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 187
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 229
    goto :goto_2

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->alarmTurnOverMute:Lcom/android/exsettings/QuickSwitchPreference;

    iget-object v3, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mAlarmItem:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/QuickSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private resetGestureTempValue(C)V
    .locals 7
    .param p1, "temp"    # C

    .prologue
    .line 481
    const/4 v2, 0x0

    .line 483
    .local v2, "fileOutStream":Ljava/io/FileWriter;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/tp_gesture/tp_device/tp_gesture_id"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 484
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 485
    .local v3, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(I)V

    .line 486
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 487
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 488
    const-string v4, "GestureSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetGestureTempValue() temp=:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    if-eqz v2, :cond_0

    .line 498
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 506
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return-void

    .line 499
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 500
    .local v0, "ex":Ljava/io/IOException;
    const-string v4, "GestureSettings"

    const-string v5, "IOException while closing synced file: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 501
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 502
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v4, "GestureSettings"

    const-string v5, "exception while closing file: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 489
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v0

    .line 490
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "GestureSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file  not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 496
    if-eqz v2, :cond_0

    .line 498
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 499
    :catch_3
    move-exception v0

    .line 500
    .local v0, "ex":Ljava/io/IOException;
    const-string v4, "GestureSettings"

    const-string v5, "IOException while closing synced file: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 501
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v0

    .line 502
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v4, "GestureSettings"

    const-string v5, "exception while closing file: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 491
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_5
    move-exception v0

    .line 492
    .local v0, "ex":Ljava/io/IOException;
    :try_start_4
    const-string v4, "GestureSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException trying to  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 496
    if-eqz v2, :cond_0

    .line 498
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_0

    .line 499
    :catch_6
    move-exception v0

    .line 500
    const-string v4, "GestureSettings"

    const-string v5, "IOException while closing synced file: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 501
    :catch_7
    move-exception v0

    .line 502
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v4, "GestureSettings"

    const-string v5, "exception while closing file: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 493
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_8
    move-exception v0

    .line 494
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    :try_start_6
    const-string v4, "GestureSettings"

    const-string v5, "exception while syncing file: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 496
    if-eqz v2, :cond_0

    .line 498
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_a

    goto/16 :goto_0

    .line 499
    :catch_9
    move-exception v0

    .line 500
    .local v0, "ex":Ljava/io/IOException;
    const-string v4, "GestureSettings"

    const-string v5, "IOException while closing synced file: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 501
    .local v0, "ex":Ljava/lang/RuntimeException;
    :catch_a
    move-exception v0

    .line 502
    const-string v4, "GestureSettings"

    const-string v5, "exception while closing file: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 496
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    .line 498
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_c

    .line 503
    :cond_1
    :goto_1
    throw v4

    .line 499
    :catch_b
    move-exception v0

    .line 500
    .local v0, "ex":Ljava/io/IOException;
    const-string v5, "GestureSettings"

    const-string v6, "IOException while closing synced file: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 501
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_c
    move-exception v0

    .line 502
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v5, "GestureSettings"

    const-string v6, "exception while closing file: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private setValue(Z)V
    .locals 8
    .param p1, "status"    # Z

    .prologue
    .line 550
    if-eqz p1, :cond_1

    const/16 v3, 0x31

    .line 551
    .local v3, "temp":C
    :goto_0
    const/4 v2, 0x0

    .line 553
    .local v2, "fileOutStream":Ljava/io/FileWriter;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/class/tp_glove/tp_glove_device/tp_glove_id"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 554
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 555
    .local v4, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 556
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 557
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 558
    const-string v5, "GestureSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetGloveModeValue() temp=:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    if-eqz v2, :cond_0

    .line 568
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 576
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    :cond_0
    :goto_1
    return-void

    .line 550
    .end local v2    # "fileOutStream":Ljava/io/FileWriter;
    .end local v3    # "temp":C
    :cond_1
    const/16 v3, 0x30

    goto :goto_0

    .line 569
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileOutStream":Ljava/io/FileWriter;
    .restart local v3    # "temp":C
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 570
    .local v0, "ex":Ljava/io/IOException;
    const-string v5, "GestureSettings"

    const-string v6, "IOException while closing synced file: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 571
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 572
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v5, "GestureSettings"

    const-string v6, "exception while closing file: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 559
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v0

    .line 560
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v5, "GestureSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file  not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 566
    if-eqz v2, :cond_0

    .line 568
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 569
    :catch_3
    move-exception v0

    .line 570
    .local v0, "ex":Ljava/io/IOException;
    const-string v5, "GestureSettings"

    const-string v6, "IOException while closing synced file: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 571
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v0

    .line 572
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v5, "GestureSettings"

    const-string v6, "exception while closing file: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 561
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_5
    move-exception v0

    .line 562
    .local v0, "ex":Ljava/io/IOException;
    :try_start_4
    const-string v5, "GestureSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException trying to  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 566
    if-eqz v2, :cond_0

    .line 568
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_1

    .line 569
    :catch_6
    move-exception v0

    .line 570
    const-string v5, "GestureSettings"

    const-string v6, "IOException while closing synced file: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 571
    :catch_7
    move-exception v0

    .line 572
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v5, "GestureSettings"

    const-string v6, "exception while closing file: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 563
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_8
    move-exception v0

    .line 564
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    :try_start_6
    const-string v5, "GestureSettings"

    const-string v6, "exception while syncing file: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 566
    if-eqz v2, :cond_0

    .line 568
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_a

    goto/16 :goto_1

    .line 569
    :catch_9
    move-exception v0

    .line 570
    .local v0, "ex":Ljava/io/IOException;
    const-string v5, "GestureSettings"

    const-string v6, "IOException while closing synced file: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 571
    .local v0, "ex":Ljava/lang/RuntimeException;
    :catch_a
    move-exception v0

    .line 572
    const-string v5, "GestureSettings"

    const-string v6, "exception while closing file: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 566
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_2

    .line 568
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_c

    .line 573
    :cond_2
    :goto_2
    throw v5

    .line 569
    :catch_b
    move-exception v0

    .line 570
    .local v0, "ex":Ljava/io/IOException;
    const-string v6, "GestureSettings"

    const-string v7, "IOException while closing synced file: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 571
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_c
    move-exception v0

    .line 572
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v6, "GestureSettings"

    const-string v7, "exception while closing file: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private showAlarmStatusDialog()V
    .locals 7

    .prologue
    .line 429
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mAlarmItem:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 431
    .local v2, "labelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f040124

    invoke-direct {v0, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 433
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 434
    .local v1, "index":I
    iget-object v4, p0, Lcom/android/exsettings/wakeup/GestureSettings;->alarmTurnOverMute:Lcom/android/exsettings/QuickSwitchPreference;

    invoke-virtual {v4}, Lcom/android/exsettings/QuickSwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mAlarmItem:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 435
    const/4 v1, 0x0

    .line 439
    :cond_0
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0c9f

    invoke-virtual {p0, v5}, Lcom/android/exsettings/wakeup/GestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mItemChoiceListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0585

    new-instance v6, Lcom/android/exsettings/wakeup/GestureSettings$4;

    invoke-direct {v6, p0}, Lcom/android/exsettings/wakeup/GestureSettings$4;-><init>(Lcom/android/exsettings/wakeup/GestureSettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 449
    .local v3, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 450
    return-void

    .line 436
    .end local v3    # "mAlertDialog":Landroid/app/AlertDialog;
    :cond_1
    iget-object v4, p0, Lcom/android/exsettings/wakeup/GestureSettings;->alarmTurnOverMute:Lcom/android/exsettings/QuickSwitchPreference;

    invoke-virtual {v4}, Lcom/android/exsettings/QuickSwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mAlarmItem:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 437
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showDialog()V
    .locals 3

    .prologue
    .line 509
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0ca7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0cde

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0585

    new-instance v2, Lcom/android/exsettings/wakeup/GestureSettings$6;

    invoke-direct {v2, p0}, Lcom/android/exsettings/wakeup/GestureSettings$6;-><init>(Lcom/android/exsettings/wakeup/GestureSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 516
    return-void
.end method

.method private showGestureDialog(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 519
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/exsettings/wakeup/GestureTipActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 520
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "gesture_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 522
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 146
    const/16 v0, 0x10

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/GestureSettings;->addPreferencesFromResource(I)V

    .line 153
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mAlarmItem:[Ljava/lang/String;

    .line 154
    invoke-direct {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->initPreference()V

    .line 155
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mContext:Landroid/content/Context;

    .line 161
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 589
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 591
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 288
    const-string v2, "GestureSettings"

    const-string v5, "onPreferenceChanged"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v2, "black_gesture"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 290
    const-string v2, "GestureSettings"

    const-string v5, "onPreferenceChanged  PRE_BLACKGESTURE_KEY"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "black_gesture_enable"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 293
    const/16 v2, 0x31

    invoke-direct {p0, v2}, Lcom/android/exsettings/wakeup/GestureSettings;->resetGestureTempValue(C)V

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "missValue":I
    if-nez v0, :cond_0

    .line 299
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0c94

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f0c0cac

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f0c0cab

    new-instance v5, Lcom/android/exsettings/wakeup/GestureSettings$3;

    invoke-direct {v5, p0}, Lcom/android/exsettings/wakeup/GestureSettings$3;-><init>(Lcom/android/exsettings/wakeup/GestureSettings;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f0c0caa

    new-instance v5, Lcom/android/exsettings/wakeup/GestureSettings$2;

    invoke-direct {v5, p0}, Lcom/android/exsettings/wakeup/GestureSettings$2;-><init>(Lcom/android/exsettings/wakeup/GestureSettings;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 424
    .end local v0    # "missValue":I
    :cond_0
    :goto_0
    return v3

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "black_gesture_enable"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    const/16 v2, 0x30

    invoke-direct {p0, v2}, Lcom/android/exsettings/wakeup/GestureSettings;->resetGestureTempValue(C)V

    goto :goto_0

    .line 337
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    const-string v2, "screenshot_settings"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 338
    const-string v2, "GestureSettings"

    const-string v5, "onPreferenceChanged  PRE_SCREENSHOTGESTURE_KEY"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p2

    .line 340
    check-cast v2, Ljava/lang/Boolean;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 341
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "multi_finger_screen_shot_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 348
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screenshot_gesture_enable"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    iget-object v2, p0, Lcom/android/exsettings/wakeup/GestureSettings;->settings:Landroid/content/SharedPreferences;

    const-string v5, "kinect_screenshot"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 352
    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lcom/android/exsettings/wakeup/GestureSettings;->showGestureDialog(I)V

    goto :goto_0

    .line 343
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "multi_finger_screen_shot_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 356
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screenshot_gesture_enable"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 358
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    const-string v2, "turn_over_mute"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 359
    const-string v2, "GestureSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChanged  PRE_TURN_OVER_MUTE_KEY newValue : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p2

    .line 360
    check-cast v2, Ljava/lang/Boolean;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    move v1, v3

    .line 363
    .local v1, "val":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "flip_mute_enable"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 366
    iget-object v2, p0, Lcom/android/exsettings/wakeup/GestureSettings;->settings:Landroid/content/SharedPreferences;

    const-string v5, "auto_mute_tips"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lcom/android/exsettings/wakeup/GestureSettings;->showGestureDialog(I)V

    goto/16 :goto_0

    .end local v1    # "val":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_6
    move v1, v4

    .line 360
    goto :goto_2

    .line 392
    :cond_7
    const-string v2, "miss_touch_proof"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 393
    const-string v2, "GestureSettings"

    const-string v5, "onPreferenceChanged  PRE_MISS_TOUCH_PROOF_KEY"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    move v1, v3

    .line 396
    .restart local v1    # "val":I
    :goto_3
    if-ne v1, v3, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->showDialog()V

    goto/16 :goto_0

    .end local v1    # "val":I
    :cond_8
    move v1, v4

    .line 394
    goto :goto_3

    .line 400
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_9
    const-string v2, "glove_mode_switch"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 401
    check-cast v2, Ljava/lang/Boolean;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/wakeup/GestureSettings;->setValue(Z)V

    .line 402
    iget-object v2, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "glove_mode_enable"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v3

    :goto_4
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 404
    iget-object v2, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "glove_mode_enable"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 405
    iget-object v2, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mGloveModeAlertDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_a

    .line 406
    invoke-direct {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->createGloveModePromptDialog()V

    .line 408
    :cond_a
    iget-object v2, p0, Lcom/android/exsettings/wakeup/GestureSettings;->mGloveModeAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_b
    move v2, v4

    .line 402
    goto :goto_4
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 279
    const-string v0, "alarm_turn_over_mute"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/android/exsettings/wakeup/GestureSettings;->showAlarmStatusDialog()V

    .line 282
    :cond_0
    const-string v0, "GestureSettings"

    const-string v1, "onPreferenceClick  return  false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 583
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 585
    return-void
.end method
