.class Lcom/android/exsettings/bluetooth/BluetoothSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/bluetooth/BluetoothSettings;
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
    .line 131
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateDeviceName(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 138
    .local v1, "state":I
    const-string v2, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-direct {p0, p1}, Lcom/android/exsettings/bluetooth/BluetoothSettings$1;->updateDeviceName(Landroid/content/Context;)V

    .line 142
    :cond_0
    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothSettings;

    const/4 v3, 0x1

    # setter for: Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z
    invoke-static {v2, v3}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->access$002(Lcom/android/exsettings/bluetooth/BluetoothSettings;Z)Z

    .line 145
    :cond_1
    return-void
.end method
