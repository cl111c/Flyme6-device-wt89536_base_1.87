.class Lcom/android/exsettings/wifi/CmccAutoLoginDialog$1;
.super Ljava/lang/Object;
.source "CmccAutoLoginDialog.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/CmccAutoLoginDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/CmccAutoLoginDialog;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$1;->this$0:Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 61
    const-string v0, "CmccAutoLoginDialog"

    const-string v1, "Recevice save config failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
