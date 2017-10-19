.class Lcom/android/exsettings/dashboard/DashboardSummary$2;
.super Landroid/content/BroadcastReceiver;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/dashboard/DashboardSummary;


# direct methods
.method constructor <init>(Lcom/android/exsettings/dashboard/DashboardSummary;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/exsettings/dashboard/DashboardSummary$2;->this$0:Lcom/android/exsettings/dashboard/DashboardSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    const-string v1, "DashboardSummary"

    const-string v2, "Received ACTION_SIM_STATE_CHANGED or ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/android/exsettings/dashboard/DashboardSummary$2;->this$0:Lcom/android/exsettings/dashboard/DashboardSummary;

    # invokes: Lcom/android/exsettings/dashboard/DashboardSummary;->sendRebuildUI()V
    invoke-static {v1}, Lcom/android/exsettings/dashboard/DashboardSummary;->access$100(Lcom/android/exsettings/dashboard/DashboardSummary;)V

    .line 110
    :cond_1
    return-void
.end method
