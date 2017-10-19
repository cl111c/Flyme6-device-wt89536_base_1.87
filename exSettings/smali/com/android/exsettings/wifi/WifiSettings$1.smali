.class Lcom/android/exsettings/wifi/WifiSettings$1;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiSettings$1;->this$0:Lcom/android/exsettings/wifi/WifiSettings;

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

    .line 239
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 241
    :pswitch_0
    const-string v0, "WifiSettings"

    const-string v1, "HandlerMessage OK port"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings$1;->this$0:Lcom/android/exsettings/wifi/WifiSettings;

    # invokes: Lcom/android/exsettings/wifi/WifiSettings;->getCMCCLoginStatus()I
    invoke-static {v0}, Lcom/android/exsettings/wifi/WifiSettings;->access$000(Lcom/android/exsettings/wifi/WifiSettings;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 243
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings$1;->this$0:Lcom/android/exsettings/wifi/WifiSettings;

    # invokes: Lcom/android/exsettings/wifi/WifiSettings;->recordCMCCLoginStatus(I)V
    invoke-static {v0, v2}, Lcom/android/exsettings/wifi/WifiSettings;->access$100(Lcom/android/exsettings/wifi/WifiSettings;I)V

    .line 247
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings$1;->this$0:Lcom/android/exsettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings$1;->this$0:Lcom/android/exsettings/wifi/WifiSettings;

    # invokes: Lcom/android/exsettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v0, v3}, Lcom/android/exsettings/wifi/WifiSettings;->access$200(Lcom/android/exsettings/wifi/WifiSettings;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings$1;->this$0:Lcom/android/exsettings/wifi/WifiSettings;

    # invokes: Lcom/android/exsettings/wifi/WifiSettings;->getCMCCLoginStatus()I
    invoke-static {v0}, Lcom/android/exsettings/wifi/WifiSettings;->access$000(Lcom/android/exsettings/wifi/WifiSettings;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings$1;->this$0:Lcom/android/exsettings/wifi/WifiSettings;

    const/4 v1, 0x4

    # invokes: Lcom/android/exsettings/wifi/WifiSettings;->recordCMCCLoginStatus(I)V
    invoke-static {v0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->access$100(Lcom/android/exsettings/wifi/WifiSettings;I)V

    goto :goto_1

    .line 252
    :pswitch_1
    const-string v0, "WifiSettings"

    const-string v1, "HandlerMessage NO port"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings$1;->this$0:Lcom/android/exsettings/wifi/WifiSettings;

    const/4 v1, 0x1

    # invokes: Lcom/android/exsettings/wifi/WifiSettings;->recordCMCCLoginStatus(I)V
    invoke-static {v0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->access$100(Lcom/android/exsettings/wifi/WifiSettings;I)V

    .line 254
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings$1;->this$0:Lcom/android/exsettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings$1;->this$0:Lcom/android/exsettings/wifi/WifiSettings;

    # invokes: Lcom/android/exsettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v0, v3}, Lcom/android/exsettings/wifi/WifiSettings;->access$200(Lcom/android/exsettings/wifi/WifiSettings;Landroid/net/NetworkInfo$DetailedState;)V

    .line 256
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings$1;->this$0:Lcom/android/exsettings/wifi/WifiSettings;

    # invokes: Lcom/android/exsettings/wifi/WifiSettings;->showCmccLoginDialog()V
    invoke-static {v0}, Lcom/android/exsettings/wifi/WifiSettings;->access$300(Lcom/android/exsettings/wifi/WifiSettings;)V

    goto :goto_0

    .line 262
    :pswitch_2
    const-string v0, "WifiSettings"

    const-string v1, "HandlerMessage update ap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings$1;->this$0:Lcom/android/exsettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings$1;->this$0:Lcom/android/exsettings/wifi/WifiSettings;

    # invokes: Lcom/android/exsettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v0, v3}, Lcom/android/exsettings/wifi/WifiSettings;->access$200(Lcom/android/exsettings/wifi/WifiSettings;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
