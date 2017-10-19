.class final Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mListening:Z

.field final synthetic this$1:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;->this$1:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;Lcom/android/exsettings/notification/RingerVolumePreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;
    .param p2, "x1"    # Lcom/android/exsettings/notification/RingerVolumePreference$1;

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;-><init>(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 470
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    iget-object v2, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;->this$1:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->access$1000(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 473
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 476
    .local v1, "streamType":I
    const-string v2, "RingerVolumePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive mStreamType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;->this$1:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I
    invoke-static {v4}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->access$600(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " volume changed streamType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v2, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;->this$1:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->access$600(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 479
    iget-object v2, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;->this$1:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->access$1000(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;->this$1:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->access$1000(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 483
    .end local v1    # "streamType":I
    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 457
    iget-boolean v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;->mListening:Z

    if-ne v1, p1, :cond_0

    .line 466
    :goto_0
    return-void

    .line 458
    :cond_0
    iput-boolean p1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;->mListening:Z

    .line 459
    if-eqz p1, :cond_1

    .line 460
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 462
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;->this$1:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->access$900(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 464
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;->this$1:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->access$900(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
