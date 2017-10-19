.class Lcom/android/exsettings/notification/PreferenceRingerVolume$1;
.super Landroid/content/BroadcastReceiver;
.source "PreferenceRingerVolume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/PreferenceRingerVolume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/PreferenceRingerVolume;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$1;->this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$1;->this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;

    # getter for: Lcom/android/exsettings/notification/PreferenceRingerVolume;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->access$200(Lcom/android/exsettings/notification/PreferenceRingerVolume;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 129
    .local v1, "ring_volume_index":I
    iget-object v2, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$1;->this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;

    # getter for: Lcom/android/exsettings/notification/PreferenceRingerVolume;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->access$200(Lcom/android/exsettings/notification/PreferenceRingerVolume;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 130
    .local v0, "noti_volume_index":I
    iget-object v2, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$1;->this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;

    # getter for: Lcom/android/exsettings/notification/PreferenceRingerVolume;->mHandler:Lcom/android/exsettings/notification/PreferenceRingerVolume$H;
    invoke-static {v2}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->access$300(Lcom/android/exsettings/notification/PreferenceRingerVolume;)Lcom/android/exsettings/notification/PreferenceRingerVolume$H;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/exsettings/notification/PreferenceRingerVolume$H;->removeMessages(I)V

    .line 131
    iget-object v2, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$1;->this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;

    # getter for: Lcom/android/exsettings/notification/PreferenceRingerVolume;->mHandler:Lcom/android/exsettings/notification/PreferenceRingerVolume$H;
    invoke-static {v2}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->access$300(Lcom/android/exsettings/notification/PreferenceRingerVolume;)Lcom/android/exsettings/notification/PreferenceRingerVolume$H;

    move-result-object v2

    invoke-virtual {v2, v6, v1, v5}, Lcom/android/exsettings/notification/PreferenceRingerVolume$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 132
    iget-object v2, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$1;->this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;

    # getter for: Lcom/android/exsettings/notification/PreferenceRingerVolume;->mHandler:Lcom/android/exsettings/notification/PreferenceRingerVolume$H;
    invoke-static {v2}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->access$300(Lcom/android/exsettings/notification/PreferenceRingerVolume;)Lcom/android/exsettings/notification/PreferenceRingerVolume$H;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/exsettings/notification/PreferenceRingerVolume$H;->removeMessages(I)V

    .line 133
    iget-object v2, p0, Lcom/android/exsettings/notification/PreferenceRingerVolume$1;->this$0:Lcom/android/exsettings/notification/PreferenceRingerVolume;

    # getter for: Lcom/android/exsettings/notification/PreferenceRingerVolume;->mHandler:Lcom/android/exsettings/notification/PreferenceRingerVolume$H;
    invoke-static {v2}, Lcom/android/exsettings/notification/PreferenceRingerVolume;->access$300(Lcom/android/exsettings/notification/PreferenceRingerVolume;)Lcom/android/exsettings/notification/PreferenceRingerVolume$H;

    move-result-object v2

    invoke-virtual {v2, v4, v0, v5}, Lcom/android/exsettings/notification/PreferenceRingerVolume$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 136
    .end local v0    # "noti_volume_index":I
    .end local v1    # "ring_volume_index":I
    :cond_0
    return-void
.end method
