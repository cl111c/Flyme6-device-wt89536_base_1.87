.class final Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyCallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 8251
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "x1"    # Lcom/android/server/policy/PhoneWindowManager$1;

    .prologue
    .line 8251
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8254
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 8255
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    .line 8257
    .local v0, "keyguardShowing":Z
    if-ne p1, v5, :cond_2

    .line 8258
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->isCallStateRinging:Z
    invoke-static {v1, v5}, Lcom/android/server/policy/PhoneWindowManager;->access$4602(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 8266
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->FP_DBG:Z
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$4100(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8267
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCallStateRinging = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->isCallStateRinging:Z
    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManager;->access$4600(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",keyguardShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mScreenOnFully = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8271
    :cond_0
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->isCallStateRinging:Z
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$4600(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8272
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->isCallStateRingingAndKeyguardShowing:Z
    invoke-static {v1, v5}, Lcom/android/server/policy/PhoneWindowManager;->access$4202(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 8274
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-eqz v1, :cond_1

    .line 8275
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8302
    :cond_1
    :goto_1
    return-void

    .line 8259
    :cond_2
    if-nez p1, :cond_3

    .line 8260
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->isCallStateRinging:Z
    invoke-static {v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->access$4602(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 8261
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-string v2, "android.intent.action.FINGERPRINT_ENROLLING_ACQUIRE"

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->sendFpResetOrAcquireBroadcast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4500(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;)V

    goto :goto_0

    .line 8263
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->isCallStateRinging:Z
    invoke-static {v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->access$4602(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    goto :goto_0

    .line 8282
    :cond_4
    if-eqz v0, :cond_5

    .line 8283
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->isCallStateRingingAndKeyguardShowing:Z
    invoke-static {v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->access$4202(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 8284
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->isSupportFingerprintNavigation()Z
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$3000(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8285
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->stopNavigation()I
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$4300(Lcom/android/server/policy/PhoneWindowManager;)I

    goto :goto_1

    .line 8287
    :cond_5
    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->isFingerprintEnrollingOrConfirm()Z
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$4700(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 8288
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->isCallStateRinging:Z
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$4600(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8289
    const-string v1, "WindowManager"

    const-string v2, "send fingerprint enrolling reset"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8290
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-string v2, "android.intent.action.FINGERPRINT_ENROLLING_RESET"

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->sendFpResetOrAcquireBroadcast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4500(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;)V

    .line 8292
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener$2;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener$2;-><init>(Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 8300
    :cond_6
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyCallStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->isCallStateRingingAndKeyguardShowing:Z
    invoke-static {v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->access$4202(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    goto :goto_1
.end method
