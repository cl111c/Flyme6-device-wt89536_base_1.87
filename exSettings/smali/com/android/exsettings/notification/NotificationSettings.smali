.class public Lcom/android/exsettings/notification/NotificationSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "NotificationSettings.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/NotificationSettings$Receiver;,
        Lcom/android/exsettings/notification/NotificationSettings$H;,
        Lcom/android/exsettings/notification/NotificationSettings$SettingsObserver;,
        Lcom/android/exsettings/notification/NotificationSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field private static final RESTRICTED_KEYS:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/BaseSearchIndexProvider;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/exsettings/notification/NotificationSettings$H;

.field private mLockscreen:Lcom/android/exsettings/DropDownPreference;

.field private mLockscreenSelectedValue:I

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mNotificationPulse:Landroid/preference/TwoStatePreference;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private final mReceiver:Lcom/android/exsettings/notification/NotificationSettings$Receiver;

.field private mRingOrNotificationPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

.field private mRingerMode:I

.field private mSecure:Z

.field private final mSettingsObserver:Lcom/android/exsettings/notification/NotificationSettings$SettingsObserver;

.field private mSim1PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;

.field private mSim2PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;

.field private mSuppressor:Landroid/content/ComponentName;

.field private mUserManager:Landroid/os/UserManager;

.field private mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private mVolume:Landroid/preference/Preference;

.field private final mVolumeCallback:Lcom/android/exsettings/notification/NotificationSettings$VolumePreferenceCallback;

.field private final mVolumePrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/notification/VolumeSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mZenAccess:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 111
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "media_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "alarm_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ring_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "notification_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "manage_zen_access"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "zen_mode"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exsettings/notification/NotificationSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    .line 752
    new-instance v0, Lcom/android/exsettings/notification/NotificationSettings$5;

    invoke-direct {v0}, Lcom/android/exsettings/notification/NotificationSettings$5;-><init>()V

    sput-object v0, Lcom/android/exsettings/notification/NotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 122
    new-instance v0, Lcom/android/exsettings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/notification/NotificationSettings$VolumePreferenceCallback;-><init>(Lcom/android/exsettings/notification/NotificationSettings;Lcom/android/exsettings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/exsettings/notification/NotificationSettings$VolumePreferenceCallback;

    .line 123
    new-instance v0, Lcom/android/exsettings/notification/NotificationSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/notification/NotificationSettings$H;-><init>(Lcom/android/exsettings/notification/NotificationSettings;Lcom/android/exsettings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mHandler:Lcom/android/exsettings/notification/NotificationSettings$H;

    .line 124
    new-instance v0, Lcom/android/exsettings/notification/NotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/NotificationSettings$SettingsObserver;-><init>(Lcom/android/exsettings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/exsettings/notification/NotificationSettings$SettingsObserver;

    .line 125
    new-instance v0, Lcom/android/exsettings/notification/NotificationSettings$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/notification/NotificationSettings$Receiver;-><init>(Lcom/android/exsettings/notification/NotificationSettings;Lcom/android/exsettings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mReceiver:Lcom/android/exsettings/notification/NotificationSettings$Receiver;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mRingerMode:I

    .line 376
    new-instance v0, Lcom/android/exsettings/notification/NotificationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/NotificationSettings$1;-><init>(Lcom/android/exsettings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 723
    return-void
.end method

.method static synthetic access$1000(Lcom/android/exsettings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationSettings;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/exsettings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationSettings;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/exsettings/notification/NotificationSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationSettings;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/exsettings/notification/NotificationSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationSettings;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/exsettings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/exsettings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationSettings;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/exsettings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationSettings;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/exsettings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationSettings;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/exsettings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationSettings;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/exsettings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationSettings;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->updatePulse()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/exsettings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationSettings;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->updateLockscreenNotifications()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/exsettings/notification/NotificationSettings;)Lcom/android/exsettings/notification/NotificationSettings$VolumePreferenceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationSettings;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/exsettings/notification/NotificationSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/exsettings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationSettings;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/exsettings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationSettings;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/exsettings/notification/NotificationSettings;)Lcom/android/exsettings/notification/NotificationSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationSettings;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mHandler:Lcom/android/exsettings/notification/NotificationSettings$H;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationSettings;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/notification/NotificationSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationSettings;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;II)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 88
    invoke-static {p0, p1, p2}, Lcom/android/exsettings/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/exsettings/notification/NotificationSettings;)Lcom/android/exsettings/DefaultRingtonePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationSettings;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mSim1PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/exsettings/notification/NotificationSettings;)Lcom/android/exsettings/DefaultRingtonePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationSettings;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mSim2PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/exsettings/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationSettings;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 613
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 608
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 297
    iget-object v5, p0, Lcom/android/exsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 299
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 300
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 302
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 303
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 312
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "NotificationSettings"

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V
    .locals 7
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    const v6, 0x7f0c0a34

    const v5, 0x7f0c0a33

    const v4, 0x7f0c0a32

    .line 537
    const-string v2, "lock_screen_notifications"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/DropDownPreference;

    iput-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mLockscreen:Lcom/android/exsettings/DropDownPreference;

    .line 538
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mLockscreen:Lcom/android/exsettings/DropDownPreference;

    if-nez v2, :cond_0

    .line 539
    const-string v2, "NotificationSettings"

    const-string v3, "Preference not found: lock_screen_notifications"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :goto_0
    return-void

    .line 543
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->isSecureNotificationsDisabled()Z

    move-result v0

    .line 544
    .local v0, "isSecureNotificationsDisabled":Z
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->isUnredactedNotificationsDisabled()Z

    move-result v1

    .line 545
    .local v1, "isUnredactedNotificationsDisabled":Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 546
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mLockscreen:Lcom/android/exsettings/DropDownPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/exsettings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 549
    :cond_1
    iget-boolean v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mSecure:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 550
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mLockscreen:Lcom/android/exsettings/DropDownPreference;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/exsettings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 553
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mLockscreen:Lcom/android/exsettings/DropDownPreference;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/exsettings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 555
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->updateLockscreenNotifications()V

    .line 556
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mLockscreen:Lcom/android/exsettings/DropDownPreference;

    invoke-virtual {v2}, Lcom/android/exsettings/DropDownPreference;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 557
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mLockscreen:Lcom/android/exsettings/DropDownPreference;

    new-instance v3, Lcom/android/exsettings/notification/NotificationSettings$4;

    invoke-direct {v3, p0}, Lcom/android/exsettings/notification/NotificationSettings$4;-><init>(Lcom/android/exsettings/notification/NotificationSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/exsettings/DropDownPreference;->setCallback(Lcom/android/exsettings/DropDownPreference$Callback;)V

    goto :goto_0

    .line 577
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mLockscreen:Lcom/android/exsettings/DropDownPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/exsettings/DropDownPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initPulse(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 499
    const-string v0, "notification_pulse"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    .line 500
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 501
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: notification_pulse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private initRingtones(Landroid/preference/PreferenceCategory;)V
    .locals 6
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 346
    const-string v3, "ringtone"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 348
    const-string v3, "sim1_ringtone"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/DefaultRingtonePreference;

    iput-object v3, p0, Lcom/android/exsettings/notification/NotificationSettings;->mSim1PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;

    .line 349
    const-string v3, "sim2_ringtone"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/DefaultRingtonePreference;

    iput-object v3, p0, Lcom/android/exsettings/notification/NotificationSettings;->mSim2PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;

    .line 350
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 351
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 352
    .local v1, "numPhones":I
    const-string v3, "NotificationSettings"

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

    .line 353
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 354
    move v2, v0

    .line 355
    .local v2, "subId":I
    if-nez v2, :cond_1

    .line 356
    iget-object v3, p0, Lcom/android/exsettings/notification/NotificationSettings;->mSim1PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;

    invoke-virtual {v3, v2}, Lcom/android/exsettings/DefaultRingtonePreference;->setSubId(I)V

    .line 353
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_1
    if-lez v2, :cond_0

    .line 358
    const-string v3, "NotificationSettings"

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

    .line 359
    iget-object v3, p0, Lcom/android/exsettings/notification/NotificationSettings;->mSim2PhoneRingtonePreference:Lcom/android/exsettings/DefaultRingtonePreference;

    invoke-virtual {v3, v2}, Lcom/android/exsettings/DefaultRingtonePreference;->setSubId(I)V

    goto :goto_1

    .line 364
    .end local v0    # "i":I
    .end local v1    # "numPhones":I
    .end local v2    # "subId":I
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v3, :cond_3

    .line 365
    iget-object v3, p0, Lcom/android/exsettings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 366
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/exsettings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 369
    :cond_3
    const-string v3, "notification_ringtone"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    .line 370
    return-void
.end method

.method private initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 467
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    .line 468
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 469
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-boolean v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 474
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    goto :goto_0

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 478
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->updateVibrateWhenRinging()V

    .line 479
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/exsettings/notification/NotificationSettings$2;

    invoke-direct {v1, p0}, Lcom/android/exsettings/notification/NotificationSettings$2;-><init>(Lcom/android/exsettings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/android/exsettings/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I
    .param p3, "muteIcon"    # I

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/android/exsettings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 256
    .local v0, "volumePref":Lcom/android/exsettings/notification/VolumeSeekBarPreference;
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/exsettings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;)V

    .line 257
    invoke-virtual {v0, p2}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 258
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-virtual {v0, p3}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    .line 260
    return-object v0
.end method

.method private isSecureNotificationsDisabled()Z
    .locals 2

    .prologue
    .line 582
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/notification/NotificationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 584
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUnredactedNotificationsDisabled()Z
    .locals 2

    .prologue
    .line 589
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/notification/NotificationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 591
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 374
    return-void
.end method

.method private refreshNotificationListeners()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 620
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 622
    .local v0, "n":I
    if-nez v0, :cond_1

    .line 623
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0a46

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 631
    .end local v0    # "n":I
    :cond_0
    :goto_0
    return-void

    .line 626
    .restart local v0    # "n":I
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f130009

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshZenAccess()V
    .locals 0

    .prologue
    .line 637
    return-void
.end method

.method private updateEffectsSuppressor()V
    .locals 7

    .prologue
    .line 284
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 285
    .local v0, "suppressor":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    :goto_0
    return-void

    .line 286
    :cond_0
    iput-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    .line 287
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_1

    .line 288
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const v3, 0x1040595

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/notification/NotificationSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "text":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    .line 293
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    goto :goto_0

    .line 288
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    .prologue
    .line 596
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mLockscreen:Lcom/android/exsettings/DropDownPreference;

    if-nez v2, :cond_0

    .line 605
    :goto_0
    return-void

    .line 599
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 600
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mSecure:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 601
    .local v0, "allowPrivate":Z
    :goto_1
    if-nez v1, :cond_3

    const v2, 0x7f0c0a34

    :goto_2
    iput v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    .line 604
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mLockscreen:Lcom/android/exsettings/DropDownPreference;

    iget v3, p0, Lcom/android/exsettings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exsettings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 600
    .end local v0    # "allowPrivate":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 601
    .restart local v0    # "allowPrivate":Z
    :cond_3
    if-eqz v0, :cond_4

    const v2, 0x7f0c0a32

    goto :goto_2

    :cond_4
    const v2, 0x7f0c0a33

    goto :goto_2
.end method

.method private updatePulse()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 523
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v2, :cond_0

    .line 532
    :goto_0
    return-void

    .line 527
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "NotificationSettings"

    const-string v2, "notification_light_pulse not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 527
    .end local v0    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateRingOrNotificationPreference()V
    .locals 3

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const v0, 0x1080309

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->showIcon(I)V

    .line 269
    return-void

    .line 264
    :cond_0
    iget v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mRingerMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->wasRingerModeVibrate()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const v0, 0x108030a

    goto :goto_0

    :cond_2
    const v0, 0x1080308

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 277
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 278
    .local v0, "ringerMode":I
    iget v1, p0, Lcom/android/exsettings/notification/NotificationSettings;->mRingerMode:I

    if-ne v1, v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    iput v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mRingerMode:I

    .line 280
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "subId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 417
    if-nez p0, :cond_1

    .line 418
    const-string v0, "NotificationSettings"

    const-string v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    :goto_0
    return-object v7

    .line 422
    :cond_1
    const/4 v1, 0x0

    .line 423
    .local v1, "ringtoneUri":Landroid/net/Uri;
    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 424
    const-string v0, "NotificationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ringtoneUri getActualRingtoneUriBySubId subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 430
    :goto_1
    const v0, 0x10403a7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 432
    .local v7, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    .line 433
    const-string v0, "NotificationSettings"

    const-string v2, "ringtoneUri == null, silent ringtone"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const v0, 0x10403a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 427
    .end local v7    # "summary":Ljava/lang/CharSequence;
    :cond_2
    const-string v0, "NotificationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ringtoneUri getActualDefaultRingtoneUri type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 436
    .restart local v7    # "summary":Ljava/lang/CharSequence;
    :cond_3
    const/4 v6, 0x0

    .line 438
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 440
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 446
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 447
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 448
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 456
    :cond_5
    if-eqz v6, :cond_0

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 442
    :cond_6
    :try_start_1
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 443
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_2

    .line 451
    :catch_0
    move-exception v0

    .line 456
    if-eqz v6, :cond_0

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 453
    :catch_1
    move-exception v0

    .line 456
    if-eqz v6, :cond_0

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 456
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 491
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 494
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

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

.method private wasRingerModeVibrate()Z
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mRingerMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 159
    const/16 v0, 0x47

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x1080309

    .line 164
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    .line 166
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 167
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mUserManager:Landroid/os/UserManager;

    .line 168
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/exsettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVoiceCapable:Z

    .line 169
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mSecure:Z

    .line 171
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 172
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    .line 173
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    .line 177
    :cond_0
    const v2, 0x7f080037

    invoke-virtual {p0, v2}, Lcom/android/exsettings/notification/NotificationSettings;->addPreferencesFromResource(I)V

    .line 179
    const-string v2, "sound"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 180
    .local v1, "sound":Landroid/preference/PreferenceCategory;
    const-string v2, "media_volume"

    const/4 v3, 0x3

    const v4, 0x1080303

    invoke-direct {p0, v2, v3, v4}, Lcom/android/exsettings/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 182
    const-string v2, "alarm_volume"

    const/4 v3, 0x4

    const v4, 0x1080301

    invoke-direct {p0, v2, v3, v4}, Lcom/android/exsettings/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 184
    iget-boolean v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVoiceCapable:Z

    if-eqz v2, :cond_1

    .line 185
    const-string v2, "ring_volume"

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, v5}, Lcom/android/exsettings/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 188
    const-string v2, "notification_volume"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 195
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/exsettings/notification/NotificationSettings;->initRingtones(Landroid/preference/PreferenceCategory;)V

    .line 196
    invoke-direct {p0, v1}, Lcom/android/exsettings/notification/NotificationSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V

    .line 199
    const-string v2, "all_ring_volume"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVolume:Landroid/preference/Preference;

    .line 202
    const-string v2, "media_volume"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    const-string v2, "alarm_volume"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 204
    const-string v2, "ring_volume"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    const-string v2, "wifi_display"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 211
    .local v0, "notification":Landroid/preference/PreferenceCategory;
    invoke-direct {p0, v0}, Lcom/android/exsettings/notification/NotificationSettings;->initPulse(Landroid/preference/PreferenceCategory;)V

    .line 212
    invoke-direct {p0, v0}, Lcom/android/exsettings/notification/NotificationSettings;->initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V

    .line 214
    const-string v2, "manage_notification_access"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 215
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->refreshNotificationListeners()V

    .line 216
    const-string v2, "manage_zen_access"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mZenAccess:Landroid/preference/Preference;

    .line 217
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->refreshZenAccess()V

    .line 218
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->updateRingerMode()V

    .line 219
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->updateEffectsSuppressor()V

    .line 220
    return-void

    .line 190
    .end local v0    # "notification":Landroid/preference/PreferenceCategory;
    :cond_1
    const-string v2, "notification_volume"

    const/4 v3, 0x5

    invoke-direct {p0, v2, v3, v5}, Lcom/android/exsettings/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 193
    const-string v2, "ring_volume"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 246
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 247
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/exsettings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/exsettings/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    .line 248
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/exsettings/notification/NotificationSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationSettings;->mReceiver:Lcom/android/exsettings/notification/NotificationSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/NotificationSettings$Receiver;->register(Z)V

    .line 250
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 224
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 225
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->refreshNotificationListeners()V

    .line 226
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->refreshZenAccess()V

    .line 227
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->lookupRingtoneNames()V

    .line 228
    iget-object v7, p0, Lcom/android/exsettings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/exsettings/notification/NotificationSettings$SettingsObserver;

    invoke-virtual {v7, v8}, Lcom/android/exsettings/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 229
    iget-object v7, p0, Lcom/android/exsettings/notification/NotificationSettings;->mReceiver:Lcom/android/exsettings/notification/NotificationSettings$Receiver;

    invoke-virtual {v7, v8}, Lcom/android/exsettings/notification/NotificationSettings$Receiver;->register(Z)V

    .line 230
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    .line 231
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationSettings;->updateEffectsSuppressor()V

    .line 232
    iget-object v7, p0, Lcom/android/exsettings/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 233
    .local v6, "volumePref":Lcom/android/exsettings/notification/VolumeSeekBarPreference;
    invoke-virtual {v6}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->onActivityResume()V

    goto :goto_0

    .line 235
    .end local v6    # "volumePref":Lcom/android/exsettings/notification/VolumeSeekBarPreference;
    :cond_0
    iget-object v7, p0, Lcom/android/exsettings/notification/NotificationSettings;->mUserManager:Landroid/os/UserManager;

    const-string v9, "no_adjust_volume"

    invoke-virtual {v7, v9}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    .line 236
    .local v2, "isRestricted":Z
    sget-object v0, Lcom/android/exsettings/notification/NotificationSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v3, v0, v1

    .line 237
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/exsettings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 238
    .local v5, "pref":Landroid/preference/Preference;
    if-eqz v5, :cond_1

    .line 239
    if-nez v2, :cond_2

    move v7, v8

    :goto_2
    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 236
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 242
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "pref":Landroid/preference/Preference;
    :cond_3
    return-void
.end method
