.class Lcom/android/exsettings/extwifi/ExtWifiReceiver$3;
.super Ljava/lang/Object;
.source "ExtWifiReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/extwifi/ExtWifiReceiver;->showSelectSsidDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;

.field final synthetic val$dataToWifiConnectType:I


# direct methods
.method constructor <init>(Lcom/android/exsettings/extwifi/ExtWifiReceiver;I)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$3;->this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    iput p2, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$3;->val$dataToWifiConnectType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 409
    iget v1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$3;->val$dataToWifiConnectType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 410
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 411
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 413
    iget-object v1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$3;->this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    # getter for: Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->access$000(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 426
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget v1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$3;->val$dataToWifiConnectType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 415
    iget-object v1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$3;->this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    # getter for: Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->access$300(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$3;->this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    # getter for: Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mBestSignalNID:I
    invoke-static {v2}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->access$200(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)I

    move-result v2

    new-instance v3, Lcom/android/exsettings/extwifi/ExtWifiReceiver$3$1;

    invoke-direct {v3, p0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver$3$1;-><init>(Lcom/android/exsettings/extwifi/ExtWifiReceiver$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method
