.class Lcom/android/server/policy/PhoneWindowManager$38;
.super Landroid/database/ContentObserver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 8209
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$38;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    .line 8212
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$38;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$38;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v4, "com.android.deskclock"

    const-string v5, "com.android.deskclock.alarms.AlarmActivity"

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->isStayTopActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->access$3100(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 8213
    .local v0, "alarmTopAlerting":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$38;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    .line 8214
    .local v1, "keyguardShowing":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$38;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->isAlarmTopAlerting:Z
    invoke-static {v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->access$4002(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 8215
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$38;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->FP_DBG:Z
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4100(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8216
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alarmTopAlerting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",keyguardShowing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isCallStateRingingAndKeyguardShowing ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$38;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->isCallStateRingingAndKeyguardShowing:Z
    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManager;->access$4200(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8220
    :cond_0
    if-eqz v1, :cond_3

    .line 8221
    if-eqz v0, :cond_2

    .line 8222
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$38;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->shouldStartFingerprintNavigation()V
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->access$2300(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 8248
    :cond_1
    :goto_0
    return-void

    .line 8224
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$38;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->isSupportFingerprintNavigation()Z
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->access$3000(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$38;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->isCallStateRingingAndKeyguardShowing:Z
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4200(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8225
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$38;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->stopNavigation()I
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4300(Lcom/android/server/policy/PhoneWindowManager;)I

    .line 8228
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$38;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->sendFpAcquireEnrollingForKeyguard()V
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4400(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_0

    .line 8232
    :cond_3
    if-nez v1, :cond_1

    .line 8233
    if-eqz v0, :cond_4

    .line 8234
    const-string v2, "WindowManager"

    const-string v3, "send fingerprint enrolling reset for alarm"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8235
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$38;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-string v3, "android.intent.action.FINGERPRINT_ENROLLING_RESET"

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->sendFpResetOrAcquireBroadcast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->access$4500(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;)V

    .line 8237
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$38;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$38$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$38$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$38;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8244
    :cond_4
    const-string v2, "WindowManager"

    const-string v3, "send fingerprint enrolling acquire for alarm"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8245
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$38;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-string v3, "android.intent.action.FINGERPRINT_ENROLLING_ACQUIRE"

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->sendFpResetOrAcquireBroadcast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->access$4500(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;)V

    goto :goto_0
.end method
