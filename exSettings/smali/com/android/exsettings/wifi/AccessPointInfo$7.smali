.class Lcom/android/exsettings/wifi/AccessPointInfo$7;
.super Ljava/lang/Object;
.source "AccessPointInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/AccessPointInfo;->onClick(Landroid/view/View;)V
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
    .line 947
    iput-object p1, p0, Lcom/android/exsettings/wifi/AccessPointInfo$7;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$7;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$800(Lcom/android/exsettings/wifi/AccessPointInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC-WEB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$7;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->CMCCLoginStatus:I
    invoke-static {v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$900(Lcom/android/exsettings/wifi/AccessPointInfo;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$7;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->CMCCLoginStatus:I
    invoke-static {v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$900(Lcom/android/exsettings/wifi/AccessPointInfo;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$7;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    const-string v1, "CMCC-WEB"

    # invokes: Lcom/android/exsettings/wifi/AccessPointInfo;->doLogoutAndDelete(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$1000(Lcom/android/exsettings/wifi/AccessPointInfo;Ljava/lang/String;)V

    .line 963
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$7;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->finish()V

    .line 964
    return-void

    .line 957
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$7;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$800(Lcom/android/exsettings/wifi/AccessPointInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC-WEB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 958
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$7;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # invokes: Lcom/android/exsettings/wifi/AccessPointInfo;->clearAccountInfo()V
    invoke-static {v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$1100(Lcom/android/exsettings/wifi/AccessPointInfo;)V

    .line 960
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$7;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$200(Lcom/android/exsettings/wifi/AccessPointInfo;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo$7;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkId:I
    invoke-static {v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$1200(Lcom/android/exsettings/wifi/AccessPointInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo$7;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v2}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$100(Lcom/android/exsettings/wifi/AccessPointInfo;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method
