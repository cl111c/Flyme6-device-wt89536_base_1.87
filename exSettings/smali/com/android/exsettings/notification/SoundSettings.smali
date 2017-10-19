.class public Lcom/android/exsettings/notification/SoundSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/SoundSettings$H;,
        Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;,
        Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field private static final PREFS:[Lcom/android/exsettings/notification/SettingPref;

.field private static final PREF_DIAL_PAD_TONES:Lcom/android/exsettings/notification/SettingPref;

.field private static final PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

.field private static final PREF_TOUCH_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

.field private static final PREF_VIBRATE_ON_TOUCH:Lcom/android/exsettings/notification/SettingPref;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/BaseSearchIndexProvider;


# instance fields
.field private mAlarmRingtonePreference:Landroid/preference/Preference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/exsettings/notification/SoundSettings$H;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mMultiSimRingtonePreference:Landroid/preference/Preference;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mNotificationPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mOriginalStreamVolume:I

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private mPowerONOFFRingtone:Landroid/preference/SwitchPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

.field private final mSdcardReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsObserver:Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;

.field private mSilentModePref:Landroid/preference/TwoStatePreference;

.field private mSim1PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;

.field private mSim2PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;

.field private mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

.field private mVibrateWhenSilentPref:Landroid/preference/TwoStatePreference;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private mVolume:Landroid/preference/Preference;

.field private final mVolumeCallback:Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 174
    new-instance v0, Lcom/android/exsettings/notification/SoundSettings$1;

    const-string v2, "dial_pad_tones"

    const-string v3, "dtmf_tone"

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/notification/SoundSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/exsettings/notification/SoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/exsettings/notification/SettingPref;

    .line 181
    new-instance v0, Lcom/android/exsettings/notification/SettingPref;

    const-string v2, "screen_locking_sounds"

    const-string v3, "lockscreen_sounds_enabled"

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/exsettings/notification/SoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    .line 183
    new-instance v0, Lcom/android/exsettings/notification/SoundSettings$2;

    const-string v2, "touch_sounds"

    const-string v3, "sound_effects_enabled"

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/notification/SoundSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/exsettings/notification/SoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    .line 196
    new-instance v0, Lcom/android/exsettings/notification/SoundSettings$3;

    const-string v2, "vibrate_on_touch"

    const-string v3, "haptic_feedback_enabled"

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/notification/SoundSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/exsettings/notification/SoundSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/exsettings/notification/SettingPref;

    .line 203
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/exsettings/notification/SettingPref;

    sget-object v2, Lcom/android/exsettings/notification/SoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/exsettings/notification/SettingPref;

    aput-object v2, v0, v6

    sget-object v2, Lcom/android/exsettings/notification/SoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    aput-object v2, v0, v4

    sget-object v2, Lcom/android/exsettings/notification/SoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/exsettings/notification/SoundSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/exsettings/notification/SettingPref;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exsettings/notification/SoundSettings;->PREFS:[Lcom/android/exsettings/notification/SettingPref;

    .line 815
    new-instance v0, Lcom/android/exsettings/notification/SoundSettings$9;

    invoke-direct {v0}, Lcom/android/exsettings/notification/SoundSettings$9;-><init>()V

    sput-object v0, Lcom/android/exsettings/notification/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 135
    new-instance v0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/android/exsettings/notification/SoundSettings;Lcom/android/exsettings/notification/SoundSettings$1;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVolumeCallback:Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;

    .line 136
    new-instance v0, Lcom/android/exsettings/notification/SoundSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/notification/SoundSettings$H;-><init>(Lcom/android/exsettings/notification/SoundSettings;Lcom/android/exsettings/notification/SoundSettings$1;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mHandler:Lcom/android/exsettings/notification/SoundSettings$H;

    .line 137
    new-instance v0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;-><init>(Lcom/android/exsettings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mSettingsObserver:Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;

    .line 211
    new-instance v0, Lcom/android/exsettings/notification/SoundSettings$4;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/SoundSettings$4;-><init>(Lcom/android/exsettings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 240
    new-instance v0, Lcom/android/exsettings/notification/SoundSettings$5;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/SoundSettings$5;-><init>(Lcom/android/exsettings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mSdcardReceiver:Landroid/content/BroadcastReceiver;

    .line 547
    new-instance v0, Lcom/android/exsettings/notification/SoundSettings$7;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/SoundSettings$7;-><init>(Lcom/android/exsettings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 766
    return-void
.end method

.method static synthetic access$1000(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/DefaultRingtonePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/SoundSettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mSim2PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/exsettings/notification/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/SoundSettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/exsettings/notification/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/SoundSettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mAlarmRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/exsettings/notification/SoundSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/SoundSettings;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/exsettings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/exsettings/notification/SoundSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/SoundSettings;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/exsettings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/exsettings/notification/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/notification/SoundSettings;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/SoundSettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVolumeCallback:Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/exsettings/notification/SoundSettings;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/notification/SoundSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/notification/SoundSettings;->updateRingOrNotificationIcon(II)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-static {p0}, Lcom/android/exsettings/notification/SoundSettings;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/notification/SoundSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/notification/SoundSettings;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/exsettings/notification/SoundSettings;->updateRingerMode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/exsettings/notification/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/notification/SoundSettings;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->lookupRingtoneNames()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/SoundSettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mHandler:Lcom/android/exsettings/notification/SoundSettings$H;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/exsettings/notification/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/SoundSettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/exsettings/notification/SoundSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/SoundSettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/Context;II)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 96
    invoke-static {p0, p1, p2}, Lcom/android/exsettings/notification/SoundSettings;->updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/DefaultRingtonePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/SoundSettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mSim1PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;

    return-object v0
.end method

.method private static getRingtoneName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 638
    const/4 v7, 0x0

    .line 639
    .local v7, "summary":Ljava/lang/CharSequence;
    if-eqz p1, :cond_2

    .line 640
    const/4 v6, 0x0

    .line 642
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "media"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 644
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "title"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 650
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 651
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 660
    :cond_1
    if-eqz v6, :cond_2

    .line 661
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 665
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    return-object v7

    .line 646
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_display_name"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 655
    :catch_0
    move-exception v0

    .line 660
    if-eqz v6, :cond_2

    .line 661
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 657
    :catch_1
    move-exception v0

    .line 660
    if-eqz v6, :cond_2

    .line 661
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 660
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 661
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static hasHaptic(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 844
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 845
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initRingtones(Landroid/preference/PreferenceCategory;)V
    .locals 6
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    const/4 v4, 0x0

    .line 490
    const-string v3, "ringtone"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 491
    const-string v3, "multisim_ringtone"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mMultiSimRingtonePreference:Landroid/preference/Preference;

    .line 492
    const-string v3, "notification_ringtone"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    .line 493
    const-string v3, "alarm_ringtone"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mAlarmRingtonePreference:Landroid/preference/Preference;

    .line 495
    const-string v3, "sim1_ringtone"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/DefaultRingtonePreference;

    iput-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mSim1PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;

    .line 496
    const-string v3, "sim2_ringtone"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/DefaultRingtonePreference;

    iput-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mSim2PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;

    .line 498
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 501
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mMultiSimRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 502
    iput-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mMultiSimRingtonePreference:Landroid/preference/Preference;

    .line 504
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 505
    iput-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 508
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 509
    .local v1, "numPhones":I
    const-string v3, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init phone ringtone numPhones="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 511
    move v2, v0

    .line 512
    .local v2, "subId":I
    if-nez v2, :cond_1

    .line 513
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mSim1PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;

    invoke-virtual {v3, v2}, Lcom/android/exsettings/DefaultRingtonePreference;->setSubId(I)V

    .line 510
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    :cond_1
    if-lez v2, :cond_0

    .line 518
    const-string v3, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSim2PhoneRingtonePreference.setSubId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mSim2PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;

    invoke-virtual {v3, v2}, Lcom/android/exsettings/DefaultRingtonePreference;->setSubId(I)V

    goto :goto_1

    .line 528
    .end local v0    # "i":I
    .end local v1    # "numPhones":I
    .end local v2    # "subId":I
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mVoiceCapable:Z

    if-nez v3, :cond_3

    .line 529
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 530
    iput-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 532
    :cond_3
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mMultiSimRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 533
    iput-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mMultiSimRingtonePreference:Landroid/preference/Preference;

    .line 535
    :cond_4
    return-void
.end method

.method private initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V
    .locals 4
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 672
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    .line 673
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 674
    const-string v0, "SoundSettings"

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :goto_0
    return-void

    .line 677
    :cond_0
    iget-boolean v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 679
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    goto :goto_0

    .line 682
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 683
    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->updateVibrateWhenRinging()V

    .line 684
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    new-instance v3, Lcom/android/exsettings/notification/SoundSettings$8;

    invoke-direct {v3, p0}, Lcom/android/exsettings/notification/SoundSettings$8;-><init>(Lcom/android/exsettings/notification/SoundSettings;)V

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 694
    const-string v0, "vibrate_when_silent"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenSilentPref:Landroid/preference/TwoStatePreference;

    .line 696
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenSilentPref:Landroid/preference/TwoStatePreference;

    const-string v0, "persist.sys.vibrate"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private initVolumePreference(Ljava/lang/String;I)Lcom/android/exsettings/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Lcom/android/exsettings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 400
    .local v0, "volumePref":Lcom/android/exsettings/notification/VolumeSeekBarPreference;
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mVolumeCallback:Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;)V

    .line 401
    invoke-virtual {v0, p2}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 402
    return-object v0
.end method

.method private isPowerRingtoneEnable()Z
    .locals 3

    .prologue
    .line 840
    const-string v1, "persist.sys.silent"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, "enabled":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 545
    return-void
.end method

.method private refreshNotificationListeners()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 708
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 709
    const-string v3, "system_sound"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 710
    .local v1, "system_sound":Landroid/preference/PreferenceCategory;
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v3}, Lcom/android/exsettings/notification/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v2

    .line 711
    .local v2, "total":I
    if-nez v2, :cond_1

    .line 712
    invoke-virtual {p0}, Lcom/android/exsettings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 724
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 726
    .end local v1    # "system_sound":Landroid/preference/PreferenceCategory;
    .end local v2    # "total":I
    :cond_0
    return-void

    .line 714
    .restart local v1    # "system_sound":Landroid/preference/PreferenceCategory;
    .restart local v2    # "total":I
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/exsettings/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 715
    .local v0, "n":I
    if-nez v0, :cond_2

    .line 716
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0a46

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 722
    :goto_1
    invoke-virtual {p0}, Lcom/android/exsettings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 719
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f130009

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateRingOrNotificationIcon(II)V
    .locals 9
    .param p1, "progress"    # I
    .param p2, "what"    # I

    .prologue
    const v2, 0x7f02021c

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x5

    .line 408
    const-string v3, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRingOrNotificationIcon progress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", what="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/TctLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v3, 0x4

    if-ne v3, p2, :cond_4

    .line 410
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v8}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    .line 411
    .local v0, "muted":Z
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mRingPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    iget-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v7, :cond_1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->showIcon(I)V

    .line 420
    if-eqz v0, :cond_3

    .line 421
    const-string v2, "SoundSettings"

    const-string v3, "updateRingOrNotificationIcon muted mRingPreference.setSeekBarProgress(0)"

    invoke-static {v2, v3}, Landroid/util/TctLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v2, p0, Lcom/android/exsettings/notification/SoundSettings;->mRingPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setSeekBarProgress(I)V

    .line 428
    :goto_1
    iget-object v2, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_0

    .line 429
    iget-object v2, p0, Lcom/android/exsettings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/android/exsettings/notification/SoundSettings;->mOriginalStreamVolume:I

    .line 430
    iget v2, p0, Lcom/android/exsettings/notification/SoundSettings;->mOriginalStreamVolume:I

    invoke-direct {p0, v2, v6}, Lcom/android/exsettings/notification/SoundSettings;->updateRingOrNotificationIcon(II)V

    .line 431
    const-string v2, "SoundSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRingOrNotificationIcon mNotificationPreference.setSeekBarProgress("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mOriginalStreamVolume:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/TctLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v2, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    iget v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mOriginalStreamVolume:I

    invoke-virtual {v2, v3}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setSeekBarProgress(I)V

    .line 447
    .end local v0    # "muted":Z
    :cond_0
    :goto_2
    return-void

    .line 411
    .restart local v0    # "muted":Z
    :cond_1
    if-eqz v0, :cond_2

    const v2, 0x7f02021b

    goto :goto_0

    :cond_2
    const v2, 0x7f020189

    goto :goto_0

    .line 424
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 425
    .local v1, "ring_volume_index":I
    const-string v2, "SoundSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRingOrNotificationIcon muted mRingPreference.setSeekBarProgress("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/TctLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v2, p0, Lcom/android/exsettings/notification/SoundSettings;->mRingPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setSeekBarProgress(I)V

    goto :goto_1

    .line 434
    .end local v0    # "muted":Z
    .end local v1    # "ring_volume_index":I
    :cond_4
    if-ne v6, p2, :cond_0

    .line 435
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    .line 436
    .restart local v0    # "muted":Z
    const-string v3, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRingOrNotificationIcon mNotificationPreference muted ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/TctLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    iget-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v7, :cond_5

    :goto_3
    invoke-virtual {v3, v2}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->showIcon(I)V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    const v2, 0x1080306

    goto :goto_3

    :cond_6
    const v2, 0x7f020188

    goto :goto_3
.end method

.method private updateRingerMode(I)V
    .locals 4
    .param p1, "ringerMode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 224
    if-ne p1, v2, :cond_1

    .line 225
    const-string v0, "persist.sys.vibrate"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenSilentPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 227
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mSilentModePref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    if-nez p1, :cond_2

    .line 229
    const-string v0, "persist.sys.vibrate"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenSilentPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mSilentModePref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 232
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 233
    const-string v0, "persist.sys.vibrate"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenSilentPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mSilentModePref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "subId"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 593
    if-nez p0, :cond_1

    .line 594
    const-string v3, "SoundSettings"

    const-string v4, "Unable to update ringtone name, no context provided"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v1, 0x0

    .line 632
    :cond_0
    :goto_0
    return-object v1

    .line 598
    :cond_1
    const/4 v0, 0x0

    .line 599
    .local v0, "ringtoneUri":Landroid/net/Uri;
    if-ne p1, v6, :cond_2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_2

    .line 600
    const-string v3, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ringtoneUri getActualRingtoneUriBySubId subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 606
    :goto_1
    const/4 v1, 0x0

    .line 607
    .local v1, "summary":Ljava/lang/CharSequence;
    const-string v3, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ringtoneUri =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    if-nez v0, :cond_3

    .line 610
    const-string v3, "SoundSettings"

    const-string v4, "ringtoneUri == null, silent ringtone"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const v3, 0x10403a5

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 603
    .end local v1    # "summary":Ljava/lang/CharSequence;
    :cond_2
    const-string v3, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ringtoneUri getActualDefaultRingtoneUri type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 613
    .restart local v1    # "summary":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->isRingtoneExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 614
    invoke-static {p0, v0}, Lcom/android/exsettings/notification/SoundSettings;->getRingtoneName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 616
    :cond_4
    if-nez v1, :cond_5

    if-ne p1, v6, :cond_5

    .line 617
    const-string v3, "ro.config.ringtone"

    invoke-static {p0, v3}, Landroid/media/RingtoneManager;->getSystemDefaultUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 618
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {p0, v2}, Lcom/android/exsettings/notification/SoundSettings;->getRingtoneName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 619
    invoke-static {p0, p2, v0}, Landroid/media/RingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    goto/16 :goto_0

    .line 620
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_5
    if-nez v1, :cond_6

    if-ne p1, v7, :cond_6

    .line 621
    const-string v3, "ro.config.notification_sound"

    invoke-static {p0, v3}, Landroid/media/RingtoneManager;->getSystemDefaultUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 622
    .restart local v2    # "uri":Landroid/net/Uri;
    invoke-static {p0, v2}, Lcom/android/exsettings/notification/SoundSettings;->getRingtoneName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 623
    invoke-static {p0, v7, v2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto/16 :goto_0

    .line 625
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_6
    if-nez v1, :cond_0

    if-ne p1, v8, :cond_0

    .line 626
    const-string v3, "ro.config.alarm_alert"

    invoke-static {p0, v3}, Landroid/media/RingtoneManager;->getSystemDefaultUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 627
    .restart local v2    # "uri":Landroid/net/Uri;
    invoke-static {p0, v2}, Lcom/android/exsettings/notification/SoundSettings;->getRingtoneName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 628
    invoke-static {p0, v8, v2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto/16 :goto_0
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 701
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 704
    :goto_0
    return-void

    .line 702
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x2

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/exsettings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;

    .line 258
    iget-object v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 259
    iget-object v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/exsettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mVoiceCapable:Z

    .line 262
    invoke-virtual {p0}, Lcom/android/exsettings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "vibrator"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    iput-object v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    .line 263
    iget-object v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v8}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v8

    if-nez v8, :cond_0

    .line 264
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    .line 267
    :cond_0
    const v8, 0x7f080052

    invoke-virtual {p0, v8}, Lcom/android/exsettings/notification/SoundSettings;->addPreferencesFromResource(I)V

    .line 269
    const-string v8, "sound"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 270
    .local v5, "sound":Landroid/preference/PreferenceCategory;
    const-string v8, "vibrate"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 271
    .local v7, "vibrate":Landroid/preference/PreferenceCategory;
    const-string v8, "ringtone"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 272
    .local v3, "phone_ringtone":Landroid/preference/PreferenceCategory;
    const-string v8, "system_sound"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 274
    .local v6, "systemsound":Landroid/preference/PreferenceCategory;
    const-string v8, "media_volume"

    const/4 v9, 0x3

    invoke-direct {p0, v8, v9}, Lcom/android/exsettings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;I)Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 275
    const-string v8, "alarm_volume"

    const/4 v9, 0x4

    invoke-direct {p0, v8, v9}, Lcom/android/exsettings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;I)Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 277
    const-string v8, "ring_volume"

    const/4 v9, 0x2

    invoke-direct {p0, v8, v9}, Lcom/android/exsettings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;I)Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mRingPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 279
    const-string v8, "notification_volume"

    const/4 v9, 0x5

    invoke-direct {p0, v8, v9}, Lcom/android/exsettings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;I)Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 281
    const-string v8, "audio"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/notification/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    iput-object v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 284
    const-string v8, "silent_mode"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/TwoStatePreference;

    iput-object v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mSilentModePref:Landroid/preference/TwoStatePreference;

    .line 286
    iget-object v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mSilentModePref:Landroid/preference/TwoStatePreference;

    iget-object v9, p0, Lcom/android/exsettings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 288
    invoke-direct {p0, v3}, Lcom/android/exsettings/notification/SoundSettings;->initRingtones(Landroid/preference/PreferenceCategory;)V

    .line 290
    const-string v8, "all_ring_volume"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mVolume:Landroid/preference/Preference;

    .line 291
    const-string v8, "notification_volume"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 292
    const-string v8, "media_volume"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 293
    const-string v8, "alarm_volume"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 294
    const-string v8, "ring_volume"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 296
    invoke-direct {p0, v7}, Lcom/android/exsettings/notification/SoundSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V

    .line 298
    const-string v8, "manage_notification_access"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 300
    iget-object v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v8, :cond_1

    .line 301
    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->refreshNotificationListeners()V

    .line 305
    :cond_1
    const-string v8, "other_sounds"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 307
    const-string v8, "power_ringtone_enable"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mPowerONOFFRingtone:Landroid/preference/SwitchPreference;

    .line 308
    iget-object v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mPowerONOFFRingtone:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_2

    .line 309
    iget-object v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mPowerONOFFRingtone:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->isPowerRingtoneEnable()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 310
    iget-object v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mPowerONOFFRingtone:Landroid/preference/SwitchPreference;

    new-instance v9, Lcom/android/exsettings/notification/SoundSettings$6;

    invoke-direct {v9, p0}, Lcom/android/exsettings/notification/SoundSettings$6;-><init>(Lcom/android/exsettings/notification/SoundSettings;)V

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 321
    :cond_2
    sget-object v0, Lcom/android/exsettings/notification/SoundSettings;->PREFS:[Lcom/android/exsettings/notification/SettingPref;

    .local v0, "arr$":[Lcom/android/exsettings/notification/SettingPref;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 322
    .local v4, "pref":Lcom/android/exsettings/notification/SettingPref;
    invoke-virtual {v4, p0}, Lcom/android/exsettings/notification/SettingPref;->init(Lcom/android/exsettings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    .end local v4    # "pref":Lcom/android/exsettings/notification/SettingPref;
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 353
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 354
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVolumeCallback:Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->stopSample()V

    .line 355
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mSettingsObserver:Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->register(Z)V

    .line 357
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 361
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mSdcardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 363
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 367
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mSilentModePref:Landroid/preference/TwoStatePreference;

    if-ne p2, v0, :cond_3

    .line 368
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mSilentModePref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenSilentPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 393
    :cond_0
    :goto_0
    return v6

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenSilentPref:Landroid/preference/TwoStatePreference;

    if-ne p2, v0, :cond_5

    .line 378
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenSilentPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 379
    const-string v0, "persist.sys.vibrate"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mSilentModePref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 384
    :cond_4
    const-string v0, "persist.sys.vibrate"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mSilentModePref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 390
    :cond_5
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/notification/SoundSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 329
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 331
    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->refreshNotificationListeners()V

    .line 333
    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->lookupRingtoneNames()V

    .line 335
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 336
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    iget-object v2, p0, Lcom/android/exsettings/notification/SoundSettings;->mSettingsObserver:Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->register(Z)V

    .line 341
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 342
    .local v1, "intentSdcardFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 347
    iget-object v2, p0, Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exsettings/notification/SoundSettings;->mSdcardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 349
    return-void
.end method
