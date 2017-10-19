.class Lcom/android/exsettings/wifi/AccessPointInfo$5;
.super Ljava/lang/Object;
.source "AccessPointInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 349
    iput-object p1, p0, Lcom/android/exsettings/wifi/AccessPointInfo$5;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 353
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$5;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCDialog:Lcom/android/exsettings/wifi/CmccAutoLoginDialog;
    invoke-static {v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$400(Lcom/android/exsettings/wifi/AccessPointInfo;)Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$5;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCDialog:Lcom/android/exsettings/wifi/CmccAutoLoginDialog;
    invoke-static {v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$400(Lcom/android/exsettings/wifi/AccessPointInfo;)Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->recordCMCCAUTOLoginInfo()V

    .line 355
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$5;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$200(Lcom/android/exsettings/wifi/AccessPointInfo;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo$5;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCDialog:Lcom/android/exsettings/wifi/CmccAutoLoginDialog;
    invoke-static {v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$400(Lcom/android/exsettings/wifi/AccessPointInfo;)Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo$5;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v2}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$500(Lcom/android/exsettings/wifi/AccessPointInfo;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 356
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$5;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->finish()V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$5;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$600(Lcom/android/exsettings/wifi/AccessPointInfo;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0c38

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
