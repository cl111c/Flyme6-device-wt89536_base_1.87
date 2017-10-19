.class Lcom/android/exsettings/TetherSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/TetherSettings;->registerConfigureReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/TetherSettings;)V
    .locals 0

    .prologue
    .line 814
    iput-object p1, p0, Lcom/android/exsettings/TetherSettings$2;->this$0:Lcom/android/exsettings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 817
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, "action":Ljava/lang/String;
    const-string v2, "Hotspot_PreConfigure_Response"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 819
    const-string v2, "PreConfigure_result"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 820
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 821
    iget-object v2, p0, Lcom/android/exsettings/TetherSettings$2;->this$0:Lcom/android/exsettings/TetherSettings;

    # invokes: Lcom/android/exsettings/TetherSettings;->startTethering()V
    invoke-static {v2}, Lcom/android/exsettings/TetherSettings;->access$700(Lcom/android/exsettings/TetherSettings;)V

    .line 826
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    return-void

    .line 823
    .restart local v1    # "result":Z
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/TetherSettings$2;->this$0:Lcom/android/exsettings/TetherSettings;

    # getter for: Lcom/android/exsettings/TetherSettings;->mWifiApEnabler:Lcom/android/exsettings/wifi/WifiApEnabler;
    invoke-static {v2}, Lcom/android/exsettings/TetherSettings;->access$800(Lcom/android/exsettings/TetherSettings;)Lcom/android/exsettings/wifi/WifiApEnabler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/exsettings/wifi/WifiApEnabler;->setChecked(Z)V

    goto :goto_0
.end method
