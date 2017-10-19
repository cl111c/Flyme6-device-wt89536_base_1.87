.class Lcom/android/exsettings/deviceinfo/SimStatus$2;
.super Ljava/lang/Object;
.source "SimStatus.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/deviceinfo/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lcom/android/exsettings/deviceinfo/SimStatus;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/SimStatus$2;->this$0:Lcom/android/exsettings/deviceinfo/SimStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 469
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 470
    .local v0, "slotId":I
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus$2;->this$0:Lcom/android/exsettings/deviceinfo/SimStatus;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus$2;->this$0:Lcom/android/exsettings/deviceinfo/SimStatus;

    # getter for: Lcom/android/exsettings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;
    invoke-static {v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->access$600(Lcom/android/exsettings/deviceinfo/SimStatus;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    # setter for: Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v2, v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->access$002(Lcom/android/exsettings/deviceinfo/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    .line 471
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus$2;->this$0:Lcom/android/exsettings/deviceinfo/SimStatus;

    # getter for: Lcom/android/exsettings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->access$700(Lcom/android/exsettings/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus$2;->this$0:Lcom/android/exsettings/deviceinfo/SimStatus;

    # getter for: Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->access$800(Lcom/android/exsettings/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus$2;->this$0:Lcom/android/exsettings/deviceinfo/SimStatus;

    # getter for: Lcom/android/exsettings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v2}, Lcom/android/exsettings/deviceinfo/SimStatus;->access$700(Lcom/android/exsettings/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus$2;->this$0:Lcom/android/exsettings/deviceinfo/SimStatus;

    # invokes: Lcom/android/exsettings/deviceinfo/SimStatus;->updatePhoneInfos()V
    invoke-static {v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->access$900(Lcom/android/exsettings/deviceinfo/SimStatus;)V

    .line 477
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus$2;->this$0:Lcom/android/exsettings/deviceinfo/SimStatus;

    # getter for: Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->access$800(Lcom/android/exsettings/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus$2;->this$0:Lcom/android/exsettings/deviceinfo/SimStatus;

    # getter for: Lcom/android/exsettings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v2}, Lcom/android/exsettings/deviceinfo/SimStatus;->access$700(Lcom/android/exsettings/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    const/16 v3, 0x141

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 481
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus$2;->this$0:Lcom/android/exsettings/deviceinfo/SimStatus;

    # invokes: Lcom/android/exsettings/deviceinfo/SimStatus;->updateDataState()V
    invoke-static {v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->access$300(Lcom/android/exsettings/deviceinfo/SimStatus;)V

    .line 482
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus$2;->this$0:Lcom/android/exsettings/deviceinfo/SimStatus;

    # invokes: Lcom/android/exsettings/deviceinfo/SimStatus;->updateNetworkType()V
    invoke-static {v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->access$400(Lcom/android/exsettings/deviceinfo/SimStatus;)V

    .line 483
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus$2;->this$0:Lcom/android/exsettings/deviceinfo/SimStatus;

    # invokes: Lcom/android/exsettings/deviceinfo/SimStatus;->updatePreference()V
    invoke-static {v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->access$1000(Lcom/android/exsettings/deviceinfo/SimStatus;)V

    .line 484
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus$2;->this$0:Lcom/android/exsettings/deviceinfo/SimStatus;

    # invokes: Lcom/android/exsettings/deviceinfo/SimStatus;->queryCbAreaInfoIfneeded()V
    invoke-static {v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->access$1100(Lcom/android/exsettings/deviceinfo/SimStatus;)V

    .line 485
    return-void
.end method
