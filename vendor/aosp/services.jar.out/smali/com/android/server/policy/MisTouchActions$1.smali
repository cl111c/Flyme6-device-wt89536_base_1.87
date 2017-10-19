.class Lcom/android/server/policy/MisTouchActions$1;
.super Ljava/lang/Object;
.source "MisTouchActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MisTouchActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MisTouchActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MisTouchActions;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/policy/MisTouchActions$1;->this$0:Lcom/android/server/policy/MisTouchActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/server/policy/MisTouchActions$1;->this$0:Lcom/android/server/policy/MisTouchActions;

    invoke-virtual {v1}, Lcom/android/server/policy/MisTouchActions;->dismissDialog()V

    .line 54
    iget-object v1, p0, Lcom/android/server/policy/MisTouchActions$1;->this$0:Lcom/android/server/policy/MisTouchActions;

    # getter for: Lcom/android/server/policy/MisTouchActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/MisTouchActions;->access$000(Lcom/android/server/policy/MisTouchActions;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 55
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 56
    return-void
.end method
