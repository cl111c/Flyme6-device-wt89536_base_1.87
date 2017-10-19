.class Lcom/android/exsettings/sim/SimSettings$4;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/exsettings/sim/SimSettings$4;->this$0:Lcom/android/exsettings/sim/SimSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "value"    # I

    .prologue
    .line 637
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$4;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/exsettings/sim/SimSettings;->access$500(Lcom/android/exsettings/sim/SimSettings;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$4;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->selectValue:I
    invoke-static {v4}, Lcom/android/exsettings/sim/SimSettings;->access$400(Lcom/android/exsettings/sim/SimSettings;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 638
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 639
    .local v1, "preferredSubID":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 640
    .local v0, "defaultDataSubId":I
    const-string v3, "SimSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick selectValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/sim/SimSettings$4;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->selectValue:I
    invoke-static {v5}, Lcom/android/exsettings/sim/SimSettings;->access$400(Lcom/android/exsettings/sim/SimSettings;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",preferredSubID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",default="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    if-eq v1, v0, :cond_0

    .line 643
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$4;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v3}, Lcom/android/exsettings/sim/SimSettings;->access$600(Lcom/android/exsettings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 644
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$4;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/exsettings/sim/SimSettings;->access$700(Lcom/android/exsettings/sim/SimSettings;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09cd

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 645
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$4;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # invokes: Lcom/android/exsettings/sim/SimSettings;->setUserPrefDataSubIdInDb(I)V
    invoke-static {v3, v1}, Lcom/android/exsettings/sim/SimSettings;->access$800(Lcom/android/exsettings/sim/SimSettings;I)V

    .line 647
    :cond_0
    return-void
.end method
