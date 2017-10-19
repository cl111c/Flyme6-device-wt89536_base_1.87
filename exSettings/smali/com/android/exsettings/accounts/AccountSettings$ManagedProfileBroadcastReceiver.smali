.class Lcom/android/exsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagedProfileBroadcastReceiver"
.end annotation


# instance fields
.field private listeningToManagedProfileEvents:Z

.field final synthetic this$0:Lcom/android/exsettings/accounts/AccountSettings;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/accounts/AccountSettings;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/exsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/exsettings/accounts/AccountSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/accounts/AccountSettings;Lcom/android/exsettings/accounts/AccountSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettings/accounts/AccountSettings;
    .param p2, "x1"    # Lcom/android/exsettings/accounts/AccountSettings$1;

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/android/exsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/exsettings/accounts/AccountSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 606
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    :cond_0
    const-string v0, "AccountSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/exsettings/accounts/AccountSettings;

    # invokes: Lcom/android/exsettings/accounts/AccountSettings;->stopListeningToAccountUpdates()V
    invoke-static {v0}, Lcom/android/exsettings/accounts/AccountSettings;->access$400(Lcom/android/exsettings/accounts/AccountSettings;)V

    .line 611
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/exsettings/accounts/AccountSettings;

    # invokes: Lcom/android/exsettings/accounts/AccountSettings;->cleanUpPreferences()V
    invoke-static {v0}, Lcom/android/exsettings/accounts/AccountSettings;->access$500(Lcom/android/exsettings/accounts/AccountSettings;)V

    .line 613
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/exsettings/accounts/AccountSettings;

    invoke-virtual {v0}, Lcom/android/exsettings/accounts/AccountSettings;->updateUi()V

    .line 614
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/exsettings/accounts/AccountSettings;

    # invokes: Lcom/android/exsettings/accounts/AccountSettings;->listenToAccountUpdates()V
    invoke-static {v0}, Lcom/android/exsettings/accounts/AccountSettings;->access$600(Lcom/android/exsettings/accounts/AccountSettings;)V

    .line 617
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/exsettings/accounts/AccountSettings;

    invoke-virtual {v0}, Lcom/android/exsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 621
    :goto_0
    return-void

    .line 620
    :cond_1
    const-string v0, "AccountSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot handle received broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 624
    iget-boolean v1, p0, Lcom/android/exsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->listeningToManagedProfileEvents:Z

    if-nez v1, :cond_0

    .line 625
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 626
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 627
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 629
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->listeningToManagedProfileEvents:Z

    .line 631
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/android/exsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->listeningToManagedProfileEvents:Z

    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->listeningToManagedProfileEvents:Z

    .line 638
    :cond_0
    return-void
.end method
