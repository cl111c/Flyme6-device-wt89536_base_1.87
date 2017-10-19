.class Lcom/android/exsettings/bluetooth/BluetoothDevicePreference$1;
.super Ljava/lang/Object;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->askDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 225
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    invoke-static {v0}, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->access$000(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->access$200(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    return-void
.end method
