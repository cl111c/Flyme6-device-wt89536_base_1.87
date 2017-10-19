.class Lcom/android/server/PowerGuruService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerGuruService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerGuruService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerGuruService;


# direct methods
.method public constructor <init>(Lcom/android/server/PowerGuruService;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/server/PowerGuruService$UninstallReceiver;->this$0:Lcom/android/server/PowerGuruService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 498
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 499
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 502
    # getter for: Lcom/android/server/PowerGuruService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/PowerGuruService;->access$700(Lcom/android/server/PowerGuruService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 504
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 505
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    # getter for: Lcom/android/server/PowerGuruService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/PowerGuruService;->access$700(Lcom/android/server/PowerGuruService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 507
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 511
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "action":Ljava/lang/String;
    const/4 v5, 0x0

    .line 513
    .local v5, "pkgList":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 514
    .local v1, "changeType":I
    iget-object v6, p0, Lcom/android/server/PowerGuruService$UninstallReceiver;->this$0:Lcom/android/server/PowerGuruService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uninstallReceiver:onReceive,action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/server/PowerGuruService;->access$000(Lcom/android/server/PowerGuruService;Ljava/lang/String;)V

    .line 515
    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 516
    const-string v6, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 517
    const/4 v1, 0x0

    .line 544
    :goto_0
    if-eqz v5, :cond_0

    array-length v6, v5

    if-lez v6, :cond_0

    .line 546
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 547
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/PowerGuruService$UninstallReceiver;->this$0:Lcom/android/server/PowerGuruService;

    const-string v7, "uninstallReceiver:send msg"

    # invokes: Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/server/PowerGuruService;->access$000(Lcom/android/server/PowerGuruService;Ljava/lang/String;)V

    .line 548
    iget-object v6, p0, Lcom/android/server/PowerGuruService$UninstallReceiver;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;
    invoke-static {v6}, Lcom/android/server/PowerGuruService;->access$1300(Lcom/android/server/PowerGuruService;)Lcom/android/server/PowerGuruService$InternalHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/PowerGuruService$UninstallReceiver;->this$0:Lcom/android/server/PowerGuruService;

    # getter for: Lcom/android/server/PowerGuruService;->mHandler:Lcom/android/server/PowerGuruService$InternalHandler;
    invoke-static {v7}, Lcom/android/server/PowerGuruService;->access$1300(Lcom/android/server/PowerGuruService;)Lcom/android/server/PowerGuruService$InternalHandler;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8, v1, v9, v3}, Lcom/android/server/PowerGuruService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/PowerGuruService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 550
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-void

    .line 518
    :cond_1
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 519
    const-string v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 521
    iget-object v6, p0, Lcom/android/server/PowerGuruService$UninstallReceiver;->this$0:Lcom/android/server/PowerGuruService;

    const-string v7, "uninstallReceiver onReceive,EXTRA_REPLACING is true"

    # invokes: Lcom/android/server/PowerGuruService;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/server/PowerGuruService;->access$000(Lcom/android/server/PowerGuruService;Ljava/lang/String;)V

    goto :goto_1

    .line 524
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 525
    .local v2, "data":Landroid/net/Uri;
    if-eqz v2, :cond_3

    .line 526
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 527
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 528
    new-array v5, v10, [Ljava/lang/String;

    .end local v5    # "pkgList":[Ljava/lang/String;
    aput-object v4, v5, v9

    .line 531
    .end local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "pkgList":[Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    .line 532
    goto :goto_0

    .end local v2    # "data":Landroid/net/Uri;
    :cond_4
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 533
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 534
    .restart local v2    # "data":Landroid/net/Uri;
    if-eqz v2, :cond_5

    .line 535
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 536
    .restart local v4    # "pkg":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 537
    new-array v5, v10, [Ljava/lang/String;

    .end local v5    # "pkgList":[Ljava/lang/String;
    aput-object v4, v5, v9

    .line 540
    .end local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "pkgList":[Ljava/lang/String;
    :cond_5
    const/4 v1, 0x1

    .line 541
    goto :goto_0
.end method
