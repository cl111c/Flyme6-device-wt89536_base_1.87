.class Lcom/android/exsettings/sim/SimDialogActivity$1;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/sim/SimDialogActivity;->displayPreferredDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/sim/SimDialogActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sir:Landroid/telephony/SubscriptionInfo;


# direct methods
.method constructor <init>(Lcom/android/exsettings/sim/SimDialogActivity;Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/exsettings/sim/SimDialogActivity$1;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    iput-object p2, p0, Lcom/android/exsettings/sim/SimDialogActivity$1;->val$sir:Landroid/telephony/SubscriptionInfo;

    iput-object p3, p0, Lcom/android/exsettings/sim/SimDialogActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 124
    iget-object v2, p0, Lcom/android/exsettings/sim/SimDialogActivity$1;->val$sir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 125
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/exsettings/sim/SimDialogActivity$1;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    # invokes: Lcom/android/exsettings/sim/SimDialogActivity;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    invoke-static {v2, v1}, Lcom/android/exsettings/sim/SimDialogActivity;->access$000(Lcom/android/exsettings/sim/SimDialogActivity;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 127
    .local v0, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v2, p0, Lcom/android/exsettings/sim/SimDialogActivity$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/exsettings/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V
    invoke-static {v2, v1}, Lcom/android/exsettings/sim/SimDialogActivity;->access$100(Landroid/content/Context;I)V

    .line 128
    iget-object v2, p0, Lcom/android/exsettings/sim/SimDialogActivity$1;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    # invokes: Lcom/android/exsettings/sim/SimDialogActivity;->setUserPrefDataSubIdInDb(I)V
    invoke-static {v2, v1}, Lcom/android/exsettings/sim/SimDialogActivity;->access$200(Lcom/android/exsettings/sim/SimDialogActivity;I)V

    .line 129
    iget-object v2, p0, Lcom/android/exsettings/sim/SimDialogActivity$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/exsettings/sim/SimDialogActivity;->setDefaultSmsSubId(Landroid/content/Context;I)V
    invoke-static {v2, v1}, Lcom/android/exsettings/sim/SimDialogActivity;->access$300(Landroid/content/Context;I)V

    .line 130
    iget-object v2, p0, Lcom/android/exsettings/sim/SimDialogActivity$1;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    # invokes: Lcom/android/exsettings/sim/SimDialogActivity;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    invoke-static {v2, v0}, Lcom/android/exsettings/sim/SimDialogActivity;->access$400(Lcom/android/exsettings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    .line 131
    iget-object v2, p0, Lcom/android/exsettings/sim/SimDialogActivity$1;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    invoke-virtual {v2}, Lcom/android/exsettings/sim/SimDialogActivity;->finish()V

    .line 132
    return-void
.end method
