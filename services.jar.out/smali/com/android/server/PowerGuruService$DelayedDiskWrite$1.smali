.class Lcom/android/server/PowerGuruService$DelayedDiskWrite$1;
.super Ljava/lang/Object;
.source "PowerGuruService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PowerGuruService$DelayedDiskWrite;->writeAppList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/PowerGuruService$DelayedDiskWrite;


# direct methods
.method constructor <init>(Lcom/android/server/PowerGuruService$DelayedDiskWrite;)V
    .locals 0

    .prologue
    .line 1508
    iput-object p1, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite$1;->this$1:Lcom/android/server/PowerGuruService$DelayedDiskWrite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/android/server/PowerGuruService$DelayedDiskWrite$1;->this$1:Lcom/android/server/PowerGuruService$DelayedDiskWrite;

    # invokes: Lcom/android/server/PowerGuruService$DelayedDiskWrite;->onWriteAppListCalled()V
    invoke-static {v0}, Lcom/android/server/PowerGuruService$DelayedDiskWrite;->access$1800(Lcom/android/server/PowerGuruService$DelayedDiskWrite;)V

    .line 1512
    return-void
.end method
