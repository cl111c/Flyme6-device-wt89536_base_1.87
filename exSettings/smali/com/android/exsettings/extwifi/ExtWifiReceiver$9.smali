.class Lcom/android/exsettings/extwifi/ExtWifiReceiver$9;
.super Ljava/lang/Object;
.source "ExtWifiReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/extwifi/ExtWifiReceiver;->promptCellular2WlanDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;


# direct methods
.method constructor <init>(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$9;->this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$9;->this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    # getter for: Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->access$300(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$9;->this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    # getter for: Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->access$300(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$9;->this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    # getter for: Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mHighestPriorityNetworkId:I
    invoke-static {v1}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->access$700(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)I

    move-result v1

    new-instance v2, Lcom/android/exsettings/extwifi/ExtWifiReceiver$9$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver$9$1;-><init>(Lcom/android/exsettings/extwifi/ExtWifiReceiver$9;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 617
    :cond_0
    return-void
.end method
