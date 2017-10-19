.class Lcom/android/exsettings/deviceinfo/SimStatus$AreaInfoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/deviceinfo/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AreaInfoReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/deviceinfo/SimStatus;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/deviceinfo/SimStatus;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/SimStatus$AreaInfoReceiver;->this$0:Lcom/android/exsettings/deviceinfo/SimStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/deviceinfo/SimStatus;Lcom/android/exsettings/deviceinfo/SimStatus$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettings/deviceinfo/SimStatus;
    .param p2, "x1"    # Lcom/android/exsettings/deviceinfo/SimStatus$1;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/exsettings/deviceinfo/SimStatus$AreaInfoReceiver;-><init>(Lcom/android/exsettings/deviceinfo/SimStatus;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 131
    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 142
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 134
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    const-string v4, "message"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellBroadcastMessage;

    .line 135
    .local v1, "cbMessage":Landroid/telephony/CellBroadcastMessage;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getServiceCategory()I

    move-result v4

    const/16 v5, 0x32

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/SimStatus$AreaInfoReceiver;->this$0:Lcom/android/exsettings/deviceinfo/SimStatus;

    # getter for: Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v4}, Lcom/android/exsettings/deviceinfo/SimStatus;->access$000(Lcom/android/exsettings/deviceinfo/SimStatus;)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getSubId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 138
    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "latestAreaInfo":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/SimStatus$AreaInfoReceiver;->this$0:Lcom/android/exsettings/deviceinfo/SimStatus;

    # invokes: Lcom/android/exsettings/deviceinfo/SimStatus;->updateAreaInfo(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/android/exsettings/deviceinfo/SimStatus;->access$100(Lcom/android/exsettings/deviceinfo/SimStatus;Ljava/lang/String;)V

    goto :goto_0
.end method
