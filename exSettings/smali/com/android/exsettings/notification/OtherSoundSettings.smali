.class public Lcom/android/exsettings/notification/OtherSoundSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "OtherSoundSettings.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final PREFS:[Lcom/android/exsettings/notification/SettingPref;

.field private static final PREF_CHARGING_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

.field private static final PREF_DIAL_PAD_TONES:Lcom/android/exsettings/notification/SettingPref;

.field private static final PREF_DOCKING_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

.field private static final PREF_DOCK_AUDIO_MEDIA:Lcom/android/exsettings/notification/SettingPref;

.field private static final PREF_EMERGENCY_TONE:Lcom/android/exsettings/notification/SettingPref;

.field private static final PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

.field private static final PREF_TOUCH_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

.field private static final PREF_VIBRATE_ON_TOUCH:Lcom/android/exsettings/notification/SettingPref;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/BaseSearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mSettingsObserver:Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 70
    new-instance v0, Lcom/android/exsettings/notification/OtherSoundSettings$1;

    const-string v2, "dial_pad_tones"

    const-string v3, "dtmf_tone"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/notification/OtherSoundSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/exsettings/notification/SettingPref;

    .line 78
    new-instance v0, Lcom/android/exsettings/notification/SettingPref;

    const-string v2, "screen_locking_sounds"

    const-string v3, "lockscreen_sounds_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    .line 81
    new-instance v3, Lcom/android/exsettings/notification/OtherSoundSettings$2;

    const-string v5, "charging_sounds"

    const-string v6, "charging_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/android/exsettings/notification/OtherSoundSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_CHARGING_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    .line 91
    new-instance v3, Lcom/android/exsettings/notification/OtherSoundSettings$3;

    const-string v5, "docking_sounds"

    const-string v6, "dock_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/android/exsettings/notification/OtherSoundSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    .line 99
    new-instance v0, Lcom/android/exsettings/notification/OtherSoundSettings$4;

    const-string v2, "touch_sounds"

    const-string v3, "sound_effects_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/notification/OtherSoundSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    .line 113
    new-instance v0, Lcom/android/exsettings/notification/OtherSoundSettings$5;

    const-string v2, "vibrate_on_touch"

    const-string v3, "haptic_feedback_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/notification/OtherSoundSettings$5;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/exsettings/notification/SettingPref;

    .line 121
    new-instance v3, Lcom/android/exsettings/notification/OtherSoundSettings$6;

    const-string v5, "dock_audio_media"

    const-string v6, "dock_audio_media_enabled"

    new-array v8, v1, [I

    fill-array-data v8, :array_0

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/exsettings/notification/OtherSoundSettings$6;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/exsettings/notification/SettingPref;

    .line 142
    new-instance v3, Lcom/android/exsettings/notification/OtherSoundSettings$7;

    const-string v5, "emergency_tone"

    const-string v6, "emergency_tone"

    new-array v8, v10, [I

    fill-array-data v8, :array_1

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/exsettings/notification/OtherSoundSettings$7;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/exsettings/notification/SettingPref;

    .line 166
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/exsettings/notification/SettingPref;

    sget-object v2, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/exsettings/notification/SettingPref;

    aput-object v2, v0, v9

    sget-object v2, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    aput-object v2, v0, v4

    sget-object v2, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_CHARGING_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    aput-object v1, v0, v10

    const/4 v1, 0x4

    sget-object v2, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/exsettings/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/exsettings/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/exsettings/notification/SettingPref;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exsettings/notification/OtherSoundSettings;->PREFS:[Lcom/android/exsettings/notification/SettingPref;

    .line 257
    new-instance v0, Lcom/android/exsettings/notification/OtherSoundSettings$8;

    invoke-direct {v0}, Lcom/android/exsettings/notification/OtherSoundSettings$8;-><init>()V

    sput-object v0, Lcom/android/exsettings/notification/OtherSoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/BaseSearchIndexProvider;

    return-void

    .line 121
    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 142
    :array_1
    .array-data 4
        0x1
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 177
    new-instance v0, Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;-><init>(Lcom/android/exsettings/notification/OtherSoundSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;

    .line 227
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/exsettings/notification/OtherSoundSettings;->hasDockSettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/exsettings/notification/OtherSoundSettings;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/notification/OtherSoundSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/OtherSoundSettings;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/exsettings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()[Lcom/android/exsettings/notification/SettingPref;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/exsettings/notification/OtherSoundSettings;->PREFS:[Lcom/android/exsettings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/notification/OtherSoundSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/OtherSoundSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/exsettings/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static hasDockSettings(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static hasHaptic(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 222
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


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 188
    const v0, 0x7f0c0980

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 183
    const/16 v0, 0x49

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 195
    const v4, 0x7f080039

    invoke-virtual {p0, v4}, Lcom/android/exsettings/notification/OtherSoundSettings;->addPreferencesFromResource(I)V

    .line 197
    invoke-virtual {p0}, Lcom/android/exsettings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    .line 199
    sget-object v0, Lcom/android/exsettings/notification/OtherSoundSettings;->PREFS:[Lcom/android/exsettings/notification/SettingPref;

    .local v0, "arr$":[Lcom/android/exsettings/notification/SettingPref;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 200
    .local v3, "pref":Lcom/android/exsettings/notification/SettingPref;
    invoke-virtual {v3, p0}, Lcom/android/exsettings/notification/SettingPref;->init(Lcom/android/exsettings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v3    # "pref":Lcom/android/exsettings/notification/SettingPref;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 213
    iget-object v0, p0, Lcom/android/exsettings/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;->register(Z)V

    .line 214
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 207
    iget-object v0, p0, Lcom/android/exsettings/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;->register(Z)V

    .line 208
    return-void
.end method
