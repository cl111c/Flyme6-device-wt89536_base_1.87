.class Lcom/android/server/policy/PhoneWindowManager$34;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 8167
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$34;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8170
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$34;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->isKeyguardNotHasLocked()Z
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$3800(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8171
    const-string v0, "WindowManager"

    const-string v1, "mExitCameraForFingerprint"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8172
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$34;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->exitCameraForFingerprint()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$3900(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 8174
    :cond_0
    return-void
.end method
