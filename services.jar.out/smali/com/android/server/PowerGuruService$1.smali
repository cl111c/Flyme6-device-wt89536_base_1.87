.class Lcom/android/server/PowerGuruService$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerGuruService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PowerGuruService;->registerForBroadcasts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerGuruService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerGuruService;)V
    .locals 0

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/android/server/PowerGuruService$1;->this$0:Lcom/android/server/PowerGuruService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/server/PowerGuruService$1;->this$0:Lcom/android/server/PowerGuruService;

    # invokes: Lcom/android/server/PowerGuruService;->handleBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/PowerGuruService;->access$1400(Lcom/android/server/PowerGuruService;Landroid/content/Context;Landroid/content/Intent;)V

    .line 1049
    return-void
.end method
