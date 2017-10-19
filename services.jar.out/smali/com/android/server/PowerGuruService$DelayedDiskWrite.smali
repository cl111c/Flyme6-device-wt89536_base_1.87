.class Lcom/android/server/PowerGuruService$DelayedDiskWrite;
.super Ljava/lang/Object;
.source "PowerGuruService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerGuruService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedDiskWrite"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PowerGuruService$DelayedDiskWrite$writeAlarmListRunnable;
    }
.end annotation


# instance fields
.field private mAlarmList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/PowerGuruAlarmInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDiskWriteHandler:Landroid/os/Handler;

.field private mDiskWriteHandlerThread:Landroid/os/HandlerThread;

.field private mWriteSequence:I

.field final synthetic this$0:Lcom/android/server/PowerGuruService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerGuruService;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1445
    iput-object p1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->this$0:Lcom/android/server/PowerGuruService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1440
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mWriteSequence:I

    .line 1442
    iput-object v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mAppList:Ljava/util/List;

    .line 1443
    iput-object v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mAlarmList:Ljava/util/List;

    .line 1447
    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/PowerGuruService$DelayedDiskWrite;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerGuruService$DelayedDiskWrite;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1434
    invoke-direct {p0, p1}, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->onWriteAlarmListCalled(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/PowerGuruService$DelayedDiskWrite;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerGuruService$DelayedDiskWrite;

    .prologue
    .line 1434
    invoke-direct {p0}, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->onWriteAppListCalled()V

    return-void
.end method

.method private onWriteAlarmListCalled(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/PowerGuruAlarmInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1519
    .local p1, "alarmInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/PowerGuruAlarmInfo;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->this$0:Lcom/android/server/PowerGuruService;

    iget-object v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mStudiedHeartBeatRecordFile:Landroid/util/AtomicFile;
    invoke-static {v2}, Lcom/android/server/PowerGuruService;->access$1900(Lcom/android/server/PowerGuruService;)Landroid/util/AtomicFile;

    move-result-object v2

    # invokes: Lcom/android/server/PowerGuruService;->writeAlarmInfoToFile(Landroid/util/AtomicFile;Ljava/util/List;)Z
    invoke-static {v1, v2, p1}, Lcom/android/server/PowerGuruService;->access$2000(Lcom/android/server/PowerGuruService;Landroid/util/AtomicFile;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1524
    monitor-enter p0

    .line 1525
    :try_start_1
    iget v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mWriteSequence:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mWriteSequence:I

    if-nez v1, :cond_0

    .line 1526
    iget-object v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 1527
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    .line 1528
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 1530
    :cond_0
    monitor-exit p0

    .line 1533
    :goto_0
    return-void

    .line 1530
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1520
    :catch_0
    move-exception v0

    .line 1521
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->this$0:Lcom/android/server/PowerGuruService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/PowerGuruService;->access$300(Lcom/android/server/PowerGuruService;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1524
    monitor-enter p0

    .line 1525
    :try_start_3
    iget v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mWriteSequence:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mWriteSequence:I

    if-nez v1, :cond_1

    .line 1526
    iget-object v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 1527
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    .line 1528
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 1530
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 1524
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v1

    monitor-enter p0

    .line 1525
    :try_start_4
    iget v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mWriteSequence:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mWriteSequence:I

    if-nez v2, :cond_2

    .line 1526
    iget-object v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 1527
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    .line 1528
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 1530
    :cond_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1

    :catchall_3
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1
.end method

.method private onWriteAppListCalled()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1538
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->this$0:Lcom/android/server/PowerGuruService;

    iget-object v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mWhiteAppFile:Landroid/util/AtomicFile;
    invoke-static {v2}, Lcom/android/server/PowerGuruService;->access$2100(Lcom/android/server/PowerGuruService;)Landroid/util/AtomicFile;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mAppList:Ljava/util/List;

    # invokes: Lcom/android/server/PowerGuruService;->writeAppListToFile(Landroid/util/AtomicFile;Ljava/util/List;)Z
    invoke-static {v1, v2, v3}, Lcom/android/server/PowerGuruService;->access$2200(Lcom/android/server/PowerGuruService;Landroid/util/AtomicFile;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1543
    monitor-enter p0

    .line 1544
    :try_start_1
    iget v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mWriteSequence:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mWriteSequence:I

    if-nez v1, :cond_0

    .line 1545
    iget-object v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 1546
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    .line 1547
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 1549
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1550
    iput-object v4, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mAppList:Ljava/util/List;

    .line 1552
    :goto_0
    return-void

    .line 1549
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1539
    :catch_0
    move-exception v0

    .line 1540
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->this$0:Lcom/android/server/PowerGuruService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/PowerGuruService;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/PowerGuruService;->access$300(Lcom/android/server/PowerGuruService;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1543
    monitor-enter p0

    .line 1544
    :try_start_4
    iget v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mWriteSequence:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mWriteSequence:I

    if-nez v1, :cond_1

    .line 1545
    iget-object v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 1546
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    .line 1547
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 1549
    :cond_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1550
    iput-object v4, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mAppList:Ljava/util/List;

    goto :goto_0

    .line 1549
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 1543
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v1

    monitor-enter p0

    .line 1544
    :try_start_6
    iget v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mWriteSequence:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mWriteSequence:I

    if-nez v2, :cond_2

    .line 1545
    iget-object v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 1546
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    .line 1547
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 1549
    :cond_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1550
    iput-object v4, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mAppList:Ljava/util/List;

    throw v1

    .line 1549
    :catchall_3
    move-exception v1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1
.end method


# virtual methods
.method public writeAlarmList()V
    .locals 11

    .prologue
    .line 1465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mAlarmList:Ljava/util/List;

    .line 1466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mAlarmList:Ljava/util/List;

    .line 1468
    iget-object v0, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mSavedHeartbeatList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/PowerGuruService;->access$1600(Lcom/android/server/PowerGuruService;)Ljava/util/List;

    move-result-object v9

    monitor-enter v9

    .line 1469
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mSavedHeartbeatList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/PowerGuruService;->access$1600(Lcom/android/server/PowerGuruService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PowerGuruAlarmInfo;

    .line 1470
    .local v7, "a":Landroid/app/PowerGuruAlarmInfo;
    iget-object v10, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mAlarmList:Ljava/util/List;

    new-instance v0, Landroid/app/PowerGuruAlarmInfo;

    iget-object v1, v7, Landroid/app/PowerGuruAlarmInfo;->packageName:Ljava/lang/String;

    iget-object v2, v7, Landroid/app/PowerGuruAlarmInfo;->actionName:Ljava/lang/String;

    iget-object v3, v7, Landroid/app/PowerGuruAlarmInfo;->componentName:Ljava/lang/String;

    iget v4, v7, Landroid/app/PowerGuruAlarmInfo;->alarmType:I

    iget-boolean v5, v7, Landroid/app/PowerGuruAlarmInfo;->isFromGMS:Z

    iget-boolean v6, v7, Landroid/app/PowerGuruAlarmInfo;->isAvailable:Z

    invoke-direct/range {v0 .. v6}, Landroid/app/PowerGuruAlarmInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1473
    .end local v7    # "a":Landroid/app/PowerGuruAlarmInfo;
    .end local v8    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1476
    monitor-enter p0

    .line 1477
    :try_start_2
    iget v0, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mWriteSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mWriteSequence:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1478
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PowerGuruServiceWriteThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 1479
    iget-object v0, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1480
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    .line 1482
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1484
    iget-object v0, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/PowerGuruService$DelayedDiskWrite$writeAlarmListRunnable;

    iget-object v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mAlarmList:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/android/server/PowerGuruService$DelayedDiskWrite$writeAlarmListRunnable;-><init>(Lcom/android/server/PowerGuruService$DelayedDiskWrite;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1485
    return-void

    .line 1482
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public writeAppList()V
    .locals 5

    .prologue
    .line 1491
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mAppList:Ljava/util/List;

    .line 1493
    iget-object v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mWhiteAppList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/PowerGuruService;->access$1700(Lcom/android/server/PowerGuruService;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 1494
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mWhiteAppList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/PowerGuruService;->access$1700(Lcom/android/server/PowerGuruService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1495
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mAppList:Ljava/util/List;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1497
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1500
    monitor-enter p0

    .line 1501
    :try_start_2
    iget v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mWriteSequence:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mWriteSequence:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1502
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "PowerGuruServiceWriteThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 1503
    iget-object v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 1504
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    .line 1506
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1508
    iget-object v2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/PowerGuruService$DelayedDiskWrite$1;

    invoke-direct {v3, p0}, Lcom/android/server/PowerGuruService$DelayedDiskWrite$1;-><init>(Lcom/android/server/PowerGuruService$DelayedDiskWrite;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1514
    return-void

    .line 1506
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
