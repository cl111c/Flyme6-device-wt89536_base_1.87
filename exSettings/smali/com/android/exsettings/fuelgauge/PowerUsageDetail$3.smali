.class Lcom/android/exsettings/fuelgauge/PowerUsageDetail$3;
.super Landroid/content/BroadcastReceiver;
.source "PowerUsageDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/fuelgauge/PowerUsageDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/fuelgauge/PowerUsageDetail;


# direct methods
.method constructor <init>(Lcom/android/exsettings/fuelgauge/PowerUsageDetail;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$3;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageDetail;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$3;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageDetail;

    # getter for: Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->access$100(Lcom/android/exsettings/fuelgauge/PowerUsageDetail;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$3;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 696
    return-void

    .line 695
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method