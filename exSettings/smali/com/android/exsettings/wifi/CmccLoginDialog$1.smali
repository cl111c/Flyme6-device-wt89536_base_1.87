.class Lcom/android/exsettings/wifi/CmccLoginDialog$1;
.super Landroid/os/Handler;
.source "CmccLoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/CmccLoginDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/CmccLoginDialog;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$1;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 61
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$1;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # invokes: Lcom/android/exsettings/wifi/CmccLoginDialog;->recordCMCCLoginStatus(I)V
    invoke-static {v3, v4}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$000(Lcom/android/exsettings/wifi/CmccLoginDialog;I)V

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.wifi.CmccLoginStatusChange"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$1;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccLoginDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$100(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 66
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$1;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccLoginDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$100(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0c35

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 69
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$1;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    const/4 v4, 0x2

    # invokes: Lcom/android/exsettings/wifi/CmccLoginDialog;->recordCMCCLoginStatus(I)V
    invoke-static {v3, v4}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$000(Lcom/android/exsettings/wifi/CmccLoginDialog;I)V

    .line 70
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.wifi.CmccLoginStatusChange"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, "intentFailed":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$1;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccLoginDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$100(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$1;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccLoginDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$100(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0c36

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 75
    .end local v1    # "intentFailed":Landroid/content/Intent;
    :pswitch_2
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$1;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # invokes: Lcom/android/exsettings/wifi/CmccLoginDialog;->getCMCCLoginStatus()I
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$200(Lcom/android/exsettings/wifi/CmccLoginDialog;)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 76
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$1;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    const/4 v4, 0x4

    # invokes: Lcom/android/exsettings/wifi/CmccLoginDialog;->recordCMCCLoginStatus(I)V
    invoke-static {v3, v4}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$000(Lcom/android/exsettings/wifi/CmccLoginDialog;I)V

    .line 78
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.wifi.CmccLoginStatusChange"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v2, "intent_already":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$1;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccLoginDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$100(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 80
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$1;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccLoginDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$100(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0c37

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
