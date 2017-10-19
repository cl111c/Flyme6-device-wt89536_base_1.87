.class Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;
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
    name = "AdapterStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;
    .param p2, "x1"    # Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$1;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 166
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x80000000

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 169
    .local v5, "state":I
    iget-object v6, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;
    invoke-static {v6}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 170
    iget-object v6, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 171
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string v6, "is_first_boot"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 172
    .local v3, "isFirstBoot":Z
    if-eqz v3, :cond_0

    const/16 v6, 0xc

    if-ne v5, v6, :cond_0

    .line 173
    iget-object v6, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    # invokes: Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->setDefaultBtName()V
    invoke-static {v6}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)V

    .line 174
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 175
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v6, "is_first_boot"

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v6, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v6}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->access$1400(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v7

    monitor-enter v7

    .line 180
    :try_start_0
    iget-object v6, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v6}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->access$1400(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/bluetooth/BluetoothCallback;

    .line 181
    .local v0, "callback":Lcom/android/exsettingslib/bluetooth/BluetoothCallback;
    invoke-interface {v0, v5}, Lcom/android/exsettingslib/bluetooth/BluetoothCallback;->onBluetoothStateChanged(I)V

    goto :goto_0

    .line 183
    .end local v0    # "callback":Lcom/android/exsettingslib/bluetooth/BluetoothCallback;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    iget-object v6, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v6}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->access$1500(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->onBluetoothStateChanged(I)V

    .line 186
    return-void
.end method
