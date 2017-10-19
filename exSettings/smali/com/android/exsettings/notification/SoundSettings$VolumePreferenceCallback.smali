.class final Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Landroid/preference/SeekBarVolumizer;

.field final synthetic this$0:Lcom/android/exsettings/notification/SoundSettings;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/notification/SoundSettings;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/notification/SoundSettings;Lcom/android/exsettings/notification/SoundSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettings/notification/SoundSettings;
    .param p2, "x1"    # Lcom/android/exsettings/notification/SoundSettings$1;

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/android/exsettings/notification/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 4
    .param p1, "sbv"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    const/4 v1, 0x3

    .line 455
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eq v0, p1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 458
    :cond_0
    iput-object p1, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    .line 459
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mHandler:Lcom/android/exsettings/notification/SoundSettings$H;
    invoke-static {v0}, Lcom/android/exsettings/notification/SoundSettings;->access$500(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/SoundSettings$H;->removeMessages(I)V

    .line 461
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mHandler:Lcom/android/exsettings/notification/SoundSettings$H;
    invoke-static {v0}, Lcom/android/exsettings/notification/SoundSettings;->access$500(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$H;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exsettings/notification/SoundSettings$H;->sendEmptyMessageDelayed(IJ)Z

    .line 463
    :cond_1
    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 6
    .param p1, "stream"    # I
    .param p2, "progress"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 467
    const-string v0, "SoundSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStreamValueChanged stream ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", propress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/TctLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mHandler:Lcom/android/exsettings/notification/SoundSettings$H;
    invoke-static {v0}, Lcom/android/exsettings/notification/SoundSettings;->access$500(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$H;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/exsettings/notification/SoundSettings$H;->removeMessages(I)V

    .line 470
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mHandler:Lcom/android/exsettings/notification/SoundSettings$H;
    invoke-static {v0}, Lcom/android/exsettings/notification/SoundSettings;->access$500(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$H;

    move-result-object v0

    invoke-virtual {v0, v5, p2, v4}, Lcom/android/exsettings/notification/SoundSettings$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    if-ne p1, v3, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mHandler:Lcom/android/exsettings/notification/SoundSettings$H;
    invoke-static {v0}, Lcom/android/exsettings/notification/SoundSettings;->access$500(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$H;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/exsettings/notification/SoundSettings$H;->removeMessages(I)V

    .line 474
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    # getter for: Lcom/android/exsettings/notification/SoundSettings;->mHandler:Lcom/android/exsettings/notification/SoundSettings$H;
    invoke-static {v0}, Lcom/android/exsettings/notification/SoundSettings;->access$500(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$H;

    move-result-object v0

    invoke-virtual {v0, v3, p2, v4}, Lcom/android/exsettings/notification/SoundSettings$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 483
    :cond_0
    return-void
.end method
