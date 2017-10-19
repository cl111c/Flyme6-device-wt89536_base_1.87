.class public Lcom/android/exsettings/notification/PreferenceRingerVolume;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "PreferenceRingerVolume.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/PreferenceRingerVolume$H;,
        Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field private static final RESTRICTED_KEYS:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/BaseSearchIndexProvider;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/exsettings/notification/PreferenceRingerVolume$H;

.field private mNotificationPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mOriginalStreamVolume:I

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

.field private mRingerMode:I

.field private mSecure:Z

.field private mUserManager:Landroid/os/UserManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;

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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x4

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

    sput-object v0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->RESTRICTED_KEYS:[Ljava/lang/String;

    .line 333
    new-instance v0, Lcom/android/exsettings/notification/PreferenceRingerVolume$2;

    invoke-direct {v0}, Lcom/android/exsettings/notification/PreferenceRingerVolume$2;-><init>()V

    sput-object v0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 95
    new-instance v0, Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;-><init>(Lcom/android/exsettings/notification/PreferenceRingerVolume;Lcom/android/exsettings/notification/PreferenceRingerVolume$1;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mVolumeCallback:Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;

    .line 96
    new-instance v0, Lcom/android/exsettings/notification/PreferenceRingerVolume$H;

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/notification/PreferenceRingerVolume$H;-><init>(Lcom/android/exsettings/notification/PreferenceRingerVolume;Lcom/android/exsettings/notification/PreferenceRingerVolume$1;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mHandler:Lcom/android/exsettings/notification/PreferenceRingerVolume$H;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mVolumePrefs:Ljava/util/ArrayList;

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mRingerMode:I

    .line 123
    new-instance v0, Lcom/android/exsettings/notification/PreferenceRingerVolume$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/PreferenceRingerVolume$1;-><init>(Lcom/android/exsettings/notification/PreferenceRingerVolume;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 296
    return-void
.end method

.method static synthetic access$200(Lcom/android/exsettings/notification/PreferenceRingerVolume;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/PreferenceRingerVolume;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/notification/PreferenceRingerVolume;)Lcom/android/exsettings/notification/PreferenceRingerVolume$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/PreferenceRingerVolume;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mHandler:Lcom/android/exsettings/notification/PreferenceRingerVolume$H;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/notification/PreferenceRingerVolume;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/PreferenceRingerVolume;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/notification/PreferenceRingerVolume;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/PreferenceRingerVolume;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/exsettings/notification/PreferenceRingerVolume;)Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/PreferenceRingerVolume;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mVolumeCallback:Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/exsettings/notification/PreferenceRingerVolume;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/notification/PreferenceRingerVolume;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->updateRingOrNotificationIcon(II)V

    return-void
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/android/exsettings/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I
    .param p3, "muteIcon"    # I

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 205
    .local v0, "volumePref":Lcom/android/exsettings/notification/VolumeSeekBarPreference;
    iget-object v1, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mVolumeCallback:Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;)V

    .line 206
    invoke-virtual {v0, p2}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 207
    iget-object v1, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v0, p3}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    .line 209
    return-object v0
.end method

.method private initVolumePreference2(Ljava/lang/String;I)Lcom/android/exsettings/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 214
    .local v0, "volumePref":Lcom/android/exsettings/notification/VolumeSeekBarPreference;
    iget-object v1, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mVolumeCallback:Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;)V

    .line 215
    invoke-virtual {v0, p2}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 216
    return-object v0
.end method

.method private updateRingOrNotificationIcon(II)V
    .locals 6
    .param p1, "progress"    # I
    .param p2, "what"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x5

    .line 221
    const/4 v2, 0x4

    if-ne v2, p2, :cond_2

    .line 222
    iget-object v2, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    .line 223
    .local v0, "muted":Z
    iget-object v2, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mRingPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    const v3, 0x7f020189

    invoke-virtual {v2, v3}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->showIcon(I)V

    .line 225
    if-eqz v0, :cond_1

    .line 226
    iget-object v2, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mRingPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setSeekBarProgress(I)V

    .line 231
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mNotificationPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mOriginalStreamVolume:I

    .line 233
    iget v2, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mOriginalStreamVolume:I

    invoke-direct {p0, v2, v4}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->updateRingOrNotificationIcon(II)V

    .line 234
    iget-object v2, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mNotificationPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    iget v3, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mOriginalStreamVolume:I

    invoke-virtual {v2, v3}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setSeekBarProgress(I)V

    .line 241
    .end local v0    # "muted":Z
    :cond_0
    :goto_1
    return-void

    .line 228
    .restart local v0    # "muted":Z
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 229
    .local v1, "ring_volume_index":I
    iget-object v2, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mRingPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setSeekBarProgress(I)V

    goto :goto_0

    .line 236
    .end local v0    # "muted":Z
    .end local v1    # "ring_volume_index":I
    :cond_2
    if-ne v4, p2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    .line 238
    .restart local v0    # "muted":Z
    iget-object v2, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mNotificationPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    const v3, 0x7f020188

    invoke-virtual {v2, v3}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->showIcon(I)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 142
    const/16 v0, 0x47

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mContext:Landroid/content/Context;

    .line 149
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mPM:Landroid/content/pm/PackageManager;

    .line 150
    invoke-virtual {p0}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mUserManager:Landroid/os/UserManager;

    .line 151
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/exsettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mVoiceCapable:Z

    .line 152
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mSecure:Z

    .line 154
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mAudioManager:Landroid/media/AudioManager;

    .line 155
    invoke-virtual {p0}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mVibrator:Landroid/os/Vibrator;

    .line 156
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mVibrator:Landroid/os/Vibrator;

    .line 160
    :cond_0
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->addPreferencesFromResource(I)V

    .line 162
    const-string v0, "media_volume"

    const/4 v1, 0x3

    const v2, 0x1080303

    invoke-direct {p0, v0, v1, v2}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->initVolumePreference(Ljava/lang/String;II)Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 164
    const-string v0, "alarm_volume"

    const/4 v1, 0x4

    const v2, 0x1080301

    invoke-direct {p0, v0, v1, v2}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->initVolumePreference(Ljava/lang/String;II)Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 168
    const-string v0, "ring_volume"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->initVolumePreference2(Ljava/lang/String;I)Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mRingPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 170
    const-string v0, "notification_volume"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->initVolumePreference2(Ljava/lang/String;I)Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mNotificationPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 172
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mAudioManager:Landroid/media/AudioManager;

    .line 174
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 197
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mVolumeCallback:Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;->stopSample()V

    .line 198
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    .line 178
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 179
    new-instance v1, Landroid/content/IntentFilter;

    const-string v8, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v8, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    iget-object v8, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 183
    .local v7, "volumePref":Lcom/android/exsettings/notification/VolumeSeekBarPreference;
    invoke-virtual {v7}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->onActivityResume()V

    goto :goto_0

    .line 185
    .end local v7    # "volumePref":Lcom/android/exsettings/notification/VolumeSeekBarPreference;
    :cond_0
    iget-object v8, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->mUserManager:Landroid/os/UserManager;

    const-string v9, "no_adjust_volume"

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    .line 186
    .local v3, "isRestricted":Z
    sget-object v0, Lcom/android/exsettings/notification/PreferenceRingerVolume;->RESTRICTED_KEYS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v4, v0, v2

    .line 187
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 188
    .local v6, "pref":Landroid/preference/Preference;
    if-eqz v6, :cond_1

    .line 189
    if-nez v3, :cond_2

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 186
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 189
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 192
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "pref":Landroid/preference/Preference;
    :cond_3
    return-void
.end method
