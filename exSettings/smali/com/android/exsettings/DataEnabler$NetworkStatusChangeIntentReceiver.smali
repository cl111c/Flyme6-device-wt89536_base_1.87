.class Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStatusChangeIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DataEnabler;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/DataEnabler;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/exsettings/DataEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/DataEnabler;Lcom/android/exsettings/DataEnabler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettings/DataEnabler;
    .param p2, "x1"    # Lcom/android/exsettings/DataEnabler$1;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;-><init>(Lcom/android/exsettings/DataEnabler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "actionStr":Ljava/lang/String;
    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    iget-object v3, p0, Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/exsettings/DataEnabler;

    iget-object v4, p0, Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mConnService:Landroid/net/ConnectivityManager;
    invoke-static {v4}, Lcom/android/exsettings/DataEnabler;->access$300(Lcom/android/exsettings/DataEnabler;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    # setter for: Lcom/android/exsettings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;
    invoke-static {v3, v4}, Lcom/android/exsettings/DataEnabler;->access$202(Lcom/android/exsettings/DataEnabler;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 138
    const-string v3, "DataEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive mMobileDataEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;
    invoke-static {v5}, Lcom/android/exsettings/DataEnabler;->access$200(Lcom/android/exsettings/DataEnabler;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v3, p0, Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/exsettings/DataEnabler;

    # invokes: Lcom/android/exsettings/DataEnabler;->isAirPlaneModeOn()Z
    invoke-static {v3}, Lcom/android/exsettings/DataEnabler;->access$400(Lcom/android/exsettings/DataEnabler;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/exsettings/DataEnabler;

    invoke-virtual {v3}, Lcom/android/exsettings/DataEnabler;->hasIccCard()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    iget-object v2, p0, Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/exsettings/DataEnabler;->access$500(Lcom/android/exsettings/DataEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 141
    iget-object v1, p0, Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/exsettings/DataEnabler;->access$500(Lcom/android/exsettings/DataEnabler;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/exsettings/DataEnabler;->access$200(Lcom/android/exsettings/DataEnabler;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/exsettings/DataEnabler;->access$500(Lcom/android/exsettings/DataEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 145
    :cond_2
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/exsettings/DataEnabler;->access$500(Lcom/android/exsettings/DataEnabler;)Landroid/widget/Switch;

    move-result-object v3

    const-string v4, "state"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/exsettings/DataEnabler;

    invoke-virtual {v4}, Lcom/android/exsettings/DataEnabler;->hasIccCard()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 147
    const-string v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 148
    iget-object v1, p0, Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/exsettings/DataEnabler;->access$500(Lcom/android/exsettings/DataEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 146
    goto :goto_1

    .line 150
    :cond_4
    iget-object v1, p0, Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/exsettings/DataEnabler;

    iget-object v2, p0, Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mConnService:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/exsettings/DataEnabler;->access$300(Lcom/android/exsettings/DataEnabler;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # setter for: Lcom/android/exsettings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/android/exsettings/DataEnabler;->access$202(Lcom/android/exsettings/DataEnabler;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 151
    iget-object v1, p0, Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/exsettings/DataEnabler;->access$500(Lcom/android/exsettings/DataEnabler;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/exsettings/DataEnabler;

    # getter for: Lcom/android/exsettings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/exsettings/DataEnabler;->access$200(Lcom/android/exsettings/DataEnabler;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
