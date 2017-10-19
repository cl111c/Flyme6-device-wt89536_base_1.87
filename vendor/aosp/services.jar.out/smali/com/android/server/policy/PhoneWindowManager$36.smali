.class Lcom/android/server/policy/PhoneWindowManager$36;
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
    .line 8188
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$36;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 8191
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$36;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->isKeyguardNotHasLocked()Z
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$3800(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8193
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$36;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$36;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "com.android.camera3"

    const-string v3, "com.android.camera.CameraLauncher"

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->isStayTopActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->access$3100(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8194
    const-string v0, "WindowManager"

    const-string v1, "to start fingerprint nav when turned On and keyguard not showing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8195
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$36;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->shouldStartFingerprintNavigation()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$2300(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 8198
    :cond_0
    return-void
.end method
