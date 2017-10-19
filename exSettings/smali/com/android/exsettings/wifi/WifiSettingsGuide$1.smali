.class Lcom/android/exsettings/wifi/WifiSettingsGuide$1;
.super Landroid/os/Handler;
.source "WifiSettingsGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/WifiSettingsGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/WifiSettingsGuide;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 305
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 307
    :pswitch_0
    const-string v0, "WifiSettingsGuide"

    const-string v1, "HandlerMessage OK port"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    # invokes: Lcom/android/exsettings/wifi/WifiSettingsGuide;->getCMCCLoginStatus()I
    invoke-static {v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->access$000(Lcom/android/exsettings/wifi/WifiSettingsGuide;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 309
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    # invokes: Lcom/android/exsettings/wifi/WifiSettingsGuide;->recordCMCCLoginStatus(I)V
    invoke-static {v0, v2}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->access$100(Lcom/android/exsettings/wifi/WifiSettingsGuide;I)V

    .line 313
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    # invokes: Lcom/android/exsettings/wifi/WifiSettingsGuide;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v0, v3}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->access$200(Lcom/android/exsettings/wifi/WifiSettingsGuide;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    # invokes: Lcom/android/exsettings/wifi/WifiSettingsGuide;->getCMCCLoginStatus()I
    invoke-static {v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->access$000(Lcom/android/exsettings/wifi/WifiSettingsGuide;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    const/4 v1, 0x4

    # invokes: Lcom/android/exsettings/wifi/WifiSettingsGuide;->recordCMCCLoginStatus(I)V
    invoke-static {v0, v1}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->access$100(Lcom/android/exsettings/wifi/WifiSettingsGuide;I)V

    goto :goto_1

    .line 318
    :pswitch_1
    const-string v0, "WifiSettingsGuide"

    const-string v1, "HandlerMessage NO port"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    const/4 v1, 0x1

    # invokes: Lcom/android/exsettings/wifi/WifiSettingsGuide;->recordCMCCLoginStatus(I)V
    invoke-static {v0, v1}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->access$100(Lcom/android/exsettings/wifi/WifiSettingsGuide;I)V

    .line 320
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    # invokes: Lcom/android/exsettings/wifi/WifiSettingsGuide;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v0, v3}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->access$200(Lcom/android/exsettings/wifi/WifiSettingsGuide;Landroid/net/NetworkInfo$DetailedState;)V

    .line 322
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    # invokes: Lcom/android/exsettings/wifi/WifiSettingsGuide;->showCmccLoginDialog()V
    invoke-static {v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->access$300(Lcom/android/exsettings/wifi/WifiSettingsGuide;)V

    goto :goto_0

    .line 328
    :pswitch_2
    const-string v0, "WifiSettingsGuide"

    const-string v1, "HandlerMessage update ap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$1;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    # invokes: Lcom/android/exsettings/wifi/WifiSettingsGuide;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v0, v3}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->access$200(Lcom/android/exsettings/wifi/WifiSettingsGuide;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
