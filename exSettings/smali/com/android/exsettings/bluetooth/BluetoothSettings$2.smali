.class Lcom/android/exsettings/bluetooth/BluetoothSettings$2;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/bluetooth/BluetoothSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/bluetooth/BluetoothSettings;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/exsettings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/exsettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/exsettings/bluetooth/BluetoothSettings;

    # invokes: Lcom/android/exsettings/bluetooth/BluetoothSettings;->startScanning()V
    invoke-static {v0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->access$100(Lcom/android/exsettings/bluetooth/BluetoothSettings;)V

    .line 200
    :cond_0
    return-void
.end method
