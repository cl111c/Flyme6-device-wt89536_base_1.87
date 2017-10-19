.class Lcom/android/exsettings/wifi/AccessPointInfo$4;
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
    .line 330
    iput-object p1, p0, Lcom/android/exsettings/wifi/AccessPointInfo$4;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, -0x1

    .line 334
    const/4 v0, -0x3

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$4;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-static {v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$000(Lcom/android/exsettings/wifi/AccessPointInfo;)Lcom/android/exsettingslib/wifi/AccessPoint;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$4;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-static {v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$000(Lcom/android/exsettings/wifi/AccessPointInfo;)Lcom/android/exsettingslib/wifi/AccessPoint;

    move-result-object v0

    iget v0, v0, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    if-eq v0, v1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$4;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$200(Lcom/android/exsettings/wifi/AccessPointInfo;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo$4;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-static {v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$000(Lcom/android/exsettings/wifi/AccessPointInfo;)Lcom/android/exsettingslib/wifi/AccessPoint;

    move-result-object v1

    iget v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo$4;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v2}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$100(Lcom/android/exsettings/wifi/AccessPointInfo;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$4;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->finish()V

    .line 346
    :cond_1
    :goto_0
    return-void

    .line 340
    :cond_2
    if-ne p2, v1, :cond_1

    .line 341
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$4;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;
    invoke-static {v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$300(Lcom/android/exsettings/wifi/AccessPointInfo;)Lcom/android/exsettings/wifi/WifiDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 342
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$4;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo$4;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    # getter for: Lcom/android/exsettings/wifi/AccessPointInfo;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;
    invoke-static {v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->access$300(Lcom/android/exsettings/wifi/AccessPointInfo;)Lcom/android/exsettings/wifi/WifiDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/WifiDialog;->getController()Lcom/android/exsettings/wifi/WifiConfigController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->submit(Lcom/android/exsettings/wifi/WifiConfigController;)V

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$4;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->finish()V

    goto :goto_0
.end method
