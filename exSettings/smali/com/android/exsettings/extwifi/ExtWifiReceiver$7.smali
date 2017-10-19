.class Lcom/android/exsettings/extwifi/ExtWifiReceiver$7;
.super Ljava/lang/Object;
.source "ExtWifiReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 516
    iput-object p1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$7;->this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 518
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$7;->this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    # setter for: Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mUserConfirmed:Z
    invoke-static {v0, v2}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->access$502(Lcom/android/exsettings/extwifi/ExtWifiReceiver;Z)Z

    .line 519
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$7;->this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    # getter for: Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->access$600(Lcom/android/exsettings/extwifi/ExtWifiReceiver;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 520
    return-void
.end method
