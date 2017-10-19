.class Lcom/android/exsettings/wifi/WifiSettingsGuide$7;
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
    .line 1056
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$7;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$7;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    # invokes: Lcom/android/exsettings/wifi/WifiSettingsGuide;->disableWifiAssistantCardUntilPlatformUpgrade()V
    invoke-static {v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->access$600(Lcom/android/exsettings/wifi/WifiSettingsGuide;)V

    .line 1060
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$7;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$7;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    # getter for: Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiAssistantCard:Landroid/view/View;
    invoke-static {v1}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->access$700(Lcom/android/exsettings/wifi/WifiSettingsGuide;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 1061
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$7;->this$0:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    const/4 v1, 0x0

    # setter for: Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    invoke-static {v0, v1}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->access$502(Lcom/android/exsettings/wifi/WifiSettingsGuide;Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    .line 1062
    return-void
.end method
