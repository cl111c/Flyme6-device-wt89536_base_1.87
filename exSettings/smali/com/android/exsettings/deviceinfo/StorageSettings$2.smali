.class Lcom/android/exsettings/deviceinfo/StorageSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/deviceinfo/StorageSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/deviceinfo/StorageSettings;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings$2;->this$0:Lcom/android/exsettings/deviceinfo/StorageSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 378
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    const-string v2, "connected"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 381
    .local v1, "isUsbConnected":Z
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageSettings$2;->this$0:Lcom/android/exsettings/deviceinfo/StorageSettings;

    # setter for: Lcom/android/exsettings/deviceinfo/StorageSettings;->mIsUsbConnected:Z
    invoke-static {v2, v1}, Lcom/android/exsettings/deviceinfo/StorageSettings;->access$202(Lcom/android/exsettings/deviceinfo/StorageSettings;Z)Z

    .line 382
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageSettings$2;->this$0:Lcom/android/exsettings/deviceinfo/StorageSettings;

    invoke-virtual {v2}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 384
    .end local v1    # "isUsbConnected":Z
    :cond_0
    return-void
.end method
