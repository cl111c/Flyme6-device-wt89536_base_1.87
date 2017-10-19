.class Lcom/android/exsettings/wifi/AccessPointInfo$6;
.super Landroid/os/Handler;
.source "AccessPointInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/AccessPointInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/AccessPointInfo;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/AccessPointInfo;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/exsettings/wifi/AccessPointInfo$6;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 366
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 381
    :goto_0
    return-void

    .line 368
    :pswitch_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo$6;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    const v2, 0x7f0c0c52

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 370
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo$6;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    const/4 v2, 0x1

    # invokes: Lcom/android/exsettings/wifi/AccessPointInfo;->recordCMCCStatus(I)V
    invoke-static {v1, v2}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$700(Lcom/android/exsettings/wifi/AccessPointInfo;I)V

    .line 371
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.wifi.CmccLoginStatusChange"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo$6;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 375
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo$6;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    const v2, 0x7f0c0c53

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
