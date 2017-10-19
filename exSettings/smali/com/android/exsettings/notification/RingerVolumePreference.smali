.class public Lcom/android/exsettings/notification/RingerVolumePreference;
.super Landroid/preference/VolumePreference;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;,
        Lcom/android/exsettings/notification/RingerVolumePreference$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKBOX_VIEW_ID:[I

.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_SECTION_ID:[I

.field private static final SEEKBAR_TYPE:[I

.field private static final SEEKBAR_UNMUTED_RES_ID:[I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckBoxes:[Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekBarVolumizer:[Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

.field private mSeekBars:[Landroid/widget/SeekBar;

.field private ringMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 81
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/exsettings/notification/RingerVolumePreference;->SEEKBAR_ID:[I

    .line 86
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/exsettings/notification/RingerVolumePreference;->SEEKBAR_TYPE:[I

    .line 91
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/exsettings/notification/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    .line 96
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/exsettings/notification/RingerVolumePreference;->SEEKBAR_SECTION_ID:[I

    .line 101
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/exsettings/notification/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    .line 81
    nop

    :array_0
    .array-data 4
        0x7f12016b
        0x7f120161
        0x7f120168
    .end array-data

    .line 86
    :array_1
    .array-data 4
        0x3
        0x2
        0x4
    .end array-data

    .line 91
    :array_2
    .array-data 4
        0x7f12016a
        0x7f120160
        0x7f120167
    .end array-data

    .line 96
    :array_3
    .array-data 4
        0x7f120169
        0x7f12015e
        0x7f120166
    .end array-data

    .line 101
    :array_4
    .array-data 4
        0x7f0200ea
        0x7f0200e9
        0x7f0200e7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->ringMode:I

    .line 108
    sget-object v0, Lcom/android/exsettings/notification/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    .line 109
    sget-object v0, Lcom/android/exsettings/notification/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    .line 112
    new-instance v0, Lcom/android/exsettings/notification/RingerVolumePreference$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/RingerVolumePreference$1;-><init>(Lcom/android/exsettings/notification/RingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    .line 122
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/RingerVolumePreference;->setStreamType(I)V

    .line 124
    const v0, 0x7f0400ab

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/RingerVolumePreference;->setDialogLayoutResource(I)V

    .line 127
    sget-object v0, Lcom/android/exsettings/notification/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    iput-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    .line 128
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 129
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->ringMode:I

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/notification/RingerVolumePreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/notification/RingerVolumePreference;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/exsettings/notification/RingerVolumePreference;->updateSlidersAndMutedStates()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/exsettings/notification/RingerVolumePreference;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/RingerVolumePreference;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/exsettings/notification/RingerVolumePreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/RingerVolumePreference;

    .prologue
    .line 72
    iget v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->ringMode:I

    return v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/exsettings/notification/RingerVolumePreference;->SEEKBAR_ID:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/notification/RingerVolumePreference;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/RingerVolumePreference;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 259
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/exsettings/notification/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 260
    iget-object v2, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/android/exsettings/notification/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 262
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 266
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->stop()V

    .line 267
    iget-object v2, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    aput-object v4, v2, v1

    .line 259
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    .line 271
    invoke-virtual {p0}, Lcom/android/exsettings/notification/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 272
    iput-object v4, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 274
    :cond_3
    return-void
.end method

.method private getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private updateSlidersAndMutedStates()V
    .locals 5

    .prologue
    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/android/exsettings/notification/RingerVolumePreference;->SEEKBAR_TYPE:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 143
    sget-object v3, Lcom/android/exsettings/notification/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v1, v3, v0

    .line 146
    .local v1, "streamType":I
    iget-object v3, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    sget-object v4, Lcom/android/exsettings/notification/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    .line 150
    iget-object v3, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 151
    .local v2, "volume":I
    iget-object v3, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 152
    iget-object v3, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 142
    .end local v2    # "volume":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "streamType":I
    :cond_2
    return-void
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    .prologue
    .line 134
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/RingerVolumePreference;->setPositiveButtonText(I)V

    .line 135
    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/RingerVolumePreference;->setNegativeButtonText(I)V

    .line 137
    return-void
.end method

.method public onActivityStop()V
    .locals 4

    .prologue
    .line 233
    invoke-super {p0}, Landroid/preference/VolumePreference;->onActivityStop()V

    .line 234
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    .local v0, "arr$":[Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 235
    .local v3, "vol":Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 234
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v3    # "vol":Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    .line 160
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    sget-object v0, Lcom/android/exsettings/notification/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    if-ge v9, v0, :cond_1

    .line 161
    sget-object v0, Lcom/android/exsettings/notification/RingerVolumePreference;->SEEKBAR_ID:[I

    aget v0, v0, v9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 162
    .local v3, "seekBar":Landroid/widget/SeekBar;
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aput-object v3, v0, v9

    .line 163
    sget-object v0, Lcom/android/exsettings/notification/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v0, v0, v9

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v11, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    new-instance v0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v1, Lcom/android/exsettings/notification/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v4, v1, v9

    invoke-virtual {p0}, Lcom/android/exsettings/notification/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/exsettings/notification/RingerVolumePreference;->getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;-><init>(Lcom/android/exsettings/notification/RingerVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v0, v11, v9

    .line 160
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    new-instance v1, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/android/exsettings/notification/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v4, v4, v9

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;-><init>(Lcom/android/exsettings/notification/RingerVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v1, v0, v9

    goto :goto_1

    .line 173
    .end local v3    # "seekBar":Landroid/widget/SeekBar;
    :cond_1
    const/4 v9, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    array-length v0, v0

    if-ge v9, v0, :cond_2

    .line 174
    sget-object v0, Lcom/android/exsettings/notification/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    aget v0, v0, v9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 175
    .local v6, "checkbox":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aput-object v6, v0, v9

    .line 173
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 179
    .end local v6    # "checkbox":Landroid/widget/ImageView;
    :cond_2
    invoke-direct {p0}, Lcom/android/exsettings/notification/RingerVolumePreference;->updateSlidersAndMutedStates()V

    .line 182
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3

    .line 183
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 184
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    new-instance v0, Lcom/android/exsettings/notification/RingerVolumePreference$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/RingerVolumePreference$2;-><init>(Lcom/android/exsettings/notification/RingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    invoke-virtual {p0}, Lcom/android/exsettings/notification/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    .end local v7    # "filter":Landroid/content/IntentFilter;
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/notification/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 202
    const v10, 0x7f12015e

    .line 206
    .local v10, "id":I
    :goto_3
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 210
    .local v8, "hideSection":Landroid/view/View;
    return-void

    .line 204
    .end local v8    # "hideSection":Landroid/view/View;
    .end local v10    # "id":I
    :cond_4
    const v10, 0x7f120162

    .restart local v10    # "id":I
    goto :goto_3
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onDialogClosed(Z)V

    .line 221
    if-nez p1, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    .local v0, "arr$":[Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 223
    .local v3, "vol":Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    .line 224
    invoke-virtual {v3}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 222
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "arr$":[Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "vol":Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/notification/RingerVolumePreference;->cleanup()V

    .line 229
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 242
    .local v0, "isdown":Z
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 248
    :sswitch_0
    return v1

    .end local v0    # "isdown":Z
    :cond_0
    move v0, v1

    .line 241
    goto :goto_0

    .line 242
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 297
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/android/exsettings/notification/RingerVolumePreference$SavedState;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 299
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 312
    :cond_1
    return-void

    :cond_2
    move-object v1, p1

    .line 303
    check-cast v1, Lcom/android/exsettings/notification/RingerVolumePreference$SavedState;

    .line 304
    .local v1, "myState":Lcom/android/exsettings/notification/RingerVolumePreference$SavedState;
    invoke-virtual {v1}, Lcom/android/exsettings/notification/RingerVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 305
    sget-object v4, Lcom/android/exsettings/notification/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v4, v4

    invoke-virtual {v1, v4}, Lcom/android/exsettings/notification/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v3

    .line 306
    .local v3, "volumeStore":[Landroid/preference/VolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/android/exsettings/notification/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 307
    iget-object v4, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    aget-object v2, v4, v0

    .line 308
    .local v2, "vol":Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;
    if-eqz v2, :cond_3

    .line 309
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 306
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSampleStarting(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)V
    .locals 4
    .param p1, "volumizer"    # Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    .local v0, "arr$":[Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 254
    .local v3, "vol":Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 253
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v3    # "vol":Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 278
    invoke-super {p0}, Landroid/preference/VolumePreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 279
    .local v2, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/exsettings/notification/RingerVolumePreference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 292
    .end local v2    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v2

    .line 284
    .restart local v2    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v1, Lcom/android/exsettings/notification/RingerVolumePreference$SavedState;

    invoke-direct {v1, v2}, Lcom/android/exsettings/notification/RingerVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 285
    .local v1, "myState":Lcom/android/exsettings/notification/RingerVolumePreference$SavedState;
    sget-object v5, Lcom/android/exsettings/notification/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/android/exsettings/notification/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v4

    .line 286
    .local v4, "volumeStore":[Landroid/preference/VolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v5, Lcom/android/exsettings/notification/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 287
    iget-object v5, p0, Lcom/android/exsettings/notification/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    aget-object v3, v5, v0

    .line 288
    .local v3, "vol":Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_1

    .line 289
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 286
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3    # "vol":Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;
    :cond_2
    move-object v2, v1

    .line 292
    goto :goto_0
.end method
