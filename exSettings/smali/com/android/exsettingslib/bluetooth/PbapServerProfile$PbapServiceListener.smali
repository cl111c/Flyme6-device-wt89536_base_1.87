.class final Lcom/android/exsettingslib/bluetooth/PbapServerProfile$PbapServiceListener;
.super Ljava/lang/Object;
.source "PbapServerProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothPbap$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettingslib/bluetooth/PbapServerProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PbapServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettingslib/bluetooth/PbapServerProfile;


# direct methods
.method private constructor <init>(Lcom/android/exsettingslib/bluetooth/PbapServerProfile;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/exsettingslib/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettingslib/bluetooth/PbapServerProfile;Lcom/android/exsettingslib/bluetooth/PbapServerProfile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettingslib/bluetooth/PbapServerProfile;
    .param p2, "x1"    # Lcom/android/exsettingslib/bluetooth/PbapServerProfile$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/exsettingslib/bluetooth/PbapServerProfile$PbapServiceListener;-><init>(Lcom/android/exsettingslib/bluetooth/PbapServerProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/bluetooth/BluetoothPbap;)V
    .locals 2
    .param p1, "proxy"    # Landroid/bluetooth/BluetoothPbap;

    .prologue
    .line 57
    # getter for: Lcom/android/exsettingslib/bluetooth/PbapServerProfile;->V:Z
    invoke-static {}, Lcom/android/exsettingslib/bluetooth/PbapServerProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PbapServerProfile"

    const-string v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    # setter for: Lcom/android/exsettingslib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;
    invoke-static {v0, p1}, Lcom/android/exsettingslib/bluetooth/PbapServerProfile;->access$102(Lcom/android/exsettingslib/bluetooth/PbapServerProfile;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;

    .line 59
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    const/4 v1, 0x1

    # setter for: Lcom/android/exsettingslib/bluetooth/PbapServerProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/exsettingslib/bluetooth/PbapServerProfile;->access$202(Lcom/android/exsettingslib/bluetooth/PbapServerProfile;Z)Z

    .line 60
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 63
    # getter for: Lcom/android/exsettingslib/bluetooth/PbapServerProfile;->V:Z
    invoke-static {}, Lcom/android/exsettingslib/bluetooth/PbapServerProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PbapServerProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    const/4 v1, 0x0

    # setter for: Lcom/android/exsettingslib/bluetooth/PbapServerProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/exsettingslib/bluetooth/PbapServerProfile;->access$202(Lcom/android/exsettingslib/bluetooth/PbapServerProfile;Z)Z

    .line 65
    return-void
.end method
