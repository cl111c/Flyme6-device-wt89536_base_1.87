.class Lcom/android/exsettings/wifi/AccessPointInfo$10;
.super Ljava/lang/Thread;
.source "AccessPointInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/AccessPointInfo;->doLogoutAndDelete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

.field final synthetic val$ssid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/AccessPointInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/android/exsettings/wifi/AccessPointInfo$10;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    iput-object p2, p0, Lcom/android/exsettings/wifi/AccessPointInfo$10;->val$ssid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1083
    :try_start_0
    const-string v2, "AccessPointInfo"

    const-string v3, "Here is to call logoutCMCC function"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo$10;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->authen:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;
    invoke-static {v2}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$1300(Lcom/android/exsettings/wifi/AccessPointInfo;)Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo$10;->val$ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->logoutCMCC(Ljava/lang/String;)Lcom/aspire/g3wlan/client/sdk/ResultObject;

    move-result-object v1

    .line 1086
    .local v1, "logoutResult":Lcom/aspire/g3wlan/client/sdk/ResultObject;
    invoke-virtual {v1}, Lcom/aspire/g3wlan/client/sdk/ResultObject;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1087
    const-string v2, "AccessPointInfo"

    const-string v3, "Logout Success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo$10;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$1400(Lcom/android/exsettings/wifi/AccessPointInfo;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1093
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo$10;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$200(Lcom/android/exsettings/wifi/AccessPointInfo;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo$10;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkId:I
    invoke-static {v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$1200(Lcom/android/exsettings/wifi/AccessPointInfo;)I

    move-result v3

    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo$10;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v4}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$100(Lcom/android/exsettings/wifi/AccessPointInfo;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1094
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo$10;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # invokes: Lcom/android/exsettings/wifi/AccessPointInfo;->clearAccountInfo()V
    invoke-static {v2}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$1100(Lcom/android/exsettings/wifi/AccessPointInfo;)V

    .line 1098
    .end local v1    # "logoutResult":Lcom/aspire/g3wlan/client/sdk/ResultObject;
    :goto_1
    return-void

    .line 1090
    .restart local v1    # "logoutResult":Lcom/aspire/g3wlan/client/sdk/ResultObject;
    :cond_0
    const-string v2, "AccessPointInfo"

    const-string v3, "Logout Failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo$10;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$1400(Lcom/android/exsettings/wifi/AccessPointInfo;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lcom/aspire/g3wlan/client/sdk/CMCCWifiUninitializedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1095
    .end local v1    # "logoutResult":Lcom/aspire/g3wlan/client/sdk/ResultObject;
    :catch_0
    move-exception v0

    .line 1096
    .local v0, "e":Lcom/aspire/g3wlan/client/sdk/CMCCWifiUninitializedException;
    const-string v2, "AccessPointInfo"

    const-string v3, "CMCCWifiUninitializedException occur"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
