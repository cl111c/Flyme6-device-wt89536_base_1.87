.class Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 61
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->handleStateChanged(I)V

    .line 62
    return-void
.end method
