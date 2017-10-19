.class Lcom/android/exsettings/extwifi/ExtWifiReceiver$3$1;
.super Ljava/lang/Object;
.source "ExtWifiReceiver.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/extwifi/ExtWifiReceiver$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/extwifi/ExtWifiReceiver$3;


# direct methods
.method constructor <init>(Lcom/android/exsettings/extwifi/ExtWifiReceiver$3;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/exsettings/extwifi/ExtWifiReceiver$3$1;->this$1:Lcom/android/exsettings/extwifi/ExtWifiReceiver$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 423
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 419
    return-void
.end method
