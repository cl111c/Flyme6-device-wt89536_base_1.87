.class Lcom/android/exsettings/wifi/WifiSettings$7;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/WifiSettings;->checkConnectedNetwork(ZLjava/lang/String;)V
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
    .line 1323
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiSettings$7;->this$0:Lcom/android/exsettings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1327
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    :goto_0
    invoke-static {}, Lcom/android/exsettings/wifi/WifiSettings;->isCaptivePortal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1331
    const-string v1, "WifiSettings"

    const-string v2, "Checked is Captive portal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1333
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1334
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings$7;->this$0:Lcom/android/exsettings/wifi/WifiSettings;

    # getter for: Lcom/android/exsettings/wifi/WifiSettings;->mCurrentSsid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/exsettings/wifi/WifiSettings;->access$400(Lcom/android/exsettings/wifi/WifiSettings;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1335
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings$7;->this$0:Lcom/android/exsettings/wifi/WifiSettings;

    # getter for: Lcom/android/exsettings/wifi/WifiSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/exsettings/wifi/WifiSettings;->access$500(Lcom/android/exsettings/wifi/WifiSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1340
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    return-void

    .line 1337
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings$7;->this$0:Lcom/android/exsettings/wifi/WifiSettings;

    # getter for: Lcom/android/exsettings/wifi/WifiSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/exsettings/wifi/WifiSettings;->access$500(Lcom/android/exsettings/wifi/WifiSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1338
    const-string v1, "WifiSettings"

    const-string v2, "Checked is Normal portal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1328
    :catch_0
    move-exception v1

    goto :goto_0
.end method
