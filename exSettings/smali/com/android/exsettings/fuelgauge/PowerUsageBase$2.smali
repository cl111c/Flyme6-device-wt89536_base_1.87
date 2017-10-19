.class Lcom/android/exsettings/fuelgauge/PowerUsageBase$2;
.super Landroid/content/BroadcastReceiver;
.source "PowerUsageBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/fuelgauge/PowerUsageBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/fuelgauge/PowerUsageBase;


# direct methods
.method constructor <init>(Lcom/android/exsettings/fuelgauge/PowerUsageBase;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase$2;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x64

    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase$2;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageBase;

    # invokes: Lcom/android/exsettings/fuelgauge/PowerUsageBase;->updateBatteryStatus(Landroid/content/Intent;)Z
    invoke-static {v1, p2}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->access$000(Lcom/android/exsettings/fuelgauge/PowerUsageBase;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase$2;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageBase;

    # getter for: Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->access$100(Lcom/android/exsettings/fuelgauge/PowerUsageBase;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase$2;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageBase;

    # getter for: Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->access$100(Lcom/android/exsettings/fuelgauge/PowerUsageBase;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 175
    :cond_0
    return-void
.end method
