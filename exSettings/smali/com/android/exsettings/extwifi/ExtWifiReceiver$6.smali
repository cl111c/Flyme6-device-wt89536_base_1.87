.class Lcom/android/exsettings/extwifi/ExtWifiReceiver$6;
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
    .line 510
    iput-object p1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$6;->this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$6;->this$0:Lcom/android/exsettings/extwifi/ExtWifiReceiver;

    const/4 v1, 0x0

    # setter for: Lcom/android/exsettings/extwifi/ExtWifiReceiver;->mUserConfirmed:Z
    invoke-static {v0, v1}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->access$502(Lcom/android/exsettings/extwifi/ExtWifiReceiver;Z)Z

    .line 513
    return-void
.end method
