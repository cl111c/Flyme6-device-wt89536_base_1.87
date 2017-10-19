.class Lcom/android/exsettings/notification/VolumeSeekBarPreference$1;
.super Ljava/lang/Object;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/SeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/notification/VolumeSeekBarPreference;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/VolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/VolumeSeekBarPreference;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuted(ZZ)V
    .locals 1
    .param p1, "muted"    # Z
    .param p2, "zenMuted"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mMuted:Z
    invoke-static {v0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->access$200(Lcom/android/exsettings/notification/VolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mZenMuted:Z
    invoke-static {v0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->access$300(Lcom/android/exsettings/notification/VolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    # setter for: Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mMuted:Z
    invoke-static {v0, p1}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->access$202(Lcom/android/exsettings/notification/VolumeSeekBarPreference;Z)Z

    .line 135
    iget-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    # setter for: Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mZenMuted:Z
    invoke-static {v0, p2}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->access$302(Lcom/android/exsettings/notification/VolumeSeekBarPreference;Z)Z

    .line 136
    iget-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    # invokes: Lcom/android/exsettings/notification/VolumeSeekBarPreference;->updateIconView()V
    invoke-static {v0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->access$400(Lcom/android/exsettings/notification/VolumeSeekBarPreference;)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->access$000(Lcom/android/exsettings/notification/VolumeSeekBarPreference;)Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->access$000(Lcom/android/exsettings/notification/VolumeSeekBarPreference;)Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mStream:I
    invoke-static {v1}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->access$100(Lcom/android/exsettings/notification/VolumeSeekBarPreference;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 130
    :cond_0
    return-void
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 1
    .param p1, "sbv"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->access$000(Lcom/android/exsettings/notification/VolumeSeekBarPreference;)Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->access$000(Lcom/android/exsettings/notification/VolumeSeekBarPreference;)Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    .line 124
    :cond_0
    return-void
.end method
