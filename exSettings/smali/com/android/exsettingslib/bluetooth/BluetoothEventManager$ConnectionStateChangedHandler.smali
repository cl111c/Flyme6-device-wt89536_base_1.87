.class Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;->this$0:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;
    .param p2, "x1"    # Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$1;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 232
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;->this$0:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v2}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->access$1500(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 233
    .local v0, "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    const-string v2, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 235
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;->this$0:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    # invokes: Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->dispatchConnectionStateChanged(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;I)V
    invoke-static {v2, v0, v1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->access$1700(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;I)V

    .line 236
    return-void
.end method
