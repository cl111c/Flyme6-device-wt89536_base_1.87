.class Lcom/android/server/PowerGuruService$InternalHandler;
.super Landroid/os/Handler;
.source "PowerGuruService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerGuruService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerGuruService;


# direct methods
.method public constructor <init>(Lcom/android/server/PowerGuruService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    .line 383
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 384
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 389
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 488
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown event: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/PowerGuruService;->access$300(Lcom/android/server/PowerGuruService;Ljava/lang/String;)V

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 391
    :pswitch_0
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    const-string v8, "LOAD_DATA"

    # invokes: Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/PowerGuruService;->access$000(Lcom/android/server/PowerGuruService;Ljava/lang/String;)V

    .line 392
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # invokes: Lcom/android/server/PowerGuruService;->initData()V
    invoke-static {v7}, Lcom/android/server/PowerGuruService;->access$100(Lcom/android/server/PowerGuruService;)V

    goto :goto_0

    .line 397
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    const-string v8, "NEW_ALARM"

    # invokes: Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/PowerGuruService;->access$000(Lcom/android/server/PowerGuruService;Ljava/lang/String;)V

    .line 399
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/PowerGuruService$AlarmInfo;

    .line 402
    .local v0, "alarm":Lcom/android/server/PowerGuruService$AlarmInfo;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # invokes: Lcom/android/server/PowerGuruService;->processInputAlarm(Lcom/android/server/PowerGuruService$AlarmInfo;)V
    invoke-static {v7, v0}, Lcom/android/server/PowerGuruService;->access$200(Lcom/android/server/PowerGuruService;Lcom/android/server/PowerGuruService$AlarmInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v2

    .line 404
    .local v2, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unkown Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/PowerGuruService;->access$300(Lcom/android/server/PowerGuruService;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    .end local v0    # "alarm":Lcom/android/server/PowerGuruService$AlarmInfo;
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_2
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    const-string v8, "SCREEN_OFF"

    # invokes: Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/PowerGuruService;->access$000(Lcom/android/server/PowerGuruService;Ljava/lang/String;)V

    .line 411
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # setter for: Lcom/android/server/PowerGuruService;->mScreenOff:Z
    invoke-static {v7, v5}, Lcom/android/server/PowerGuruService;->access$402(Lcom/android/server/PowerGuruService;Z)Z

    .line 412
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v7}, Lcom/android/server/PowerGuruService;->access$500(Lcom/android/server/PowerGuruService;)Landroid/app/AlarmManager;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 413
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v7}, Lcom/android/server/PowerGuruService;->access$500(Lcom/android/server/PowerGuruService;)Landroid/app/AlarmManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mHeartbeatListUpdate:Z
    invoke-static {v8}, Lcom/android/server/PowerGuruService;->access$600(Lcom/android/server/PowerGuruService;)Z

    move-result v8

    invoke-virtual {v7, v5, v8}, Landroid/app/AlarmManager;->setHeartBeatAdjustEnable(ZZ)Z

    goto :goto_0

    .line 415
    :cond_1
    iget-object v8, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/PowerGuruService;->access$700(Lcom/android/server/PowerGuruService;)Landroid/content/Context;

    move-result-object v7

    const-string v9, "alarm"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    # setter for: Lcom/android/server/PowerGuruService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v8, v7}, Lcom/android/server/PowerGuruService;->access$502(Lcom/android/server/PowerGuruService;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;

    goto :goto_0

    .line 420
    :pswitch_3
    iget-object v8, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    const-string v9, "SCREEN_ON"

    # invokes: Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/server/PowerGuruService;->access$000(Lcom/android/server/PowerGuruService;Ljava/lang/String;)V

    .line 421
    iget-object v8, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # setter for: Lcom/android/server/PowerGuruService;->mScreenOff:Z
    invoke-static {v8, v7}, Lcom/android/server/PowerGuruService;->access$402(Lcom/android/server/PowerGuruService;Z)Z

    .line 422
    iget-object v8, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v8}, Lcom/android/server/PowerGuruService;->access$500(Lcom/android/server/PowerGuruService;)Landroid/app/AlarmManager;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 423
    iget-object v8, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v8}, Lcom/android/server/PowerGuruService;->access$500(Lcom/android/server/PowerGuruService;)Landroid/app/AlarmManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mHeartbeatListUpdate:Z
    invoke-static {v9}, Lcom/android/server/PowerGuruService;->access$600(Lcom/android/server/PowerGuruService;)Z

    move-result v9

    invoke-virtual {v8, v7, v9}, Landroid/app/AlarmManager;->setHeartBeatAdjustEnable(ZZ)Z

    goto/16 :goto_0

    .line 425
    :cond_2
    iget-object v8, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/PowerGuruService;->access$700(Lcom/android/server/PowerGuruService;)Landroid/content/Context;

    move-result-object v7

    const-string v9, "alarm"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    # setter for: Lcom/android/server/PowerGuruService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v8, v7}, Lcom/android/server/PowerGuruService;->access$502(Lcom/android/server/PowerGuruService;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;

    goto/16 :goto_0

    .line 430
    :pswitch_4
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    const-string v8, "SUSPECTED_HEARTBEAT_ALARM_CHECK"

    # invokes: Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/PowerGuruService;->access$000(Lcom/android/server/PowerGuruService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 436
    :pswitch_5
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HEARTBEAT_ALARM_LIST_UPDATE (mScreenOff = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mScreenOff:Z
    invoke-static {v9}, Lcom/android/server/PowerGuruService;->access$400(Lcom/android/server/PowerGuruService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/PowerGuruService;->access$000(Lcom/android/server/PowerGuruService;Ljava/lang/String;)V

    .line 437
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mScreenOff:Z
    invoke-static {v7}, Lcom/android/server/PowerGuruService;->access$400(Lcom/android/server/PowerGuruService;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 439
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v7}, Lcom/android/server/PowerGuruService;->access$500(Lcom/android/server/PowerGuruService;)Landroid/app/AlarmManager;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 440
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v7}, Lcom/android/server/PowerGuruService;->access$500(Lcom/android/server/PowerGuruService;)Landroid/app/AlarmManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mHeartbeatListUpdate:Z
    invoke-static {v8}, Lcom/android/server/PowerGuruService;->access$600(Lcom/android/server/PowerGuruService;)Z

    move-result v8

    invoke-virtual {v7, v5, v8}, Landroid/app/AlarmManager;->setHeartBeatAdjustEnable(ZZ)Z

    goto/16 :goto_0

    .line 442
    :cond_3
    iget-object v8, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/PowerGuruService;->access$700(Lcom/android/server/PowerGuruService;)Landroid/content/Context;

    move-result-object v7

    const-string v9, "alarm"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    # setter for: Lcom/android/server/PowerGuruService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v8, v7}, Lcom/android/server/PowerGuruService;->access$502(Lcom/android/server/PowerGuruService;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;

    goto/16 :goto_0

    .line 448
    :pswitch_6
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v5, :cond_4

    .line 450
    .local v5, "iswificonnected":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mWifiConnected:Z
    invoke-static {v7}, Lcom/android/server/PowerGuruService;->access$800(Lcom/android/server/PowerGuruService;)Z

    move-result v7

    if-eq v7, v5, :cond_0

    .line 451
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # setter for: Lcom/android/server/PowerGuruService;->mWifiConnected:Z
    invoke-static {v7, v5}, Lcom/android/server/PowerGuruService;->access$802(Lcom/android/server/PowerGuruService;Z)Z

    .line 452
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WIFI_NETWORK_CONNECTION_CHANGE (mWifiConnected = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mWifiConnected:Z
    invoke-static {v9}, Lcom/android/server/PowerGuruService;->access$800(Lcom/android/server/PowerGuruService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/PowerGuruService;->access$000(Lcom/android/server/PowerGuruService;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5    # "iswificonnected":Z
    :cond_4
    move v5, v7

    .line 448
    goto :goto_1

    .line 458
    :pswitch_7
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v5, :cond_5

    move v4, v5

    .line 460
    .local v4, "isvpnconnected":Z
    :goto_2
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mHasVpn:Z
    invoke-static {v7}, Lcom/android/server/PowerGuruService;->access$900(Lcom/android/server/PowerGuruService;)Z

    move-result v7

    if-eq v7, v4, :cond_0

    .line 461
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # setter for: Lcom/android/server/PowerGuruService;->mHasVpn:Z
    invoke-static {v7, v4}, Lcom/android/server/PowerGuruService;->access$902(Lcom/android/server/PowerGuruService;Z)Z

    .line 462
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VPN_NETWORK_CONNECTION_CHANGE (mHasVpn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mHasVpn:Z
    invoke-static {v9}, Lcom/android/server/PowerGuruService;->access$900(Lcom/android/server/PowerGuruService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/PowerGuruService;->access$000(Lcom/android/server/PowerGuruService;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v4    # "isvpnconnected":Z
    :cond_5
    move v4, v7

    .line 458
    goto :goto_2

    .line 467
    :pswitch_8
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    const-string v8, "SAVE_WHITE_LIST_TO_DISK"

    # invokes: Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/PowerGuruService;->access$000(Lcom/android/server/PowerGuruService;Ljava/lang/String;)V

    .line 468
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # invokes: Lcom/android/server/PowerGuruService;->saveWhileListToDisk()V
    invoke-static {v7}, Lcom/android/server/PowerGuruService;->access$1000(Lcom/android/server/PowerGuruService;)V

    goto/16 :goto_0

    .line 472
    :pswitch_9
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    const-string v8, "SAVE_STUDY_HEARTBEAT_LIST_TO_DISK"

    # invokes: Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/PowerGuruService;->access$000(Lcom/android/server/PowerGuruService;Ljava/lang/String;)V

    .line 473
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # invokes: Lcom/android/server/PowerGuruService;->saveStudyHeartbeatListToDisk()V
    invoke-static {v7}, Lcom/android/server/PowerGuruService;->access$1100(Lcom/android/server/PowerGuruService;)V

    goto/16 :goto_0

    .line 477
    :pswitch_a
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    const-string v8, "UPDATE_DATA_ON_PACKAGES_CHANGED"

    # invokes: Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/PowerGuruService;->access$000(Lcom/android/server/PowerGuruService;Ljava/lang/String;)V

    .line 479
    :try_start_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 480
    .local v6, "removedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 481
    .local v1, "changeType":I
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    # invokes: Lcom/android/server/PowerGuruService;->updateDataOnPackagesChanged(Ljava/util/List;I)V
    invoke-static {v7, v6, v1}, Lcom/android/server/PowerGuruService;->access$1200(Lcom/android/server/PowerGuruService;Ljava/util/List;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 482
    .end local v1    # "changeType":I
    .end local v6    # "removedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v3

    .line 483
    .local v3, "exp":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/server/PowerGuruService$InternalHandler;->this$0:Lcom/android/server/PowerGuruService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exp while update data,exp:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/PowerGuruService;->access$300(Lcom/android/server/PowerGuruService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
