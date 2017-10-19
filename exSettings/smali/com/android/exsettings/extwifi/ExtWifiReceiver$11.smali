.class Lcom/android/exsettings/extwifi/ExtWifiReceiver$11;
.super Ljava/lang/Object;
.source "ExtWifiReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 631
    iput-object p1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$11;->this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 633
    const/4 v0, 0x0

    # setter for: Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mCellularToWlanDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->access$802(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 634
    return-void
.end method
