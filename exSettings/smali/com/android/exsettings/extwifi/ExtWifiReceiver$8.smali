.class Lcom/android/exsettings/extwifi/ExtWifiReceiver$8;
.super Ljava/lang/Object;
.source "ExtWifiReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/extwifi/ExtWifiReceiver;->showWifiDisconnectedDlg_noRemind()V
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
    .line 527
    iput-object p1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$8;->this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$8;->this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    # getter for: Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mUserConfirmed:Z
    invoke-static {v0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->access$500(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$8;->this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    # getter for: Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->access$600(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 532
    :cond_0
    return-void
.end method
