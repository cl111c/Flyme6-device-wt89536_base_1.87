.class public final Lcom/android/exsettings/bluetooth/BluetoothPairingRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "action":Ljava/lang/String;
    const-string v20, "android.bluetooth.device.action.PAIRING_REQUEST"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 54
    const-string v20, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 56
    .local v6, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v20, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v21, -0x80000000

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 58
    .local v19, "type":I
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v13, "pairingIntent":Landroid/content/Intent;
    const-class v20, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 60
    const-string v20, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 61
    const-string v20, "android.bluetooth.device.extra.PAIRING_VARIANT"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 65
    :cond_0
    const-string v20, "android.bluetooth.device.extra.PAIRING_KEY"

    const/high16 v21, -0x80000000

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 67
    .local v14, "pairingKey":I
    const-string v20, "android.bluetooth.device.extra.PAIRING_KEY"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    .end local v14    # "pairingKey":I
    :cond_1
    const-string v20, "android.bluetooth.device.action.PAIRING_REQUEST"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    const-string v20, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PowerManager;

    .line 74
    .local v16, "powerManager":Landroid/os/PowerManager;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, "deviceAddress":Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, "deviceName":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Lcom/android/exsettings/bluetooth/LocalBluetoothPreferences;->shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    .line 80
    .local v18, "shouldShowDialog":Z
    const-string v20, "keyguard"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/KeyguardManager;

    .line 81
    .local v9, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v20

    if-nez v20, :cond_5

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 84
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 145
    .end local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "deviceAddress":Ljava/lang/String;
    .end local v8    # "deviceName":Ljava/lang/String;
    .end local v9    # "keyguardManager":Landroid/app/KeyguardManager;
    .end local v13    # "pairingIntent":Landroid/content/Intent;
    .end local v16    # "powerManager":Landroid/os/PowerManager;
    .end local v18    # "shouldShowDialog":Z
    .end local v19    # "type":I
    :cond_2
    :goto_2
    return-void

    .line 74
    .restart local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v13    # "pairingIntent":Landroid/content/Intent;
    .restart local v16    # "powerManager":Landroid/os/PowerManager;
    .restart local v19    # "type":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 75
    .restart local v7    # "deviceAddress":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 87
    .restart local v8    # "deviceName":Ljava/lang/String;
    .restart local v9    # "keyguardManager":Landroid/app/KeyguardManager;
    .restart local v18    # "shouldShowDialog":Z
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 88
    .local v17, "res":Landroid/content/res/Resources;
    new-instance v20, Landroid/app/Notification$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v21, 0x1080080

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v20

    const v21, 0x7f0c00cb

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 92
    .local v5, "builder":Landroid/app/Notification$Builder;
    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 95
    .local v15, "pending":Landroid/app/PendingIntent;
    const-string v20, "android.bluetooth.device.extra.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 96
    .local v11, "name":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 97
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v11

    .line 101
    :cond_6
    :goto_3
    const v20, 0x7f0c00cc

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    const v21, 0x7f0c00cd

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v11, v22, v23

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v20

    const v21, 0x1060059

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 109
    const-string v20, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 111
    .local v10, "manager":Landroid/app/NotificationManager;
    const v20, 0x1080080

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_2

    .line 97
    .end local v10    # "manager":Landroid/app/NotificationManager;
    :cond_7
    const v20, 0x104000e

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 114
    .end local v5    # "builder":Landroid/app/Notification$Builder;
    .end local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "deviceAddress":Ljava/lang/String;
    .end local v8    # "deviceName":Ljava/lang/String;
    .end local v9    # "keyguardManager":Landroid/app/KeyguardManager;
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "pairingIntent":Landroid/content/Intent;
    .end local v15    # "pending":Landroid/app/PendingIntent;
    .end local v16    # "powerManager":Landroid/os/PowerManager;
    .end local v17    # "res":Landroid/content/res/Resources;
    .end local v18    # "shouldShowDialog":Z
    .end local v19    # "type":I
    :cond_8
    const-string v20, "android.bluetooth.device.action.PAIRING_CANCEL"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 115
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 117
    .restart local v13    # "pairingIntent":Landroid/content/Intent;
    const-class v20, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 118
    const-string v20, "android.bluetooth.device.action.PAIRING_REQUEST"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    const/16 v20, 0x0

    const/high16 v21, 0x20000000

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 122
    .restart local v15    # "pending":Landroid/app/PendingIntent;
    if-eqz v15, :cond_9

    .line 123
    invoke-virtual {v15}, Landroid/app/PendingIntent;->cancel()V

    .line 127
    :cond_9
    const-string v20, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 129
    .restart local v10    # "manager":Landroid/app/NotificationManager;
    const v20, 0x1080080

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_2

    .line 131
    .end local v10    # "manager":Landroid/app/NotificationManager;
    .end local v13    # "pairingIntent":Landroid/content/Intent;
    .end local v15    # "pending":Landroid/app/PendingIntent;
    :cond_a
    const-string v20, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 132
    const-string v20, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v21, -0x80000000

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 134
    .local v4, "bondState":I
    const-string v20, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    const/high16 v21, -0x80000000

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 136
    .local v12, "oldState":I
    const/16 v20, 0xb

    move/from16 v0, v20

    if-ne v12, v0, :cond_2

    const/16 v20, 0xa

    move/from16 v0, v20

    if-eq v4, v0, :cond_b

    const/16 v20, 0xc

    move/from16 v0, v20

    if-ne v4, v0, :cond_2

    .line 140
    :cond_b
    const-string v20, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 142
    .restart local v10    # "manager":Landroid/app/NotificationManager;
    const v20, 0x1080080

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_2
.end method
