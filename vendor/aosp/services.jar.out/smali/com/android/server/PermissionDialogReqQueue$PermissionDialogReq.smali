.class public final Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
.super Ljava/lang/Object;
.source "PermissionDialogReqQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PermissionDialogReqQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionDialogReq"
.end annotation


# instance fields
.field mHasResult:Z

.field mResult:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mHasResult:Z

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    .line 54
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mHasResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 56
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    goto :goto_0

    .line 60
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    iget v0, p0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mResult:I

    return v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public set(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 45
    monitor-enter p0

    .line 46
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mHasResult:Z

    .line 47
    iput p1, p0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mResult:I

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 49
    monitor-exit p0

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
