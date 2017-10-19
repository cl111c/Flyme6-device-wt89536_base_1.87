.class Lcom/android/exsettings/MultisimAndDataSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "MultisimAndDataSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/MultisimAndDataSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/MultisimAndDataSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/MultisimAndDataSettings;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/exsettings/MultisimAndDataSettings$1;->this$0:Lcom/android/exsettings/MultisimAndDataSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/android/exsettings/MultisimAndDataSettings$1;->this$0:Lcom/android/exsettings/MultisimAndDataSettings;

    # invokes: Lcom/android/exsettings/MultisimAndDataSettings;->onAirplaneModeChanged()V
    invoke-static {v1}, Lcom/android/exsettings/MultisimAndDataSettings;->access$000(Lcom/android/exsettings/MultisimAndDataSettings;)V

    .line 60
    :cond_0
    return-void
.end method
