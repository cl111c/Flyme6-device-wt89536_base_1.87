.class public Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "RingerVolumePreference.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;
    }
.end annotation


# instance fields
.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mOriginalStreamVolume:I

.field private final mReceiver:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStreamType:I

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Lcom/android/exsettings/notification/RingerVolumePreference;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/notification/RingerVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "seekBar"    # Landroid/widget/SeekBar;
    .param p4, "streamType"    # I

    .prologue
    .line 409
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;-><init>(Lcom/android/exsettings/notification/RingerVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    .line 410
    return-void
.end method

.method public constructor <init>(Lcom/android/exsettings/notification/RingerVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "seekBar"    # Landroid/widget/SeekBar;
    .param p4, "streamType"    # I
    .param p5, "defaultUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, -0x1

    .line 412
    iput-object p1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/android/exsettings/notification/RingerVolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 379
    iput v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 381
    new-instance v1, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;-><init>(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;Lcom/android/exsettings/notification/RingerVolumePreference$1;)V

    iput-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mReceiver:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;

    .line 382
    new-instance v1, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$1;

    iget-object v2, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$1;-><init>(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 393
    new-instance v1, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$2;

    invoke-direct {v1, p0}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$2;-><init>(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)V

    iput-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 413
    iput-object p2, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 414
    iput p4, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    .line 415
    iput-object p3, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 417
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RingerVolumePreference.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 418
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 419
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 421
    invoke-direct {p0, p3, p5}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V

    .line 422
    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mReceiver:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;->setListening(Z)V

    .line 423
    return-void
.end method

.method static synthetic access$1000(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    .prologue
    .line 365
    iget v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->onStopSample()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "defaultUri"    # Landroid/net/Uri;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/android/exsettings/notification/RingerVolumePreference;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/exsettings/notification/RingerVolumePreference;->access$500(Lcom/android/exsettings/notification/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 427
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/android/exsettings/notification/RingerVolumePreference;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/exsettings/notification/RingerVolumePreference;->access$500(Lcom/android/exsettings/notification/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 428
    iget v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 429
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 431
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 435
    if-nez p2, :cond_0

    .line 436
    iget v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 437
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    const-string v1, "ro.config.ringtone"

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getSystemDefaultUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 445
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 447
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 450
    :cond_1
    return-void

    .line 438
    :cond_2
    iget v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 439
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    const-string v1, "ro.config.notification_sound"

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getSystemDefaultUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    const-string v1, "ro.config.alarm_alert"

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getSystemDefaultUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0
.end method

.method private onStartSample()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 522
    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/android/exsettings/notification/RingerVolumePreference;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/exsettings/notification/RingerVolumePreference;->access$500(Lcom/android/exsettings/notification/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 523
    invoke-virtual {p0}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/android/exsettings/notification/RingerVolumePreference;

    invoke-virtual {v1, p0}, Lcom/android/exsettings/notification/RingerVolumePreference;->onSampleStarting(Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;)V

    .line 525
    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->getStreamType()I

    move-result v0

    .line 527
    .local v0, "type":I
    if-ne v0, v4, :cond_2

    .line 528
    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 529
    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f090000

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 530
    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 539
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return-void

    .line 532
    .restart local v0    # "type":I
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 535
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_0
.end method

.method private onStopSample()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/android/exsettings/notification/RingerVolumePreference;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/exsettings/notification/RingerVolumePreference;->access$500(Lcom/android/exsettings/notification/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 552
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 555
    :cond_0
    return-void
.end method

.method private postStartSample()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 514
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 515
    iget-object v2, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 517
    return-void

    .line 515
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private postStopSample()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 544
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 545
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 546
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 547
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 488
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 508
    :cond_0
    :goto_0
    const-string v1, "RingerVolumePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid SeekBarVolumizer message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 490
    :pswitch_0
    const-string v1, "RingerVolumePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStreamType =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mLastProgress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/android/exsettings/notification/RingerVolumePreference;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/exsettings/notification/RingerVolumePreference;->access$500(Lcom/android/exsettings/notification/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v1

    iget v2, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v3, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    .line 495
    :pswitch_1
    invoke-direct {p0}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->onStartSample()V

    goto :goto_1

    .line 498
    :pswitch_2
    invoke-direct {p0}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->onStopSample()V

    goto :goto_1

    .line 501
    :pswitch_3
    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/android/exsettings/notification/RingerVolumePreference;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/exsettings/notification/RingerVolumePreference;->access$500(Lcom/android/exsettings/notification/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/android/exsettings/notification/RingerVolumePreference;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/exsettings/notification/RingerVolumePreference;->access$500(Lcom/android/exsettings/notification/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v1

    iget v2, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 503
    .local v0, "volume":I
    const-string v1, "RingerVolumePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage mStreamType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 580
    if-nez p3, :cond_0

    .line 584
    :goto_0
    return-void

    .line 583
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 2
    .param p1, "volumeStore"    # Landroid/preference/VolumePreference$VolumeStore;

    .prologue
    .line 645
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 646
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 647
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    iput v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 648
    iget v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 650
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 1
    .param p1, "volumeStore"    # Landroid/preference/VolumePreference$VolumeStore;

    .prologue
    .line 638
    iget v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 639
    iget v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    .line 640
    iget v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 642
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 594
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->postStartSample()V

    .line 598
    return-void
.end method

.method postSetVolume(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    const/4 v2, 0x0

    .line 588
    iput p1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 589
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 590
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 591
    return-void
.end method

.method public revertVolume()V
    .locals 4

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/android/exsettings/notification/RingerVolumePreference;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/exsettings/notification/RingerVolumePreference;->access$500(Lcom/android/exsettings/notification/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 569
    const-string v0, "RingerVolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "revertVolume mStreamType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mOriginalStreamVolume=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/android/exsettings/notification/RingerVolumePreference;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference;->ringMode:I
    invoke-static {v0}, Lcom/android/exsettings/notification/RingerVolumePreference;->access$1100(Lcom/android/exsettings/notification/RingerVolumePreference;)I

    move-result v0

    if-nez v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/android/exsettings/notification/RingerVolumePreference;

    # getter for: Lcom/android/exsettings/notification/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/exsettings/notification/RingerVolumePreference;->access$500(Lcom/android/exsettings/notification/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 576
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->postStopSample()V

    .line 559
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 560
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 561
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mReceiver:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->mReceiver:Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer$Receiver;->setListening(Z)V

    .line 564
    :cond_0
    return-void
.end method

.method public stopSample()V
    .locals 0

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/android/exsettings/notification/RingerVolumePreference$SeekBarVolumizer;->postStopSample()V

    .line 610
    return-void
.end method
