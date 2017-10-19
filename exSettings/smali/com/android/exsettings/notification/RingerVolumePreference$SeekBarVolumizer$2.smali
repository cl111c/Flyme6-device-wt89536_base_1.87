.class Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$2;
.super Ljava/lang/Object;
.source "RingerVolumePreference.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
.method constructor <init>(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    .line 395
    packed-switch p1, :pswitch_data_0

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 398
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->access$700(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    # invokes: Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->onStopSample()V
    invoke-static {v0}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->access$800(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)V

    goto :goto_0

    .line 395
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
