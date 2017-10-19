.class Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/TetherSettings;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/exsettings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/TetherSettings;Lcom/android/exsettings/TetherSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettings/TetherSettings;
    .param p2, "x1"    # Lcom/android/exsettings/TetherSettings$1;

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/exsettings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 307
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 310
    const-string v5, "availableArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 312
    .local v2, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "activeArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 314
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "erroredArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 316
    .local v4, "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/exsettings/TetherSettings;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    # invokes: Lcom/android/exsettings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v8, v5, v6, v7}, Lcom/android/exsettings/TetherSettings;->access$100(Lcom/android/exsettings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 351
    .end local v1    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const-string v5, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 320
    iget-object v5, p0, Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/exsettings/TetherSettings;

    # setter for: Lcom/android/exsettings/TetherSettings;->mMassStorageActive:Z
    invoke-static {v5, v8}, Lcom/android/exsettings/TetherSettings;->access$202(Lcom/android/exsettings/TetherSettings;Z)Z

    .line 321
    iget-object v5, p0, Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/exsettings/TetherSettings;

    # invokes: Lcom/android/exsettings/TetherSettings;->updateState()V
    invoke-static {v5}, Lcom/android/exsettings/TetherSettings;->access$300(Lcom/android/exsettings/TetherSettings;)V

    goto :goto_0

    .line 322
    :cond_2
    const-string v5, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 323
    iget-object v5, p0, Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/exsettings/TetherSettings;

    # setter for: Lcom/android/exsettings/TetherSettings;->mMassStorageActive:Z
    invoke-static {v5, v7}, Lcom/android/exsettings/TetherSettings;->access$202(Lcom/android/exsettings/TetherSettings;Z)Z

    .line 324
    iget-object v5, p0, Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/exsettings/TetherSettings;

    # invokes: Lcom/android/exsettings/TetherSettings;->updateState()V
    invoke-static {v5}, Lcom/android/exsettings/TetherSettings;->access$300(Lcom/android/exsettings/TetherSettings;)V

    goto :goto_0

    .line 325
    :cond_3
    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 326
    iget-object v5, p0, Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/exsettings/TetherSettings;

    const-string v6, "connected"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    # setter for: Lcom/android/exsettings/TetherSettings;->mUsbConnected:Z
    invoke-static {v5, v6}, Lcom/android/exsettings/TetherSettings;->access$402(Lcom/android/exsettings/TetherSettings;Z)Z

    .line 327
    iget-object v5, p0, Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/exsettings/TetherSettings;

    # invokes: Lcom/android/exsettings/TetherSettings;->updateState()V
    invoke-static {v5}, Lcom/android/exsettings/TetherSettings;->access$300(Lcom/android/exsettings/TetherSettings;)V

    goto :goto_0

    .line 328
    :cond_4
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 329
    iget-object v5, p0, Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/exsettings/TetherSettings;

    # getter for: Lcom/android/exsettings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v5}, Lcom/android/exsettings/TetherSettings;->access$500(Lcom/android/exsettings/TetherSettings;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 330
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x80000000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 349
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/exsettings/TetherSettings;

    # invokes: Lcom/android/exsettings/TetherSettings;->updateState()V
    invoke-static {v5}, Lcom/android/exsettings/TetherSettings;->access$300(Lcom/android/exsettings/TetherSettings;)V

    goto :goto_0

    .line 333
    :sswitch_0
    iget-object v5, p0, Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/exsettings/TetherSettings;

    # getter for: Lcom/android/exsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v5}, Lcom/android/exsettings/TetherSettings;->access$000(Lcom/android/exsettings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothPan;

    .line 334
    .local v3, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v3, :cond_5

    .line 335
    invoke-virtual {v3, v8}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 336
    iget-object v5, p0, Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/exsettings/TetherSettings;

    # setter for: Lcom/android/exsettings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v5, v7}, Lcom/android/exsettings/TetherSettings;->access$502(Lcom/android/exsettings/TetherSettings;Z)Z

    goto :goto_1

    .line 342
    .end local v3    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :sswitch_1
    iget-object v5, p0, Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/exsettings/TetherSettings;

    # setter for: Lcom/android/exsettings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v5, v7}, Lcom/android/exsettings/TetherSettings;->access$502(Lcom/android/exsettings/TetherSettings;Z)Z

    goto :goto_1

    .line 330
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
