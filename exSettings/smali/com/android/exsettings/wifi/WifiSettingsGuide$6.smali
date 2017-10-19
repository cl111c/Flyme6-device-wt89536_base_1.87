.class Lcom/android/exsettings/wifi/WifiSettingsGuide$6;
.super Ljava/lang/Object;
.source "WifiSettingsGuide.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/WifiSettingsGuide;->prepareWifiAssistantCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/WifiSettingsGuide;)V
    .locals 0

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$6;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1039
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1040
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$6;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    # getter for: Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    invoke-static {v1}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->access$500(Lcom/android/exsettings/wifi/WifiSettingsGuide;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v1

    iget-object v1, v1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1044
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$6;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    # getter for: Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    invoke-static {v1}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->access$500(Lcom/android/exsettings/wifi/WifiSettingsGuide;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v1

    iget-object v1, v1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$6;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    # getter for: Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    invoke-static {v2}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->access$500(Lcom/android/exsettings/wifi/WifiSettingsGuide;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v2

    iget-object v2, v2, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1052
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$6;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1053
    return-void

    .line 1048
    :cond_0
    const-string v1, "android.net.scoring.CHANGE_ACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1049
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$6;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    # getter for: Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    invoke-static {v2}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->access$500(Lcom/android/exsettings/wifi/WifiSettingsGuide;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v2

    iget-object v2, v2, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
