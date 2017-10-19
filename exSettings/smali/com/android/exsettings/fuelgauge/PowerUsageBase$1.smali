.class Lcom/android/exsettings/fuelgauge/PowerUsageBase$1;
.super Landroid/os/Handler;
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
    .line 153
    iput-object p1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase$1;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 158
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase$1;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageBase;

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 159
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase$1;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageBase;

    invoke-virtual {v0}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->refreshStats()V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
