.class Lcom/android/exsettings/wifi/CmccSimCardStatusChangeReceiver$1;
.super Ljava/lang/Object;
.source "CmccSimCardStatusChangeReceiver.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/CmccSimCardStatusChangeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/CmccSimCardStatusChangeReceiver;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/CmccSimCardStatusChangeReceiver;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/exsettings/wifi/CmccSimCardStatusChangeReceiver$1;->this$0:Lcom/android/exsettings/wifi/CmccSimCardStatusChangeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 34
    # getter for: Lcom/android/exsettings/wifi/CmccSimCardStatusChangeReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/exsettings/wifi/CmccSimCardStatusChangeReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Recevice save config failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
