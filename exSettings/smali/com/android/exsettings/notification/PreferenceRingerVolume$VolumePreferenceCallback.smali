.class final Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "PreferenceRingerVolume.java"

# interfaces
.implements Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/PreferenceRingerVolume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Landroid/preference/SeekBarVolumizer;

.field final synthetic this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/notification/PreferenceRingerVolume;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;->this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/notification/PreferenceRingerVolume;Lcom/android/exsettings/notification/PreferenceRingerVolume$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettings/notification/PreferenceRingerVolume;
    .param p2, "x1"    # Lcom/android/exsettings/notification/PreferenceRingerVolume$1;

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;-><init>(Lcom/android/exsettings/notification/PreferenceRingerVolume;)V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 4
    .param p1, "sbv"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    const/4 v1, 0x3

    .line 267
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eq v0, p1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 270
    :cond_0
    iput-object p1, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    .line 271
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;->this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;

    # getter for: Lcom/android/exsettings/notification/PreferenceRingerVolume;->mHandler:Lcom/android/exsettings/notification/PreferenceRingerVolume$H;
    invoke-static {v0}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->access$300(Lcom/android/exsettings/notification/PreferenceRingerVolume;)Lcom/android/exsettings/notification/PreferenceRingerVolume$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/PreferenceRingerVolume$H;->removeMessages(I)V

    .line 273
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;->this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;

    # getter for: Lcom/android/exsettings/notification/PreferenceRingerVolume;->mHandler:Lcom/android/exsettings/notification/PreferenceRingerVolume$H;
    invoke-static {v0}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->access$300(Lcom/android/exsettings/notification/PreferenceRingerVolume;)Lcom/android/exsettings/notification/PreferenceRingerVolume$H;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exsettings/notification/PreferenceRingerVolume$H;->sendEmptyMessageDelayed(IJ)Z

    .line 275
    :cond_1
    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 4
    .param p1, "stream"    # I
    .param p2, "progress"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x5

    .line 279
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;->this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;

    # getter for: Lcom/android/exsettings/notification/PreferenceRingerVolume;->mHandler:Lcom/android/exsettings/notification/PreferenceRingerVolume$H;
    invoke-static {v0}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->access$300(Lcom/android/exsettings/notification/PreferenceRingerVolume;)Lcom/android/exsettings/notification/PreferenceRingerVolume$H;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/exsettings/notification/PreferenceRingerVolume$H;->removeMessages(I)V

    .line 281
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;->this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;

    # getter for: Lcom/android/exsettings/notification/PreferenceRingerVolume;->mHandler:Lcom/android/exsettings/notification/PreferenceRingerVolume$H;
    invoke-static {v0}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->access$300(Lcom/android/exsettings/notification/PreferenceRingerVolume;)Lcom/android/exsettings/notification/PreferenceRingerVolume$H;

    move-result-object v0

    invoke-virtual {v0, v3, p2, v2}, Lcom/android/exsettings/notification/PreferenceRingerVolume$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    if-ne p1, v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;->this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;

    # getter for: Lcom/android/exsettings/notification/PreferenceRingerVolume;->mHandler:Lcom/android/exsettings/notification/PreferenceRingerVolume$H;
    invoke-static {v0}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->access$300(Lcom/android/exsettings/notification/PreferenceRingerVolume;)Lcom/android/exsettings/notification/PreferenceRingerVolume$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/PreferenceRingerVolume$H;->removeMessages(I)V

    .line 285
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;->this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;

    # getter for: Lcom/android/exsettings/notification/PreferenceRingerVolume;->mHandler:Lcom/android/exsettings/notification/PreferenceRingerVolume$H;
    invoke-static {v0}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->access$300(Lcom/android/exsettings/notification/PreferenceRingerVolume;)Lcom/android/exsettings/notification/PreferenceRingerVolume$H;

    move-result-object v0

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/exsettings/notification/PreferenceRingerVolume$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 294
    :cond_0
    return-void
.end method
