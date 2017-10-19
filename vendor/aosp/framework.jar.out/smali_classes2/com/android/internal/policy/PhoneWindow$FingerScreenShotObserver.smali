.class Lcom/android/internal/policy/PhoneWindow$FingerScreenShotObserver;
.super Landroid/database/ContentObserver;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerScreenShotObserver"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/PhoneWindow;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 5225
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$FingerScreenShotObserver;->this$0:Lcom/android/internal/policy/PhoneWindow;

    .line 5226
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5227
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 5231
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 5232
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$FingerScreenShotObserver;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$FingerScreenShotObserver;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_finger_screen_shot_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/internal/policy/PhoneWindow;->mFingerScreenShotEnabled:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->access$3702(Lcom/android/internal/policy/PhoneWindow;I)I

    .line 5234
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$FingerScreenShotObserver;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->DBG:Z
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->access$1300(Lcom/android/internal/policy/PhoneWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5235
    const-string v0, "PhoneWindow/FingerScreenShotGesture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange() mFingerScreenShotEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$FingerScreenShotObserver;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mFingerScreenShotEnabled:I
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$3700(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5237
    :cond_0
    return-void
.end method
