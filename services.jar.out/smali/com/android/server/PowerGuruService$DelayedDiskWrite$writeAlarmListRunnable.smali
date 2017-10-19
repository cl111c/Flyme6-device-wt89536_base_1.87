.class Lcom/android/server/PowerGuruService$DelayedDiskWrite$writeAlarmListRunnable;
.super Ljava/lang/Object;
.source "PowerGuruService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerGuruService$DelayedDiskWrite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "writeAlarmListRunnable"
.end annotation


# instance fields
.field private mAlarmList_local:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/PowerGuruAlarmInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/server/PowerGuruService$DelayedDiskWrite;


# direct methods
.method public constructor <init>(Lcom/android/server/PowerGuruService$DelayedDiskWrite;Ljava/util/List;)V
    .locals 0
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
    .line 1452
    .local p2, "alarmlist":Ljava/util/List;, "Ljava/util/List<Landroid/app/PowerGuruAlarmInfo;>;"
    iput-object p1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite$writeAlarmListRunnable;->this$1:Lcom/android/server/PowerGuruService$DelayedDiskWrite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1453
    iput-object p2, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite$writeAlarmListRunnable;->mAlarmList_local:Ljava/util/List;

    .line 1454
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite$writeAlarmListRunnable;->this$1:Lcom/android/server/PowerGuruService$DelayedDiskWrite;

    iget-object v1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite$writeAlarmListRunnable;->mAlarmList_local:Ljava/util/List;

    # invokes: Lcom/android/server/PowerGuruService$DelayedDiskWrite;->onWriteAlarmListCalled(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->access$1500(Lcom/android/server/PowerGuruService$DelayedDiskWrite;Ljava/util/List;)V

    .line 1458
    return-void
.end method
