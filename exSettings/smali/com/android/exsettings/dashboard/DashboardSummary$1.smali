.class Lcom/android/exsettings/dashboard/DashboardSummary$1;
.super Landroid/os/Handler;
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
    .line 89
    iput-object p1, p0, Lcom/android/exsettings/dashboard/DashboardSummary$1;->this$0:Lcom/android/exsettings/dashboard/DashboardSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 92
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v1, p0, Lcom/android/exsettings/dashboard/DashboardSummary$1;->this$0:Lcom/android/exsettings/dashboard/DashboardSummary;

    invoke-virtual {v1}, Lcom/android/exsettings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 95
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/exsettings/dashboard/DashboardSummary$1;->this$0:Lcom/android/exsettings/dashboard/DashboardSummary;

    # invokes: Lcom/android/exsettings/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V
    invoke-static {v1, v0}, Lcom/android/exsettings/dashboard/DashboardSummary;->access$000(Lcom/android/exsettings/dashboard/DashboardSummary;Landroid/content/Context;)V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
