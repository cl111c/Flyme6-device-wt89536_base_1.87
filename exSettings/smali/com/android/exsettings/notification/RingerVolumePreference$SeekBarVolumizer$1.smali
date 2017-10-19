.class Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$1;
.super Landroid/database/ContentObserver;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 385
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 386
    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->access$400(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    iget-object v1, v1, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/android/exsettings/notification/RingerVolumePreference;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/exsettings/notification/RingerVolumePreference;->access$500(Lcom/android/exsettings/notification/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    iget-object v1, v1, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/android/exsettings/notification/RingerVolumePreference;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/exsettings/notification/RingerVolumePreference;->access$500(Lcom/android/exsettings/notification/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->access$600(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 388
    .local v0, "volume":I
    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->access$400(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 390
    .end local v0    # "volume":I
    :cond_0
    return-void
.end method
