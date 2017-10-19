.class Lcom/android/server/policy/PhoneWindowManager$32;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->handleKeyguardOccluded(Z)V
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
    .line 8138
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$32;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 8141
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$32;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$32;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "com.android.camera3"

    const-string v3, "com.android.camera.SecureCameraActivity"

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->isStayTopActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->access$3100(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8142
    const-string v0, "WindowManager"

    const-string v1, "handleKeyguardOccluded enter camera"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8143
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$32;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->enterCameraForFingerprint()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$3200(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 8145
    :cond_0
    return-void
.end method
