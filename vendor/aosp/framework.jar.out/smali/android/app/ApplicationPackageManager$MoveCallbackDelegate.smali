.class Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "ApplicationPackageManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveCallbackDelegate"
.end annotation


# static fields
.field private static final MSG_CREATED:I = 0x1

.field private static final MSG_STATUS_CHANGED:I = 0x2


# instance fields
.field final mCallback:Landroid/content/pm/PackageManager$MoveCallback;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Looper;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/PackageManager$MoveCallback;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2215
    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    .line 2216
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    .line 2217
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 2218
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 2222
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2236
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2224
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2225
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, p0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager$MoveCallback;->onCreated(ILandroid/os/Bundle;)V

    .line 2226
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    move v1, v2

    .line 2227
    goto :goto_0

    .line 2230
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2231
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, p0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/pm/PackageManager$MoveCallback;->onStatusChanged(IIJ)V

    .line 2232
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    move v1, v2

    .line 2233
    goto :goto_0

    .line 2222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreated(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "moveId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2241
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2242
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2243
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2244
    iget-object v1, p0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2245
    return-void
.end method

.method public onStatusChanged(IIJ)V
    .locals 3
    .param p1, "moveId"    # I
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    .prologue
    .line 2249
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2250
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2251
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 2252
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2253
    iget-object v1, p0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2254
    return-void
.end method
