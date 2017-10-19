.class Lcom/android/exsettingslib/wifi/WifiTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettingslib/wifi/WifiTracker;


# direct methods
.method constructor <init>(Lcom/android/exsettingslib/wifi/WifiTracker;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/exsettingslib/wifi/WifiTracker$1;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 510
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 512
    iget-object v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker$1;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # invokes: Lcom/android/exsettingslib/wifi/WifiTracker;->updateWifiState(I)V
    invoke-static {v2, v3}, Lcom/android/exsettingslib/wifi/WifiTracker;->access$100(Lcom/android/exsettingslib/wifi/WifiTracker;I)V

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 517
    :cond_2
    iget-object v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker$1;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    # getter for: Lcom/android/exsettingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;
    invoke-static {v2}, Lcom/android/exsettingslib/wifi/WifiTracker;->access$200(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 518
    :cond_3
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 519
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 521
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker$1;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    # getter for: Lcom/android/exsettingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/exsettingslib/wifi/WifiTracker;->access$300(Lcom/android/exsettingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 523
    iget-object v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker$1;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    # getter for: Lcom/android/exsettingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;
    invoke-static {v2}, Lcom/android/exsettingslib/wifi/WifiTracker;->access$400(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 525
    iget-object v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker$1;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    # getter for: Lcom/android/exsettingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;
    invoke-static {v2}, Lcom/android/exsettingslib/wifi/WifiTracker;->access$200(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    .line 526
    iget-object v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker$1;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    # getter for: Lcom/android/exsettingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;
    invoke-static {v2}, Lcom/android/exsettingslib/wifi/WifiTracker;->access$200(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 528
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_4
    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 529
    iget-object v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker$1;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    # getter for: Lcom/android/exsettingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;
    invoke-static {v2}, Lcom/android/exsettingslib/wifi/WifiTracker;->access$200(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 530
    :cond_5
    const-string v2, "Auth_password_wrong"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 531
    sget v2, Lcom/android/exsettingslib/R$string;->wifi_auth_password_wrong:I

    invoke-static {p1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 534
    :cond_6
    const-string v2, "android.settings.wifi.CmccLoginStatusChange"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 535
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 537
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker$1;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    # getter for: Lcom/android/exsettingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;
    invoke-static {v2}, Lcom/android/exsettingslib/wifi/WifiTracker;->access$200(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    goto/16 :goto_0
.end method
