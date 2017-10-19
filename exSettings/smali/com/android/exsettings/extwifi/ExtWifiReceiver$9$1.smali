.class Lcom/android/exsettings/extwifi/ExtWifiReceiver$9$1;
.super Ljava/lang/Object;
.source "ExtWifiReceiver.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/extwifi/ExtWifiReceiver$9;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/extwifi/ExtWifiReceiver$9;


# direct methods
.method constructor <init>(Lcom/android/exsettings/extwifi/ExtWifiReceiver$9;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$9$1;->this$1:Lcom/android/exsettings/extwifi/ExtWifiReceiver$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 614
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 611
    return-void
.end method
