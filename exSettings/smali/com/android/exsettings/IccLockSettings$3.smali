.class Lcom/android/exsettings/IccLockSettings$3;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/IccLockSettings;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/exsettings/IccLockSettings$3;->this$0:Lcom/android/exsettings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 492
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 493
    .local v1, "slotId":I
    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings$3;->this$0:Lcom/android/exsettings/IccLockSettings;

    invoke-virtual {v2}, Lcom/android/exsettings/IccLockSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 496
    .local v0, "sir":Landroid/telephony/SubscriptionInfo;
    iget-object v3, p0, Lcom/android/exsettings/IccLockSettings$3;->this$0:Lcom/android/exsettings/IccLockSettings;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    # setter for: Lcom/android/exsettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v2}, Lcom/android/exsettings/IccLockSettings;->access$402(Lcom/android/exsettings/IccLockSettings;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 500
    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings$3;->this$0:Lcom/android/exsettings/IccLockSettings;

    # invokes: Lcom/android/exsettings/IccLockSettings;->updatePreferences()V
    invoke-static {v2}, Lcom/android/exsettings/IccLockSettings;->access$200(Lcom/android/exsettings/IccLockSettings;)V

    .line 501
    return-void

    .line 496
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    goto :goto_0
.end method
